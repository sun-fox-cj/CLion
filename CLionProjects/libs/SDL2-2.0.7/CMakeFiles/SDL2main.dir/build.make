# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/cjfire/Desktop/CLionProjects

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/cjfire/Desktop/CLionProjects

# Include any dependencies generated for this target.
include libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/depend.make

# Include the progress variables for this target.
include libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/progress.make

# Include the compile flags for this target's objects.
include libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/flags.make

libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o: libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/flags.make
libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o: libs/SDL2-2.0.7/src/main/dummy/SDL_dummy_main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/cjfire/Desktop/CLionProjects/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o"
	cd /Users/cjfire/Desktop/CLionProjects/libs/SDL2-2.0.7 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o   -c /Users/cjfire/Desktop/CLionProjects/libs/SDL2-2.0.7/src/main/dummy/SDL_dummy_main.c

libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.i"
	cd /Users/cjfire/Desktop/CLionProjects/libs/SDL2-2.0.7 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/cjfire/Desktop/CLionProjects/libs/SDL2-2.0.7/src/main/dummy/SDL_dummy_main.c > CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.i

libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.s"
	cd /Users/cjfire/Desktop/CLionProjects/libs/SDL2-2.0.7 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/cjfire/Desktop/CLionProjects/libs/SDL2-2.0.7/src/main/dummy/SDL_dummy_main.c -o CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.s

libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o.requires:

.PHONY : libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o.requires

libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o.provides: libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o.requires
	$(MAKE) -f libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/build.make libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o.provides.build
.PHONY : libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o.provides

libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o.provides.build: libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o


# Object files for target SDL2main
SDL2main_OBJECTS = \
"CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o"

# External object files for target SDL2main
SDL2main_EXTERNAL_OBJECTS =

libs/SDL2-2.0.7/libSDL2main.a: libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o
libs/SDL2-2.0.7/libSDL2main.a: libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/build.make
libs/SDL2-2.0.7/libSDL2main.a: libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/cjfire/Desktop/CLionProjects/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libSDL2main.a"
	cd /Users/cjfire/Desktop/CLionProjects/libs/SDL2-2.0.7 && $(CMAKE_COMMAND) -P CMakeFiles/SDL2main.dir/cmake_clean_target.cmake
	cd /Users/cjfire/Desktop/CLionProjects/libs/SDL2-2.0.7 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SDL2main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/build: libs/SDL2-2.0.7/libSDL2main.a

.PHONY : libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/build

libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/requires: libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o.requires

.PHONY : libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/requires

libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/clean:
	cd /Users/cjfire/Desktop/CLionProjects/libs/SDL2-2.0.7 && $(CMAKE_COMMAND) -P CMakeFiles/SDL2main.dir/cmake_clean.cmake
.PHONY : libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/clean

libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/depend:
	cd /Users/cjfire/Desktop/CLionProjects && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/cjfire/Desktop/CLionProjects /Users/cjfire/Desktop/CLionProjects/libs/SDL2-2.0.7 /Users/cjfire/Desktop/CLionProjects /Users/cjfire/Desktop/CLionProjects/libs/SDL2-2.0.7 /Users/cjfire/Desktop/CLionProjects/libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libs/SDL2-2.0.7/CMakeFiles/SDL2main.dir/depend
