# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\file compression project\c\in_cpp"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\file compression project\c\in_cpp\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/in_cpp.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/in_cpp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/in_cpp.dir/flags.make

CMakeFiles/in_cpp.dir/main.cpp.obj: CMakeFiles/in_cpp.dir/flags.make
CMakeFiles/in_cpp.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\file compression project\c\in_cpp\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/in_cpp.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\in_cpp.dir\main.cpp.obj -c "D:\file compression project\c\in_cpp\main.cpp"

CMakeFiles/in_cpp.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/in_cpp.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\file compression project\c\in_cpp\main.cpp" > CMakeFiles\in_cpp.dir\main.cpp.i

CMakeFiles/in_cpp.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/in_cpp.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\file compression project\c\in_cpp\main.cpp" -o CMakeFiles\in_cpp.dir\main.cpp.s

# Object files for target in_cpp
in_cpp_OBJECTS = \
"CMakeFiles/in_cpp.dir/main.cpp.obj"

# External object files for target in_cpp
in_cpp_EXTERNAL_OBJECTS =

in_cpp.exe: CMakeFiles/in_cpp.dir/main.cpp.obj
in_cpp.exe: CMakeFiles/in_cpp.dir/build.make
in_cpp.exe: CMakeFiles/in_cpp.dir/linklibs.rsp
in_cpp.exe: CMakeFiles/in_cpp.dir/objects1.rsp
in_cpp.exe: CMakeFiles/in_cpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\file compression project\c\in_cpp\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable in_cpp.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\in_cpp.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/in_cpp.dir/build: in_cpp.exe
.PHONY : CMakeFiles/in_cpp.dir/build

CMakeFiles/in_cpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\in_cpp.dir\cmake_clean.cmake
.PHONY : CMakeFiles/in_cpp.dir/clean

CMakeFiles/in_cpp.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\file compression project\c\in_cpp" "D:\file compression project\c\in_cpp" "D:\file compression project\c\in_cpp\cmake-build-debug" "D:\file compression project\c\in_cpp\cmake-build-debug" "D:\file compression project\c\in_cpp\cmake-build-debug\CMakeFiles\in_cpp.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/in_cpp.dir/depend
