# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zulus/Projects/GitProj/orchestrix/src/audio

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zulus/Projects/GitProj/orchestrix/src/audio

# Include any dependencies generated for this target.
include CMakeFiles/aut.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/aut.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/aut.dir/flags.make

CMakeFiles/aut.dir/src/AudioManagement/AudioData.cpp.o: CMakeFiles/aut.dir/flags.make
CMakeFiles/aut.dir/src/AudioManagement/AudioData.cpp.o: src/AudioManagement/AudioData.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zulus/Projects/GitProj/orchestrix/src/audio/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/aut.dir/src/AudioManagement/AudioData.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/aut.dir/src/AudioManagement/AudioData.cpp.o -c /home/zulus/Projects/GitProj/orchestrix/src/audio/src/AudioManagement/AudioData.cpp

CMakeFiles/aut.dir/src/AudioManagement/AudioData.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aut.dir/src/AudioManagement/AudioData.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zulus/Projects/GitProj/orchestrix/src/audio/src/AudioManagement/AudioData.cpp > CMakeFiles/aut.dir/src/AudioManagement/AudioData.cpp.i

CMakeFiles/aut.dir/src/AudioManagement/AudioData.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aut.dir/src/AudioManagement/AudioData.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zulus/Projects/GitProj/orchestrix/src/audio/src/AudioManagement/AudioData.cpp -o CMakeFiles/aut.dir/src/AudioManagement/AudioData.cpp.s

CMakeFiles/aut.dir/src/AudioManagement/AudioData.cpp.o.requires:

.PHONY : CMakeFiles/aut.dir/src/AudioManagement/AudioData.cpp.o.requires

CMakeFiles/aut.dir/src/AudioManagement/AudioData.cpp.o.provides: CMakeFiles/aut.dir/src/AudioManagement/AudioData.cpp.o.requires
	$(MAKE) -f CMakeFiles/aut.dir/build.make CMakeFiles/aut.dir/src/AudioManagement/AudioData.cpp.o.provides.build
.PHONY : CMakeFiles/aut.dir/src/AudioManagement/AudioData.cpp.o.provides

CMakeFiles/aut.dir/src/AudioManagement/AudioData.cpp.o.provides.build: CMakeFiles/aut.dir/src/AudioManagement/AudioData.cpp.o


CMakeFiles/aut.dir/src/AudioManagement/AudioManager.cpp.o: CMakeFiles/aut.dir/flags.make
CMakeFiles/aut.dir/src/AudioManagement/AudioManager.cpp.o: src/AudioManagement/AudioManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zulus/Projects/GitProj/orchestrix/src/audio/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/aut.dir/src/AudioManagement/AudioManager.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/aut.dir/src/AudioManagement/AudioManager.cpp.o -c /home/zulus/Projects/GitProj/orchestrix/src/audio/src/AudioManagement/AudioManager.cpp

CMakeFiles/aut.dir/src/AudioManagement/AudioManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aut.dir/src/AudioManagement/AudioManager.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zulus/Projects/GitProj/orchestrix/src/audio/src/AudioManagement/AudioManager.cpp > CMakeFiles/aut.dir/src/AudioManagement/AudioManager.cpp.i

CMakeFiles/aut.dir/src/AudioManagement/AudioManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aut.dir/src/AudioManagement/AudioManager.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zulus/Projects/GitProj/orchestrix/src/audio/src/AudioManagement/AudioManager.cpp -o CMakeFiles/aut.dir/src/AudioManagement/AudioManager.cpp.s

CMakeFiles/aut.dir/src/AudioManagement/AudioManager.cpp.o.requires:

.PHONY : CMakeFiles/aut.dir/src/AudioManagement/AudioManager.cpp.o.requires

CMakeFiles/aut.dir/src/AudioManagement/AudioManager.cpp.o.provides: CMakeFiles/aut.dir/src/AudioManagement/AudioManager.cpp.o.requires
	$(MAKE) -f CMakeFiles/aut.dir/build.make CMakeFiles/aut.dir/src/AudioManagement/AudioManager.cpp.o.provides.build
.PHONY : CMakeFiles/aut.dir/src/AudioManagement/AudioManager.cpp.o.provides

CMakeFiles/aut.dir/src/AudioManagement/AudioManager.cpp.o.provides.build: CMakeFiles/aut.dir/src/AudioManagement/AudioManager.cpp.o


CMakeFiles/aut.dir/src/AudioManagement/AudioPlayer.cpp.o: CMakeFiles/aut.dir/flags.make
CMakeFiles/aut.dir/src/AudioManagement/AudioPlayer.cpp.o: src/AudioManagement/AudioPlayer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zulus/Projects/GitProj/orchestrix/src/audio/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/aut.dir/src/AudioManagement/AudioPlayer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/aut.dir/src/AudioManagement/AudioPlayer.cpp.o -c /home/zulus/Projects/GitProj/orchestrix/src/audio/src/AudioManagement/AudioPlayer.cpp

