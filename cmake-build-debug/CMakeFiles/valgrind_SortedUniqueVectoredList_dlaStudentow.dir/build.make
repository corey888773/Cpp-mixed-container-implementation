# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/190/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/190/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/piotrek/Downloads/zaj10SortedUniqueVectoredList_dlaStudentow(1)/zaj10SortedUniqueVectoredList_dlaStudentow"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/piotrek/Downloads/zaj10SortedUniqueVectoredList_dlaStudentow(1)/zaj10SortedUniqueVectoredList_dlaStudentow/cmake-build-debug"

# Utility rule file for valgrind_SortedUniqueVectoredList_dlaStudentow.

# Include any custom commands dependencies for this target.
include CMakeFiles/valgrind_SortedUniqueVectoredList_dlaStudentow.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/valgrind_SortedUniqueVectoredList_dlaStudentow.dir/progress.make

CMakeFiles/valgrind_SortedUniqueVectoredList_dlaStudentow: bin/SortedUniqueVectoredList_dlaStudentow
	/usr/bin/valgrind --leak-check=full /home/piotrek/Downloads/zaj10SortedUniqueVectoredList_dlaStudentow(1)/zaj10SortedUniqueVectoredList_dlaStudentow/cmake-build-debug/bin/SortedUniqueVectoredList_dlaStudentow

valgrind_SortedUniqueVectoredList_dlaStudentow: CMakeFiles/valgrind_SortedUniqueVectoredList_dlaStudentow
valgrind_SortedUniqueVectoredList_dlaStudentow: CMakeFiles/valgrind_SortedUniqueVectoredList_dlaStudentow.dir/build.make
.PHONY : valgrind_SortedUniqueVectoredList_dlaStudentow

# Rule to build all files generated by this target.
CMakeFiles/valgrind_SortedUniqueVectoredList_dlaStudentow.dir/build: valgrind_SortedUniqueVectoredList_dlaStudentow
.PHONY : CMakeFiles/valgrind_SortedUniqueVectoredList_dlaStudentow.dir/build

CMakeFiles/valgrind_SortedUniqueVectoredList_dlaStudentow.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/valgrind_SortedUniqueVectoredList_dlaStudentow.dir/cmake_clean.cmake
.PHONY : CMakeFiles/valgrind_SortedUniqueVectoredList_dlaStudentow.dir/clean

CMakeFiles/valgrind_SortedUniqueVectoredList_dlaStudentow.dir/depend:
	cd "/home/piotrek/Downloads/zaj10SortedUniqueVectoredList_dlaStudentow(1)/zaj10SortedUniqueVectoredList_dlaStudentow/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/piotrek/Downloads/zaj10SortedUniqueVectoredList_dlaStudentow(1)/zaj10SortedUniqueVectoredList_dlaStudentow" "/home/piotrek/Downloads/zaj10SortedUniqueVectoredList_dlaStudentow(1)/zaj10SortedUniqueVectoredList_dlaStudentow" "/home/piotrek/Downloads/zaj10SortedUniqueVectoredList_dlaStudentow(1)/zaj10SortedUniqueVectoredList_dlaStudentow/cmake-build-debug" "/home/piotrek/Downloads/zaj10SortedUniqueVectoredList_dlaStudentow(1)/zaj10SortedUniqueVectoredList_dlaStudentow/cmake-build-debug" "/home/piotrek/Downloads/zaj10SortedUniqueVectoredList_dlaStudentow(1)/zaj10SortedUniqueVectoredList_dlaStudentow/cmake-build-debug/CMakeFiles/valgrind_SortedUniqueVectoredList_dlaStudentow.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/valgrind_SortedUniqueVectoredList_dlaStudentow.dir/depend

