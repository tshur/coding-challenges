# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_SOURCE_DIR = /Users/timshur/CLionProjects/PascalTriangle

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/timshur/CLionProjects/PascalTriangle/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/PascalTriangle.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/PascalTriangle.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PascalTriangle.dir/flags.make

CMakeFiles/PascalTriangle.dir/main.cpp.o: CMakeFiles/PascalTriangle.dir/flags.make
CMakeFiles/PascalTriangle.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/timshur/CLionProjects/PascalTriangle/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PascalTriangle.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PascalTriangle.dir/main.cpp.o -c /Users/timshur/CLionProjects/PascalTriangle/main.cpp

CMakeFiles/PascalTriangle.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PascalTriangle.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/timshur/CLionProjects/PascalTriangle/main.cpp > CMakeFiles/PascalTriangle.dir/main.cpp.i

CMakeFiles/PascalTriangle.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PascalTriangle.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/timshur/CLionProjects/PascalTriangle/main.cpp -o CMakeFiles/PascalTriangle.dir/main.cpp.s

CMakeFiles/PascalTriangle.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/PascalTriangle.dir/main.cpp.o.requires

CMakeFiles/PascalTriangle.dir/main.cpp.o.provides: CMakeFiles/PascalTriangle.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/PascalTriangle.dir/build.make CMakeFiles/PascalTriangle.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/PascalTriangle.dir/main.cpp.o.provides

CMakeFiles/PascalTriangle.dir/main.cpp.o.provides.build: CMakeFiles/PascalTriangle.dir/main.cpp.o


# Object files for target PascalTriangle
PascalTriangle_OBJECTS = \
"CMakeFiles/PascalTriangle.dir/main.cpp.o"

# External object files for target PascalTriangle
PascalTriangle_EXTERNAL_OBJECTS =

PascalTriangle: CMakeFiles/PascalTriangle.dir/main.cpp.o
PascalTriangle: CMakeFiles/PascalTriangle.dir/build.make
PascalTriangle: CMakeFiles/PascalTriangle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/timshur/CLionProjects/PascalTriangle/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable PascalTriangle"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PascalTriangle.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PascalTriangle.dir/build: PascalTriangle

.PHONY : CMakeFiles/PascalTriangle.dir/build

CMakeFiles/PascalTriangle.dir/requires: CMakeFiles/PascalTriangle.dir/main.cpp.o.requires

.PHONY : CMakeFiles/PascalTriangle.dir/requires

CMakeFiles/PascalTriangle.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PascalTriangle.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PascalTriangle.dir/clean

CMakeFiles/PascalTriangle.dir/depend:
	cd /Users/timshur/CLionProjects/PascalTriangle/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/timshur/CLionProjects/PascalTriangle /Users/timshur/CLionProjects/PascalTriangle /Users/timshur/CLionProjects/PascalTriangle/cmake-build-debug /Users/timshur/CLionProjects/PascalTriangle/cmake-build-debug /Users/timshur/CLionProjects/PascalTriangle/cmake-build-debug/CMakeFiles/PascalTriangle.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PascalTriangle.dir/depend

