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

# Include any dependencies generated for this target.
include include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/compiler_depend.make

# Include the progress variables for this target.
include include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/progress.make

# Include the compile flags for this target's objects.
include include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/flags.make

include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/compile_PartialRedux_count.cpp.obj: include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/flags.make
include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/compile_PartialRedux_count.cpp.obj: include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/includes_CXX.rsp
include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/compile_PartialRedux_count.cpp.obj: include/eigen/doc/snippets/compile_PartialRedux_count.cpp
include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/compile_PartialRedux_count.cpp.obj: D:/DCF/github/ai_optimizer/include/eigen/doc/snippets/PartialRedux_count.cpp
include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/compile_PartialRedux_count.cpp.obj: include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/compile_PartialRedux_count.cpp.obj"
	cd /d D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\doc\snippets && c:\Users\user\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/compile_PartialRedux_count.cpp.obj -MF CMakeFiles\compile_PartialRedux_count.dir\compile_PartialRedux_count.cpp.obj.d -o CMakeFiles\compile_PartialRedux_count.dir\compile_PartialRedux_count.cpp.obj -c D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\doc\snippets\compile_PartialRedux_count.cpp

include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/compile_PartialRedux_count.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/compile_PartialRedux_count.dir/compile_PartialRedux_count.cpp.i"
	cd /d D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\doc\snippets && c:\Users\user\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\doc\snippets\compile_PartialRedux_count.cpp > CMakeFiles\compile_PartialRedux_count.dir\compile_PartialRedux_count.cpp.i

include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/compile_PartialRedux_count.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/compile_PartialRedux_count.dir/compile_PartialRedux_count.cpp.s"
	cd /d D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\doc\snippets && c:\Users\user\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\doc\snippets\compile_PartialRedux_count.cpp -o CMakeFiles\compile_PartialRedux_count.dir\compile_PartialRedux_count.cpp.s

# Object files for target compile_PartialRedux_count
compile_PartialRedux_count_OBJECTS = \
"CMakeFiles/compile_PartialRedux_count.dir/compile_PartialRedux_count.cpp.obj"

# External object files for target compile_PartialRedux_count
compile_PartialRedux_count_EXTERNAL_OBJECTS =

include/eigen/doc/snippets/compile_PartialRedux_count.exe: include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/compile_PartialRedux_count.cpp.obj
include/eigen/doc/snippets/compile_PartialRedux_count.exe: include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/build.make
include/eigen/doc/snippets/compile_PartialRedux_count.exe: include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/linkLibs.rsp
include/eigen/doc/snippets/compile_PartialRedux_count.exe: include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/objects1.rsp
include/eigen/doc/snippets/compile_PartialRedux_count.exe: include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable compile_PartialRedux_count.exe"
	cd /d D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\doc\snippets && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\compile_PartialRedux_count.dir\link.txt --verbose=$(VERBOSE)
	cd /d D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\doc\snippets && C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -noprofile -executionpolicy Bypass -file C:/Users/user/dev/vcpkg/scripts/buildsystems/msbuild/applocal.ps1 -targetBinary D:/DCF/github/ai_optimizer/build_ai_optimizer-Debug/include/eigen/doc/snippets/compile_PartialRedux_count.exe -installedDir C:/Users/user/dev/vcpkg/installed/x64-windows/debug/bin -OutVariable out
	cd /d D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\doc\snippets && .\compile_PartialRedux_count.exe >D:/DCF/github/ai_optimizer/build_ai_optimizer-Debug/include/eigen/doc/snippets/PartialRedux_count.out

# Rule to build all files generated by this target.
include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/build: include/eigen/doc/snippets/compile_PartialRedux_count.exe
.PHONY : include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/build

include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/clean:
	cd /d D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\doc\snippets && $(CMAKE_COMMAND) -P CMakeFiles\compile_PartialRedux_count.dir\cmake_clean.cmake
.PHONY : include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/clean

include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\DCF\github\ai_optimizer D:\DCF\github\ai_optimizer\include\eigen\doc\snippets D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\doc\snippets D:\DCF\github\ai_optimizer\build_ai_optimizer-Debug\include\eigen\doc\snippets\CMakeFiles\compile_PartialRedux_count.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : include/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_count.dir/depend

