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

# Utility rule file for doc-eigen-prerequisites.

# Include any custom commands dependencies for this target.
include include/eigen/doc/CMakeFiles/doc-eigen-prerequisites.dir/compiler_depend.make

# Include the progress variables for this target.
include include/eigen/doc/CMakeFiles/doc-eigen-prerequisites.dir/progress.make

include/eigen/doc/CMakeFiles/doc-eigen-prerequisites:
	cd /d D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\doc && "C:\Program Files\CMake\bin\cmake.exe" -E make_directory D:/DCF/github/ai_optimizer/build_ai_optimizer-Debug/include/eigen/doc/html/
	cd /d D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\doc && "C:\Program Files\CMake\bin\cmake.exe" -E copy D:/DCF/github/ai_optimizer/include/eigen/doc/eigen_navtree_hacks.js D:/DCF/github/ai_optimizer/build_ai_optimizer-Debug/include/eigen/doc/html/
	cd /d D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\doc && "C:\Program Files\CMake\bin\cmake.exe" -E copy D:/DCF/github/ai_optimizer/include/eigen/doc/Eigen_Silly_Professor_64x64.png D:/DCF/github/ai_optimizer/build_ai_optimizer-Debug/include/eigen/doc/html/
	cd /d D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\doc && "C:\Program Files\CMake\bin\cmake.exe" -E copy D:/DCF/github/ai_optimizer/include/eigen/doc/ftv2pnode.png D:/DCF/github/ai_optimizer/build_ai_optimizer-Debug/include/eigen/doc/html/
	cd /d D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\doc && "C:\Program Files\CMake\bin\cmake.exe" -E copy D:/DCF/github/ai_optimizer/include/eigen/doc/ftv2node.png D:/DCF/github/ai_optimizer/build_ai_optimizer-Debug/include/eigen/doc/html/
	cd /d D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\doc && "C:\Program Files\CMake\bin\cmake.exe" -E copy D:/DCF/github/ai_optimizer/include/eigen/doc/AsciiQuickReference.txt D:/DCF/github/ai_optimizer/build_ai_optimizer-Debug/include/eigen/doc/html/

doc-eigen-prerequisites: include/eigen/doc/CMakeFiles/doc-eigen-prerequisites
doc-eigen-prerequisites: include/eigen/doc/CMakeFiles/doc-eigen-prerequisites.dir/build.make
.PHONY : doc-eigen-prerequisites

# Rule to build all files generated by this target.
include/eigen/doc/CMakeFiles/doc-eigen-prerequisites.dir/build: doc-eigen-prerequisites
.PHONY : include/eigen/doc/CMakeFiles/doc-eigen-prerequisites.dir/build

include/eigen/doc/CMakeFiles/doc-eigen-prerequisites.dir/clean:
	cd /d D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\doc && $(CMAKE_COMMAND) -P CMakeFiles\doc-eigen-prerequisites.dir\cmake_clean.cmake
.PHONY : include/eigen/doc/CMakeFiles/doc-eigen-prerequisites.dir/clean

include/eigen/doc/CMakeFiles/doc-eigen-prerequisites.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\DCF\github\ai_optimizer D:\DCF\github\ai_optimizer\include\eigen\doc D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\doc D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\doc\CMakeFiles\doc-eigen-prerequisites.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : include/eigen/doc/CMakeFiles/doc-eigen-prerequisites.dir/depend

