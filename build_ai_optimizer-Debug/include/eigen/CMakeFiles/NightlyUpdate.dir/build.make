# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\DCF\github\ai_optimizer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug

# Utility rule file for NightlyUpdate.

# Include any custom commands dependencies for this target.
include include/eigen/CMakeFiles/NightlyUpdate.dir/compiler_depend.make

# Include the progress variables for this target.
include include/eigen/CMakeFiles/NightlyUpdate.dir/progress.make

include/eigen/CMakeFiles/NightlyUpdate:
	cd /d D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen && "C:\Program Files\CMake\bin\ctest.exe" -D NightlyUpdate

NightlyUpdate: include/eigen/CMakeFiles/NightlyUpdate
NightlyUpdate: include/eigen/CMakeFiles/NightlyUpdate.dir/build.make
.PHONY : NightlyUpdate

# Rule to build all files generated by this target.
include/eigen/CMakeFiles/NightlyUpdate.dir/build: NightlyUpdate
.PHONY : include/eigen/CMakeFiles/NightlyUpdate.dir/build

include/eigen/CMakeFiles/NightlyUpdate.dir/clean:
	cd /d D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen && $(CMAKE_COMMAND) -P CMakeFiles\NightlyUpdate.dir\cmake_clean.cmake
.PHONY : include/eigen/CMakeFiles/NightlyUpdate.dir/clean

include/eigen/CMakeFiles/NightlyUpdate.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\DCF\github\ai_optimizer D:\DCF\github\ai_optimizer\include\eigen D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\CMakeFiles\NightlyUpdate.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : include/eigen/CMakeFiles/NightlyUpdate.dir/depend

