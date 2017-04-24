//
// Created by zulus on 23.04.17.
//
#include <AudioManagement/AudioPlayer.h>
#include <AudioManagement/OpenAL.h>
#include <thread>

/**
 * convert not Al-format data to ALenum
 * @param channels count of channels
 * @param bitsPerSample bitser sample (eq. 16 or 8)
 * @return ALenum for presentetive foram
 */
ALenum toALformat(int channels, int bitsPerSample) {
    if (channels == 2) {
        if (bitsPerSample == 16) {
            return AL_FORMAT_STEREO16;
        } else if (bitsPerSample == 8) {
            return AL_FORMAT_STEREO8;
        }
    } else if (channels == 1) {
        if (bitsPerSample == 16) {
            return AL_FORMAT_MONO16;
        } else if (bitsPerSample == 8) {
            return AL_FORMAT_MONO8;
        }
    }
    return AL_ILLEGAL_ENUM;
}

/**
 * create new player
 * @param manager reference to AudioManager, which is stored AudioPlayer
 * @param audioData reference to sound data
 * @param volume volume of player
 * @param id id of player
 */
AudioPlayer::AudioPlayer(AudioManager *manager, AudioData *audioData, float volume) {
    //copy references
    this->rawSoundData = audioData->get_source();
    this->info.samples = audioData->get_size();
    this->info.format = toALformat(audioData->get_channels(), audioData->get_bitsPerSample());
    this->info.frequency = audioData->get_sampleRate();
    this->settings.pos.x = 0;
    this->settings.pos.y = 0;
    this->settings.pos.z = 0;
    this->settings.vel.x = 0;
    this->settings.vel.y = 0;
    this->settings.vel.z = 0;
    this->settings.pitch = 1;
    this->settings.gain = volume;
    this->manager = manager;
    this->state = AL_STOPPED;
    this->remainBuffers = 0;
    this->currPos = 0;
    this->source = manager->getFreeSource();
}

/**
 * check is soundn playing
 * @return true,if sound  is playing now
 */
bool AudioPlayer::isPlaying() {
    return state == AL_PLAYING;
}

/**
 * fills buffer by sound's data
 * @param buffer reference to buffer
 * @return is all buffer filled
 */
bool AudioPlayer::fillBuffer(ALuint buffer) {
    if (buffer > 0) {
        if (currPos < info.samples) {
            _readDataMutex.lock();
            ALsizei nextChunk = min(BUFFER_SIZE, info.samples - currPos);
            cout << "chunk " << nextChunk << " pos: " << currPos << " -> " << currPos + nextChunk << endl;
            if (info.format == AL_FORMAT_STEREO16 || info.format == AL_FORMAT_MONO16) {
                AL_CHECK(alBufferData(buffer, info.format, (__int16_t *) rawSoundData + currPos, nextChunk, info.frequency));
            } else {
                AL_CHECK(alBufferData(buffer, info.format, (__int8_t *) rawSoundData + currPos, nextChunk, info.frequency));
            }
            cout << "filled" << endl;
            currPos += nextChunk;
            _readDataMutex.unlock();
            return false;
        }
    }
    return true;
}

void AudioPlayer::update() {
    updateState();
    if (this->state != AL_PLAYING) {
        /*
         * sound is not playing  (PAUSED / STOPPED) do not update
         */
        return;
    }
    int countOfProcessedBuffer = 0;
    AL_CHECK(alGetSourcei(source, AL_BUFFERS_PROCESSED, &countOfProcessedBuffer));
    cout << "_!Processed buffers!_ " << countOfProcessedBuffer << endl;
    /*
     * check to see if we have a buffer to deQ
     */
    for (int i = 0; i < countOfProcessedBuffer; i++) {
        /*
         * remove the buffer from the source
        */
        ALuint processedBuffer;
        AL_CHECK(alSourceUnqueueBuffers(source, 1, &processedBuffer));
        cout << "processed buffer " << processedBuffer << endl;
        /*
         * fill the buffer up and reQ!
         * if we cant fill it up then we are finished
         * in which case we dont need to re-Q
         * return NO if we dont have more buffers to Q
         */
        updateState();
        if (this->state == AL_STOPPED) {
            AL_CHECK(alSourceQueueBuffers(source, 1, &processedBuffer));
            return;
        }
        /*
         * call method to load data to buffer
        */
        manager->clearBuffer(processedBuffer);
        ALuint newBuffer = manager->getFreeBuffer();
        updateBuffer(newBuffer);
        AL_CHECK(alSourceQueueBuffers(source, 1, &newBuffer));
        if (this->remainBuffers <= 0) {
            /**
             * no more buffers, stop playing
             */
            stop();
        }
    }
}

