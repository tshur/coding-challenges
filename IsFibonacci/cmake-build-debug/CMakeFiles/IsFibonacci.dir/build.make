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
CMAKE_SOURCE_DIR = /Users/timshur/CLionProjects/IsFibonacci

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/timshur/CLionProjects/IsFibonacci/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/IsFibonacci.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/IsFibonacci.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/IsFibonacci.dir/flags.make

CMakeFiles/IsFibonacci.dir/main.cpp.o: CMakeFiles/IsFibonacci.dir/flags.make
CMakeFiles/IsFibonacci.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/timshur/CLionProjects/IsFibonacci/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/IsFibonacci.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/IsFibonacci.dir/main.cpp.o -c /Users/timshur/CLionProjects/IsFibonacci/main.cpp

CMakeFiles/IsFibonacci.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/IsFibonacci.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/timshur/CLionProjects/IsFibonacci/main.cpp > CMakeFiles/IsFibonacci.dir/main.cpp.i

CMakeFiles/IsFibonacci.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/IsFibonacci.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/timshur/CLionProjects/IsFibonacci/main.cpp -o CMakeFiles/IsFibonacci.dir/main.cpp.s

CMakeFiles/IsFibonacci.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/IsFibonacci.dir/main.cpp.o.requires

CMakeFiles/IsFibonacci.dir/main.cpp.o.provides: CMakeFiles/IsFibonacci.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/IsFibonacci.dir/build.make CMakeFiles/IsFibonacci.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/IsFibonacci.dir/main.cpp.o.provides

CMakeFiles/IsFibonacci.dir/main.cpp.o.provides.build: CMakeFiles/IsFibonacci.dir/main.cpp.o


# Object files for target IsFibonacci
IsFibonacci_OBJECTS = \
"CMakeFiles/IsFibonacci.dir/main.cpp.o"

# External object files for target IsFibonacci
IsFibonacci_EXTERNAL_OBJECTS =

IsFibonacci: CMakeFiles/IsFibonacci.dir/main.cpp.o
IsFibonacci: CMakeFiles/IsFibonacci.dir/build.make
IsFibonacci: CMakeFiles/IsFibonacci.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/timshur/CLionProjects/IsFibonacci/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable IsFibonacci"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/IsFibonacci.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/IsFibonacci.dir/build: IsFibonacci

.PHONY : CMakeFiles/IsFibonacci.dir/build

CMakeFiles/IsFibonacci.dir/requires: CMakeFiles/IsFibonacci.dir/main.cpp.o.requires

.PHONY : CMakeFiles/IsFibonacci.dir/requires

CMakeFiles/IsFibonacci.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/IsFibonacci.dir/cmake_clean.cmake
.PHONY : CMakeFiles/IsFibonacci.dir/clean

CMakeFiles/IsFibonacci.dir/depend:
	cd /Users/timshur/CLionProjects/IsFibonacci/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/timshur/CLionProjects/IsFibonacci /Users/timshur/CLionProjects/IsFibonacci /Users/timshur/CLionProjects/IsFibonacci/cmake-build-debug /Users/timshur/CLionProjects/IsFibonacci/cmake-build-debug /Users/timshur/CLionProjects/IsFibonacci/cmake-build-debug/CMakeFiles/IsFibonacci.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/IsFibonacci.dir/depend