CMakeFiles/aut.dir/src/AudioManagement/AudioPlayer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aut.dir/src/AudioManagement/AudioPlayer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zulus/Projects/GitProj/orchestrix/src/audio/src/AudioManagement/AudioPlayer.cpp > CMakeFiles/aut.dir/src/AudioManagement/AudioPlayer.cpp.i

CMakeFiles/aut.dir/src/AudioManagement/AudioPlayer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aut.dir/src/AudioManagement/AudioPlayer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zulus/Projects/GitProj/orchestrix/src/audio/src/AudioManagement/AudioPlayer.cpp -o CMakeFiles/aut.dir/src/AudioManagement/AudioPlayer.cpp.s

CMakeFiles/aut.dir/src/AudioManagement/AudioPlayer.cpp.o.requires:

.PHONY : CMakeFiles/aut.dir/src/AudioManagement/AudioPlayer.cpp.o.requires

CMakeFiles/aut.dir/src/AudioManagement/AudioPlayer.cpp.o.provides: CMakeFiles/aut.dir/src/AudioManagement/AudioPlayer.cpp.o.requires
	$(MAKE) -f CMakeFiles/aut.dir/build.make CMakeFiles/aut.dir/src/AudioManagement/AudioPlayer.cpp.o.provides.build
.PHONY : CMakeFiles/aut.dir/src/AudioManagement/AudioPlayer.cpp.o.provides

CMakeFiles/aut.dir/src/AudioManagement/AudioPlayer.cpp.o.provides.build: CMakeFiles/aut.dir/src/AudioManagement/AudioPlayer.cpp.o


CMakeFiles/aut.dir/src/SpectrumManagement/Spectrum.cpp.o: CMakeFiles/aut.dir/flags.make
CMakeFiles/aut.dir/src/SpectrumManagement/Spectrum.cpp.o: src/SpectrumManagement/Spectrum.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zulus/Projects/GitProj/orchestrix/src/audio/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/aut.dir/src/SpectrumManagement/Spectrum.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/aut.dir/src/SpectrumManagement/Spectrum.cpp.o -c /home/zulus/Projects/GitProj/orchestrix/src/audio/src/SpectrumManagement/Spectrum.cpp

CMakeFiles/aut.dir/src/SpectrumManagement/Spectrum.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aut.dir/src/SpectrumManagement/Spectrum.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zulus/Projects/GitProj/orchestrix/src/audio/src/SpectrumManagement/Spectrum.cpp > CMakeFiles/aut.dir/src/SpectrumManagement/Spectrum.cpp.i

CMakeFiles/aut.dir/src/SpectrumManagement/Spectrum.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aut.dir/src/SpectrumManagement/Spectrum.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zulus/Projects/GitProj/orchestrix/src/audio/src/SpectrumManagement/Spectrum.cpp -o CMakeFiles/aut.dir/src/SpectrumManagement/Spectrum.cpp.s

CMakeFiles/aut.dir/src/SpectrumManagement/Spectrum.cpp.o.requires:

.PHONY : CMakeFiles/aut.dir/src/SpectrumManagement/Spectrum.cpp.o.requires

CMakeFiles/aut.dir/src/SpectrumManagement/Spectrum.cpp.o.provides: CMakeFiles/aut.dir/src/SpectrumManagement/Spectrum.cpp.o.requires
	$(MAKE) -f CMakeFiles/aut.dir/build.make CMakeFiles/aut.dir/src/SpectrumManagement/Spectrum.cpp.o.provides.build
.PHONY : CMakeFiles/aut.dir/src/SpectrumManagement/Spectrum.cpp.o.provides

CMakeFiles/aut.dir/src/SpectrumManagement/Spectrum.cpp.o.provides.build: CMakeFiles/aut.dir/src/SpectrumManagement/Spectrum.cpp.o


CMakeFiles/aut.dir/src/SpectrumManagement/SpectrumAnalyzer.cpp.o: CMakeFiles/aut.dir/flags.make
CMakeFiles/aut.dir/src/SpectrumManagement/SpectrumAnalyzer.cpp.o: src/SpectrumManagement/SpectrumAnalyzer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zulus/Projects/GitProj/orchestrix/src/audio/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/aut.dir/src/SpectrumManagement/SpectrumAnalyzer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/aut.dir/src/SpectrumManagement/SpectrumAnalyzer.cpp.o -c /home/zulus/Projects/GitProj/orchestrix/src/audio/src/SpectrumManagement/SpectrumAnalyzer.cpp

