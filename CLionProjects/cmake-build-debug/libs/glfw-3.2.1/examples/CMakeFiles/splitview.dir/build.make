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
include libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/depend.make

# Include the progress variables for this target.
include libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/progress.make

# Include the compile flags for this target's objects.
include libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/flags.make

libs/glfw-3.2.1/examples/splitview.app/Contents/Resources/glfw.icns: ../libs/glfw-3.2.1/examples/glfw.icns
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content libs/glfw-3.2.1/examples/splitview.app/Contents/Resources/glfw.icns"
	$(CMAKE_COMMAND) -E copy /Users/tom/Downloads/CLionProjects/libs/glfw-3.2.1/examples/glfw.icns libs/glfw-3.2.1/examples/splitview.app/Contents/Resources/glfw.icns

libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/splitview.c.o: libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/flags.make
libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/splitview.c.o: ../libs/glfw-3.2.1/examples/splitview.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tom/Downloads/CLionProjects/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/splitview.c.o"
	cd /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/splitview.dir/splitview.c.o   -c /Users/tom/Downloads/CLionProjects/libs/glfw-3.2.1/examples/splitview.c

libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/splitview.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/splitview.dir/splitview.c.i"
	cd /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/tom/Downloads/CLionProjects/libs/glfw-3.2.1/examples/splitview.c > CMakeFiles/splitview.dir/splitview.c.i

libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/splitview.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/splitview.dir/splitview.c.s"
	cd /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/tom/Downloads/CLionProjects/libs/glfw-3.2.1/examples/splitview.c -o CMakeFiles/splitview.dir/splitview.c.s

libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/splitview.c.o.requires:

.PHONY : libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/splitview.c.o.requires

libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/splitview.c.o.provides: libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/splitview.c.o.requires
	$(MAKE) -f libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/build.make libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/splitview.c.o.provides.build
.PHONY : libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/splitview.c.o.provides

libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/splitview.c.o.provides.build: libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/splitview.c.o


libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/__/deps/glad.c.o: libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/flags.make
libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/__/deps/glad.c.o: ../libs/glfw-3.2.1/deps/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tom/Downloads/CLionProjects/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/__/deps/glad.c.o"
	cd /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/splitview.dir/__/deps/glad.c.o   -c /Users/tom/Downloads/CLionProjects/libs/glfw-3.2.1/deps/glad.c

libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/splitview.dir/__/deps/glad.c.i"
	cd /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/tom/Downloads/CLionProjects/libs/glfw-3.2.1/deps/glad.c > CMakeFiles/splitview.dir/__/deps/glad.c.i

libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/splitview.dir/__/deps/glad.c.s"
	cd /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/tom/Downloads/CLionProjects/libs/glfw-3.2.1/deps/glad.c -o CMakeFiles/splitview.dir/__/deps/glad.c.s

libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/__/deps/glad.c.o.requires:

.PHONY : libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/__/deps/glad.c.o.requires

libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/__/deps/glad.c.o.provides: libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/__/deps/glad.c.o.requires
	$(MAKE) -f libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/build.make libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/__/deps/glad.c.o.provides.build
.PHONY : libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/__/deps/glad.c.o.provides

libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/__/deps/glad.c.o.provides.build: libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/__/deps/glad.c.o


# Object files for target splitview
splitview_OBJECTS = \
"CMakeFiles/splitview.dir/splitview.c.o" \
"CMakeFiles/splitview.dir/__/deps/glad.c.o"

# External object files for target splitview
splitview_EXTERNAL_OBJECTS =

libs/glfw-3.2.1/examples/splitview.app/Contents/MacOS/splitview: libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/splitview.c.o
libs/glfw-3.2.1/examples/splitview.app/Contents/MacOS/splitview: libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/__/deps/glad.c.o
libs/glfw-3.2.1/examples/splitview.app/Contents/MacOS/splitview: libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/build.make
libs/glfw-3.2.1/examples/splitview.app/Contents/MacOS/splitview: libs/glfw-3.2.1/src/libglfw3.a
libs/glfw-3.2.1/examples/splitview.app/Contents/MacOS/splitview: libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/tom/Downloads/CLionProjects/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable splitview.app/Contents/MacOS/splitview"
	cd /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/splitview.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/build: libs/glfw-3.2.1/examples/splitview.app/Contents/MacOS/splitview
libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/build: libs/glfw-3.2.1/examples/splitview.app/Contents/Resources/glfw.icns

.PHONY : libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/build

libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/requires: libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/splitview.c.o.requires
libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/requires: libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/__/deps/glad.c.o.requires

.PHONY : libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/requires

libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/clean:
	cd /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/examples && $(CMAKE_COMMAND) -P CMakeFiles/splitview.dir/cmake_clean.cmake
.PHONY : libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/clean

libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/depend:
	cd /Users/tom/Downloads/CLionProjects/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tom/Downloads/CLionProjects /Users/tom/Downloads/CLionProjects/libs/glfw-3.2.1/examples /Users/tom/Downloads/CLionProjects/cmake-build-debug /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/examples /Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libs/glfw-3.2.1/examples/CMakeFiles/splitview.dir/depend

