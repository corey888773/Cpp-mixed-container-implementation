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

# Utility rule file for zip.

# Include any custom commands dependencies for this target.
include CMakeFiles/zip.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/zip.dir/progress.make

CMakeFiles/zip:
	cd "/home/piotrek/Downloads/zaj10SortedUniqueVectoredList_dlaStudentow(1)/zaj10SortedUniqueVectoredList_dlaStudentow" && zip -r /home/piotrek/Downloads/zaj10SortedUniqueVectoredList_dlaStudentow(1)/zaj10SortedUniqueVectoredList_dlaStudentow/cmake-build-debug/zaj10SortedUniqueVectoredList_dlaStudentow.zip ./

zip: CMakeFiles/zip
zip: CMakeFiles/zip.dir/build.make
.PHONY : zip

# Rule to build all files generated by this target.
CMakeFiles/zip.dir/build: zip
.PHONY : CMakeFiles/zip.dir/build

CMakeFiles/zip.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/zip.dir/cmake_clean.cmake
.PHONY : CMakeFiles/zip.dir/clean

CMakeFiles/zip.dir/depend:
	cd "/home/piotrek/Downloads/zaj10SortedUniqueVectoredList_dlaStudentow(1)/zaj10SortedUniqueVectoredList_dlaStudentow/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/piotrek/Downloads/zaj10SortedUniqueVectoredList_dlaStudentow(1)/zaj10SortedUniqueVectoredList_dlaStudentow" "/home/piotrek/Downloads/zaj10SortedUniqueVectoredList_dlaStudentow(1)/zaj10SortedUniqueVectoredList_dlaStudentow" "/home/piotrek/Downloads/zaj10SortedUniqueVectoredList_dlaStudentow(1)/zaj10SortedUniqueVectoredList_dlaStudentow/cmake-build-debug" "/home/piotrek/Downloads/zaj10SortedUniqueVectoredList_dlaStudentow(1)/zaj10SortedUniqueVectoredList_dlaStudentow/cmake-build-debug" "/home/piotrek/Downloads/zaj10SortedUniqueVectoredList_dlaStudentow(1)/zaj10SortedUniqueVectoredList_dlaStudentow/cmake-build-debug/CMakeFiles/zip.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/zip.dir/depend

