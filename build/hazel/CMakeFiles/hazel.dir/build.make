# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/gdtr/AI/CPP/game_engine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gdtr/AI/CPP/game_engine/build

# Include any dependencies generated for this target.
include hazel/CMakeFiles/hazel.dir/depend.make

# Include the progress variables for this target.
include hazel/CMakeFiles/hazel.dir/progress.make

# Include the compile flags for this target's objects.
include hazel/CMakeFiles/hazel.dir/flags.make

hazel/CMakeFiles/hazel.dir/src/hazel/application.cpp.o: hazel/CMakeFiles/hazel.dir/flags.make
hazel/CMakeFiles/hazel.dir/src/hazel/application.cpp.o: ../hazel/src/hazel/application.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gdtr/AI/CPP/game_engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object hazel/CMakeFiles/hazel.dir/src/hazel/application.cpp.o"
	cd /home/gdtr/AI/CPP/game_engine/build/hazel && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hazel.dir/src/hazel/application.cpp.o -c /home/gdtr/AI/CPP/game_engine/hazel/src/hazel/application.cpp

hazel/CMakeFiles/hazel.dir/src/hazel/application.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hazel.dir/src/hazel/application.cpp.i"
	cd /home/gdtr/AI/CPP/game_engine/build/hazel && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gdtr/AI/CPP/game_engine/hazel/src/hazel/application.cpp > CMakeFiles/hazel.dir/src/hazel/application.cpp.i

hazel/CMakeFiles/hazel.dir/src/hazel/application.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hazel.dir/src/hazel/application.cpp.s"
	cd /home/gdtr/AI/CPP/game_engine/build/hazel && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gdtr/AI/CPP/game_engine/hazel/src/hazel/application.cpp -o CMakeFiles/hazel.dir/src/hazel/application.cpp.s

hazel/CMakeFiles/hazel.dir/src/hazel/log.cpp.o: hazel/CMakeFiles/hazel.dir/flags.make
hazel/CMakeFiles/hazel.dir/src/hazel/log.cpp.o: ../hazel/src/hazel/log.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gdtr/AI/CPP/game_engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object hazel/CMakeFiles/hazel.dir/src/hazel/log.cpp.o"
	cd /home/gdtr/AI/CPP/game_engine/build/hazel && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hazel.dir/src/hazel/log.cpp.o -c /home/gdtr/AI/CPP/game_engine/hazel/src/hazel/log.cpp

hazel/CMakeFiles/hazel.dir/src/hazel/log.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hazel.dir/src/hazel/log.cpp.i"
	cd /home/gdtr/AI/CPP/game_engine/build/hazel && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gdtr/AI/CPP/game_engine/hazel/src/hazel/log.cpp > CMakeFiles/hazel.dir/src/hazel/log.cpp.i

hazel/CMakeFiles/hazel.dir/src/hazel/log.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hazel.dir/src/hazel/log.cpp.s"
	cd /home/gdtr/AI/CPP/game_engine/build/hazel && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gdtr/AI/CPP/game_engine/hazel/src/hazel/log.cpp -o CMakeFiles/hazel.dir/src/hazel/log.cpp.s

# Object files for target hazel
hazel_OBJECTS = \
"CMakeFiles/hazel.dir/src/hazel/application.cpp.o" \
"CMakeFiles/hazel.dir/src/hazel/log.cpp.o"

# External object files for target hazel
hazel_EXTERNAL_OBJECTS =

hazel/libhazel.so: hazel/CMakeFiles/hazel.dir/src/hazel/application.cpp.o
hazel/libhazel.so: hazel/CMakeFiles/hazel.dir/src/hazel/log.cpp.o
hazel/libhazel.so: hazel/CMakeFiles/hazel.dir/build.make
hazel/libhazel.so: hazel/CMakeFiles/hazel.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gdtr/AI/CPP/game_engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libhazel.so"
	cd /home/gdtr/AI/CPP/game_engine/build/hazel && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hazel.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
hazel/CMakeFiles/hazel.dir/build: hazel/libhazel.so

.PHONY : hazel/CMakeFiles/hazel.dir/build

hazel/CMakeFiles/hazel.dir/clean:
	cd /home/gdtr/AI/CPP/game_engine/build/hazel && $(CMAKE_COMMAND) -P CMakeFiles/hazel.dir/cmake_clean.cmake
.PHONY : hazel/CMakeFiles/hazel.dir/clean

hazel/CMakeFiles/hazel.dir/depend:
	cd /home/gdtr/AI/CPP/game_engine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gdtr/AI/CPP/game_engine /home/gdtr/AI/CPP/game_engine/hazel /home/gdtr/AI/CPP/game_engine/build /home/gdtr/AI/CPP/game_engine/build/hazel /home/gdtr/AI/CPP/game_engine/build/hazel/CMakeFiles/hazel.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : hazel/CMakeFiles/hazel.dir/depend