void AudioPlayer::updateBuffer(ALuint buffer) {
    if (fillBuffer(buffer) == false) {
        remainBuffers--;
    }
}

void AudioPlayer::updateState() {
    _updateStateMutex.lock();
    AL_CHECK(alGetSourcei(source, AL_SOURCE_STATE, &state));
    _updateStateMutex.unlock();
}

bool AudioPlayer::preload() {
    _setBuffCntMutex.lock();
    remainBuffers = 0;
    bool isAllSoundLoaded = false;
//    int cntOfReservedBuffers = 0;
    vector<ALuint> loadedBuffers;
    while (loadedBuffers.size() < MAX_BUFFER_PER_PLAYER && !isAllSoundLoaded) {
        ALuint buff = manager->getFreeBuffer();
        isAllSoundLoaded = fillBuffer(buff);
        if (!isAllSoundLoaded) {
            loadedBuffers.push_back(buff);
        }
    };
    remainBuffers = loadedBuffers.size();
    ALuint buff[remainBuffers];
    for (int i = 0; i < remainBuffers; i++) {
        buff[i] = loadedBuffers[i + 1];
    }
    AL_CHECK(alSourceQueueBuffers(source, loadedBuffers.size(), buff));
    _setBuffCntMutex.unlock();
    return remainBuffers;
}

bool AudioPlayer::isPaused() {
    updateState();
    return state == AL_PAUSED;
}

bool AudioPlayer::isStopped() {
    updateState();
    return state == AL_STOPPED;
}

/**
 * free used resources and buffers
 */
void AudioPlayer::freeResources() {
    _setBuffCntMutex.lock();
    updateState();
    if (state == AL_PLAYING) {
        stop();
    }
    int buffersProcessed = 0;
    AL_CHECK(alGetSourcei(source, AL_BUFFERS_PROCESSED, &buffersProcessed));
    ALuint processedBuffer;
    for (int i = 0; i < buffersProcessed; i++) {
        AL_CHECK(alSourceUnqueueBuffers(source, 1, &processedBuffer));
        manager->clearBuffer(processedBuffer);
    }
    manager->clearSource(source);
    rawSoundData = NULL;
    _setBuffCntMutex.unlock();
}

void AudioPlayer::exec() {
    AL_CHECK(alSourcef(source, AL_PITCH, settings.pitch));
    AL_CHECK(alSourcef(source, AL_GAIN, settings.gain));
    AL_CHECK(alSource3f(source, AL_POSITION, settings.pos.x, settings.pos.y, settings.pos.z));
    AL_CHECK(alSource3f(source, AL_VELOCITY, settings.vel.x, settings.vel.y, settings.vel.z));
    if (!preload()) {
        freeResources();
        return;
    }
    AL_CHECK(alSourcePlay(source));
    while (state == AL_PLAYING) {
        update();
//        cout << "update" << endl;
        this_thread::sleep_for(chrono::seconds(1));
    }
}

thread *AudioPlayer::play() {
    if (this->state != AL_PLAYING && this->rawSoundData) {
        this->state = AL_PLAYING;
        return new thread(&AudioPlayer::exec, this);
    } else return NULL;
}

void AudioPlayer::pause() {
    if (isPlaying()) {
        AL_CHECK(alSourcePause(source));
        updateState();
    }
}

void AudioPlayer::stop() {
    if (isPlaying()) {
        AL_CHECK(alSourceStop(source));
        updateState();
    }
}

AudioPlayer::~AudioPlayer() {
    freeResources();
}

string AudioPlayer::toString() {
    string s = "AudioPlayer:\n";
    s += "------------------------------\n";
    s += "Samples: " + to_string(info.samples) + "\n";
    s += "Frequency: " + to_string(info.frequency) + "\n";
    s += "Format: ";
    if (info.format == AL_FORMAT_STEREO16) {
        s += "STEREO_16";
    } else if (info.format == AL_FORMAT_STEREO8) {
        s += "STEREO_8";
    } else if (info.format == AL_FORMAT_MONO16) {
        s += "MONO_16";
    } else if (info.format == AL_FORMAT_MONO8) {
        s += "MONO_8";;
    }
    s += "\n";
    s += "State: ";
    if (state == AL_PLAYING) {
        s += "PLAYING";
    } else if (state == AL_STOPPED) {
        s += "STOPPED";
    } else {
        s += "PAUSED";
    }
    s += "\n";
    s += "RemainingBuffers: " + to_string(remainBuffers) + "\n";
    s += "------------------------------\n";
    return s;
}