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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tom/Downloads/CLionProjects

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tom/Downloads/CLionProjects/cmake-build-debug

# Include any dependencies generated for this target.
include libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/depend.make

# Include the progress variables for this target.
include libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/progress.make

# Include the compile flags for this target's objects.
include libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/flags.make

libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/clipboard.c.o: libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/flags.make
libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/clipboard.c.o: ../libs/glfw-3.2.1/tests/clipboard.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tom/Downloads/CLionProjects/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/clipboard.c.o"
	cd /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/clipboard.dir/clipboard.c.o   -c /Users/tom/Downloads/CLionProjects/libs/glfw-3.2.1/tests/clipboard.c

libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/clipboard.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/clipboard.dir/clipboard.c.i"
	cd /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/tom/Downloads/CLionProjects/libs/glfw-3.2.1/tests/clipboard.c > CMakeFiles/clipboard.dir/clipboard.c.i

libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/clipboard.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/clipboard.dir/clipboard.c.s"
	cd /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/tom/Downloads/CLionProjects/libs/glfw-3.2.1/tests/clipboard.c -o CMakeFiles/clipboard.dir/clipboard.c.s

libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/clipboard.c.o.requires:

.PHONY : libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/clipboard.c.o.requires

libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/clipboard.c.o.provides: libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/clipboard.c.o.requires
	$(MAKE) -f libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/build.make libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/clipboard.c.o.provides.build
.PHONY : libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/clipboard.c.o.provides

libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/clipboard.c.o.provides.build: libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/clipboard.c.o


libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o: libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/flags.make
libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o: ../libs/glfw-3.2.1/deps/getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tom/Downloads/CLionProjects/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o"
	cd /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/clipboard.dir/__/deps/getopt.c.o   -c /Users/tom/Downloads/CLionProjects/libs/glfw-3.2.1/deps/getopt.c

libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/clipboard.dir/__/deps/getopt.c.i"
	cd /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/tom/Downloads/CLionProjects/libs/glfw-3.2.1/deps/getopt.c > CMakeFiles/clipboard.dir/__/deps/getopt.c.i

libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/clipboard.dir/__/deps/getopt.c.s"
	cd /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/tom/Downloads/CLionProjects/libs/glfw-3.2.1/deps/getopt.c -o CMakeFiles/clipboard.dir/__/deps/getopt.c.s

libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o.requires:

.PHONY : libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o.requires

libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o.provides: libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o.requires
	$(MAKE) -f libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/build.make libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o.provides.build
.PHONY : libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o.provides

libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o.provides.build: libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o


libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o: libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/flags.make
libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o: ../libs/glfw-3.2.1/deps/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tom/Downloads/CLionProjects/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o"
	cd /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/clipboard.dir/__/deps/glad.c.o   -c /Users/tom/Downloads/CLionProjects/libs/glfw-3.2.1/deps/glad.c

libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/clipboard.dir/__/deps/glad.c.i"
	cd /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/tom/Downloads/CLionProjects/libs/glfw-3.2.1/deps/glad.c > CMakeFiles/clipboard.dir/__/deps/glad.c.i

libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/clipboard.dir/__/deps/glad.c.s"
	cd /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/tom/Downloads/CLionProjects/libs/glfw-3.2.1/deps/glad.c -o CMakeFiles/clipboard.dir/__/deps/glad.c.s

libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o.requires:

.PHONY : libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o.requires

libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o.provides: libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o.requires
	$(MAKE) -f libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/build.make libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o.provides.build
.PHONY : libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o.provides

libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o.provides.build: libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o


# Object files for target clipboard
clipboard_OBJECTS = \
"CMakeFiles/clipboard.dir/clipboard.c.o" \
"CMakeFiles/clipboard.dir/__/deps/getopt.c.o" \
"CMakeFiles/clipboard.dir/__/deps/glad.c.o"

# External object files for target clipboard
clipboard_EXTERNAL_OBJECTS =

libs/glfw-3.2.1/tests/clipboard: libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/clipboard.c.o
libs/glfw-3.2.1/tests/clipboard: libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o
libs/glfw-3.2.1/tests/clipboard: libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o
libs/glfw-3.2.1/tests/clipboard: libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/build.make
libs/glfw-3.2.1/tests/clipboard: libs/glfw-3.2.1/src/libglfw3.a
libs/glfw-3.2.1/tests/clipboard: libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/tom/Downloads/CLionProjects/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable clipboard"
	cd /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/clipboard.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/build: libs/glfw-3.2.1/tests/clipboard

.PHONY : libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/build

libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/requires: libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/clipboard.c.o.requires
libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/requires: libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o.requires
libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/requires: libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o.requires

.PHONY : libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/requires

libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/clean:
	cd /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/tests && $(CMAKE_COMMAND) -P CMakeFiles/clipboard.dir/cmake_clean.cmake
.PHONY : libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/clean

libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/depend:
	cd /Users/tom/Downloads/CLionProjects/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tom/Downloads/CLionProjects /Users/tom/Downloads/CLionProjects/libs/glfw-3.2.1/tests /Users/tom/Downloads/CLionProjects/cmake-build-debug /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/tests /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libs/glfw-3.2.1/tests/CMakeFiles/clipboard.dir/depend