CMakeFiles/aut.dir/src/SpectrumManagement/SpectrumAnalyzer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aut.dir/src/SpectrumManagement/SpectrumAnalyzer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zulus/Projects/GitProj/orchestrix/src/audio/src/SpectrumManagement/SpectrumAnalyzer.cpp > CMakeFiles/aut.dir/src/SpectrumManagement/SpectrumAnalyzer.cpp.i

CMakeFiles/aut.dir/src/SpectrumManagement/SpectrumAnalyzer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aut.dir/src/SpectrumManagement/SpectrumAnalyzer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zulus/Projects/GitProj/orchestrix/src/audio/src/SpectrumManagement/SpectrumAnalyzer.cpp -o CMakeFiles/aut.dir/src/SpectrumManagement/SpectrumAnalyzer.cpp.s

CMakeFiles/aut.dir/src/SpectrumManagement/SpectrumAnalyzer.cpp.o.requires:

.PHONY : CMakeFiles/aut.dir/src/SpectrumManagement/SpectrumAnalyzer.cpp.o.requires

CMakeFiles/aut.dir/src/SpectrumManagement/SpectrumAnalyzer.cpp.o.provides: CMakeFiles/aut.dir/src/SpectrumManagement/SpectrumAnalyzer.cpp.o.requires
	$(MAKE) -f CMakeFiles/aut.dir/build.make CMakeFiles/aut.dir/src/SpectrumManagement/SpectrumAnalyzer.cpp.o.provides.build
.PHONY : CMakeFiles/aut.dir/src/SpectrumManagement/SpectrumAnalyzer.cpp.o.provides

CMakeFiles/aut.dir/src/SpectrumManagement/SpectrumAnalyzer.cpp.o.provides.build: CMakeFiles/aut.dir/src/SpectrumManagement/SpectrumAnalyzer.cpp.o


# Object files for target aut
aut_OBJECTS = \
"CMakeFiles/aut.dir/src/AudioManagement/AudioData.cpp.o" \
"CMakeFiles/aut.dir/src/AudioManagement/AudioManager.cpp.o" \
"CMakeFiles/aut.dir/src/AudioManagement/AudioPlayer.cpp.o" \
"CMakeFiles/aut.dir/src/SpectrumManagement/Spectrum.cpp.o" \
"CMakeFiles/aut.dir/src/SpectrumManagement/SpectrumAnalyzer.cpp.o"

# External object files for target aut
aut_EXTERNAL_OBJECTS =

libaut.a: CMakeFiles/aut.dir/src/AudioManagement/AudioData.cpp.o
libaut.a: CMakeFiles/aut.dir/src/AudioManagement/AudioManager.cpp.o
libaut.a: CMakeFiles/aut.dir/src/AudioManagement/AudioPlayer.cpp.o
libaut.a: CMakeFiles/aut.dir/src/SpectrumManagement/Spectrum.cpp.o
libaut.a: CMakeFiles/aut.dir/src/SpectrumManagement/SpectrumAnalyzer.cpp.o
libaut.a: CMakeFiles/aut.dir/build.make
libaut.a: CMakeFiles/aut.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zulus/Projects/GitProj/orchestrix/src/audio/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library libaut.a"
	$(CMAKE_COMMAND) -P CMakeFiles/aut.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aut.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/aut.dir/build: libaut.a

.PHONY : CMakeFiles/aut.dir/build

CMakeFiles/aut.dir/requires: CMakeFiles/aut.dir/src/AudioManagement/AudioData.cpp.o.requires
CMakeFiles/aut.dir/requires: CMakeFiles/aut.dir/src/AudioManagement/AudioManager.cpp.o.requires
CMakeFiles/aut.dir/requires: CMakeFiles/aut.dir/src/AudioManagement/AudioPlayer.cpp.o.requires
CMakeFiles/aut.dir/requires: CMakeFiles/aut.dir/src/SpectrumManagement/Spectrum.cpp.o.requires
CMakeFiles/aut.dir/requires: CMakeFiles/aut.dir/src/SpectrumManagement/SpectrumAnalyzer.cpp.o.requires

.PHONY : CMakeFiles/aut.dir/requires

CMakeFiles/aut.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/aut.dir/cmake_clean.cmake
.PHONY : CMakeFiles/aut.dir/clean

CMakeFiles/aut.dir/depend:
	cd /home/zulus/Projects/GitProj/orchestrix/src/audio && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zulus/Projects/GitProj/orchestrix/src/audio /home/zulus/Projects/GitProj/orchestrix/src/audio /home/zulus/Projects/GitProj/orchestrix/src/audio /home/zulus/Projects/GitProj/orchestrix/src/audio /home/zulus/Projects/GitProj/orchestrix/src/audio/CMakeFiles/aut.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/aut.dir/depend

