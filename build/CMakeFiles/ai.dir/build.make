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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kalter/cpp/ai_optimizer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kalter/cpp/ai_optimizer/build

# Include any dependencies generated for this target.
include CMakeFiles/ai.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ai.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ai.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ai.dir/flags.make

CMakeFiles/ai.dir/src/composite_nn/ActivationFunction.cpp.o: CMakeFiles/ai.dir/flags.make
CMakeFiles/ai.dir/src/composite_nn/ActivationFunction.cpp.o: ../src/composite_nn/ActivationFunction.cpp
CMakeFiles/ai.dir/src/composite_nn/ActivationFunction.cpp.o: CMakeFiles/ai.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalter/cpp/ai_optimizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ai.dir/src/composite_nn/ActivationFunction.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai.dir/src/composite_nn/ActivationFunction.cpp.o -MF CMakeFiles/ai.dir/src/composite_nn/ActivationFunction.cpp.o.d -o CMakeFiles/ai.dir/src/composite_nn/ActivationFunction.cpp.o -c /home/kalter/cpp/ai_optimizer/src/composite_nn/ActivationFunction.cpp

CMakeFiles/ai.dir/src/composite_nn/ActivationFunction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai.dir/src/composite_nn/ActivationFunction.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalter/cpp/ai_optimizer/src/composite_nn/ActivationFunction.cpp > CMakeFiles/ai.dir/src/composite_nn/ActivationFunction.cpp.i

CMakeFiles/ai.dir/src/composite_nn/ActivationFunction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai.dir/src/composite_nn/ActivationFunction.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalter/cpp/ai_optimizer/src/composite_nn/ActivationFunction.cpp -o CMakeFiles/ai.dir/src/composite_nn/ActivationFunction.cpp.s

CMakeFiles/ai.dir/src/composite_nn/Layer.cpp.o: CMakeFiles/ai.dir/flags.make
CMakeFiles/ai.dir/src/composite_nn/Layer.cpp.o: ../src/composite_nn/Layer.cpp
CMakeFiles/ai.dir/src/composite_nn/Layer.cpp.o: CMakeFiles/ai.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalter/cpp/ai_optimizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ai.dir/src/composite_nn/Layer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai.dir/src/composite_nn/Layer.cpp.o -MF CMakeFiles/ai.dir/src/composite_nn/Layer.cpp.o.d -o CMakeFiles/ai.dir/src/composite_nn/Layer.cpp.o -c /home/kalter/cpp/ai_optimizer/src/composite_nn/Layer.cpp

CMakeFiles/ai.dir/src/composite_nn/Layer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai.dir/src/composite_nn/Layer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalter/cpp/ai_optimizer/src/composite_nn/Layer.cpp > CMakeFiles/ai.dir/src/composite_nn/Layer.cpp.i

CMakeFiles/ai.dir/src/composite_nn/Layer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai.dir/src/composite_nn/Layer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalter/cpp/ai_optimizer/src/composite_nn/Layer.cpp -o CMakeFiles/ai.dir/src/composite_nn/Layer.cpp.s

CMakeFiles/ai.dir/src/composite_nn/LossFunction.cpp.o: CMakeFiles/ai.dir/flags.make
CMakeFiles/ai.dir/src/composite_nn/LossFunction.cpp.o: ../src/composite_nn/LossFunction.cpp
CMakeFiles/ai.dir/src/composite_nn/LossFunction.cpp.o: CMakeFiles/ai.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalter/cpp/ai_optimizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ai.dir/src/composite_nn/LossFunction.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai.dir/src/composite_nn/LossFunction.cpp.o -MF CMakeFiles/ai.dir/src/composite_nn/LossFunction.cpp.o.d -o CMakeFiles/ai.dir/src/composite_nn/LossFunction.cpp.o -c /home/kalter/cpp/ai_optimizer/src/composite_nn/LossFunction.cpp

CMakeFiles/ai.dir/src/composite_nn/LossFunction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai.dir/src/composite_nn/LossFunction.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalter/cpp/ai_optimizer/src/composite_nn/LossFunction.cpp > CMakeFiles/ai.dir/src/composite_nn/LossFunction.cpp.i

CMakeFiles/ai.dir/src/composite_nn/LossFunction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai.dir/src/composite_nn/LossFunction.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalter/cpp/ai_optimizer/src/composite_nn/LossFunction.cpp -o CMakeFiles/ai.dir/src/composite_nn/LossFunction.cpp.s

CMakeFiles/ai.dir/src/composite_nn/Network.cpp.o: CMakeFiles/ai.dir/flags.make
CMakeFiles/ai.dir/src/composite_nn/Network.cpp.o: ../src/composite_nn/Network.cpp
CMakeFiles/ai.dir/src/composite_nn/Network.cpp.o: CMakeFiles/ai.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalter/cpp/ai_optimizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ai.dir/src/composite_nn/Network.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai.dir/src/composite_nn/Network.cpp.o -MF CMakeFiles/ai.dir/src/composite_nn/Network.cpp.o.d -o CMakeFiles/ai.dir/src/composite_nn/Network.cpp.o -c /home/kalter/cpp/ai_optimizer/src/composite_nn/Network.cpp

CMakeFiles/ai.dir/src/composite_nn/Network.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai.dir/src/composite_nn/Network.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalter/cpp/ai_optimizer/src/composite_nn/Network.cpp > CMakeFiles/ai.dir/src/composite_nn/Network.cpp.i

CMakeFiles/ai.dir/src/composite_nn/Network.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai.dir/src/composite_nn/Network.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalter/cpp/ai_optimizer/src/composite_nn/Network.cpp -o CMakeFiles/ai.dir/src/composite_nn/Network.cpp.s

CMakeFiles/ai.dir/src/composite_nn/NetworkController.cpp.o: CMakeFiles/ai.dir/flags.make
CMakeFiles/ai.dir/src/composite_nn/NetworkController.cpp.o: ../src/composite_nn/NetworkController.cpp
CMakeFiles/ai.dir/src/composite_nn/NetworkController.cpp.o: CMakeFiles/ai.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalter/cpp/ai_optimizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ai.dir/src/composite_nn/NetworkController.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai.dir/src/composite_nn/NetworkController.cpp.o -MF CMakeFiles/ai.dir/src/composite_nn/NetworkController.cpp.o.d -o CMakeFiles/ai.dir/src/composite_nn/NetworkController.cpp.o -c /home/kalter/cpp/ai_optimizer/src/composite_nn/NetworkController.cpp

CMakeFiles/ai.dir/src/composite_nn/NetworkController.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai.dir/src/composite_nn/NetworkController.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalter/cpp/ai_optimizer/src/composite_nn/NetworkController.cpp > CMakeFiles/ai.dir/src/composite_nn/NetworkController.cpp.i

CMakeFiles/ai.dir/src/composite_nn/NetworkController.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai.dir/src/composite_nn/NetworkController.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalter/cpp/ai_optimizer/src/composite_nn/NetworkController.cpp -o CMakeFiles/ai.dir/src/composite_nn/NetworkController.cpp.s

CMakeFiles/ai.dir/src/composite_nn/Weights.cpp.o: CMakeFiles/ai.dir/flags.make
CMakeFiles/ai.dir/src/composite_nn/Weights.cpp.o: ../src/composite_nn/Weights.cpp
CMakeFiles/ai.dir/src/composite_nn/Weights.cpp.o: CMakeFiles/ai.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalter/cpp/ai_optimizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/ai.dir/src/composite_nn/Weights.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai.dir/src/composite_nn/Weights.cpp.o -MF CMakeFiles/ai.dir/src/composite_nn/Weights.cpp.o.d -o CMakeFiles/ai.dir/src/composite_nn/Weights.cpp.o -c /home/kalter/cpp/ai_optimizer/src/composite_nn/Weights.cpp

CMakeFiles/ai.dir/src/composite_nn/Weights.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai.dir/src/composite_nn/Weights.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalter/cpp/ai_optimizer/src/composite_nn/Weights.cpp > CMakeFiles/ai.dir/src/composite_nn/Weights.cpp.i

CMakeFiles/ai.dir/src/composite_nn/Weights.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai.dir/src/composite_nn/Weights.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalter/cpp/ai_optimizer/src/composite_nn/Weights.cpp -o CMakeFiles/ai.dir/src/composite_nn/Weights.cpp.s

CMakeFiles/ai.dir/src/main.cpp.o: CMakeFiles/ai.dir/flags.make
CMakeFiles/ai.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/ai.dir/src/main.cpp.o: CMakeFiles/ai.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalter/cpp/ai_optimizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/ai.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai.dir/src/main.cpp.o -MF CMakeFiles/ai.dir/src/main.cpp.o.d -o CMakeFiles/ai.dir/src/main.cpp.o -c /home/kalter/cpp/ai_optimizer/src/main.cpp

CMakeFiles/ai.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalter/cpp/ai_optimizer/src/main.cpp > CMakeFiles/ai.dir/src/main.cpp.i

CMakeFiles/ai.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalter/cpp/ai_optimizer/src/main.cpp -o CMakeFiles/ai.dir/src/main.cpp.s

CMakeFiles/ai.dir/src/nn/NeuralNetwork.cpp.o: CMakeFiles/ai.dir/flags.make
CMakeFiles/ai.dir/src/nn/NeuralNetwork.cpp.o: ../src/nn/NeuralNetwork.cpp
CMakeFiles/ai.dir/src/nn/NeuralNetwork.cpp.o: CMakeFiles/ai.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalter/cpp/ai_optimizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/ai.dir/src/nn/NeuralNetwork.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai.dir/src/nn/NeuralNetwork.cpp.o -MF CMakeFiles/ai.dir/src/nn/NeuralNetwork.cpp.o.d -o CMakeFiles/ai.dir/src/nn/NeuralNetwork.cpp.o -c /home/kalter/cpp/ai_optimizer/src/nn/NeuralNetwork.cpp

CMakeFiles/ai.dir/src/nn/NeuralNetwork.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai.dir/src/nn/NeuralNetwork.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalter/cpp/ai_optimizer/src/nn/NeuralNetwork.cpp > CMakeFiles/ai.dir/src/nn/NeuralNetwork.cpp.i

CMakeFiles/ai.dir/src/nn/NeuralNetwork.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai.dir/src/nn/NeuralNetwork.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalter/cpp/ai_optimizer/src/nn/NeuralNetwork.cpp -o CMakeFiles/ai.dir/src/nn/NeuralNetwork.cpp.s

CMakeFiles/ai.dir/src/nn_service/nn_service.cpp.o: CMakeFiles/ai.dir/flags.make
CMakeFiles/ai.dir/src/nn_service/nn_service.cpp.o: ../src/nn_service/nn_service.cpp
CMakeFiles/ai.dir/src/nn_service/nn_service.cpp.o: CMakeFiles/ai.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalter/cpp/ai_optimizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/ai.dir/src/nn_service/nn_service.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai.dir/src/nn_service/nn_service.cpp.o -MF CMakeFiles/ai.dir/src/nn_service/nn_service.cpp.o.d -o CMakeFiles/ai.dir/src/nn_service/nn_service.cpp.o -c /home/kalter/cpp/ai_optimizer/src/nn_service/nn_service.cpp

CMakeFiles/ai.dir/src/nn_service/nn_service.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai.dir/src/nn_service/nn_service.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalter/cpp/ai_optimizer/src/nn_service/nn_service.cpp > CMakeFiles/ai.dir/src/nn_service/nn_service.cpp.i

CMakeFiles/ai.dir/src/nn_service/nn_service.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai.dir/src/nn_service/nn_service.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalter/cpp/ai_optimizer/src/nn_service/nn_service.cpp -o CMakeFiles/ai.dir/src/nn_service/nn_service.cpp.s

# Object files for target ai
ai_OBJECTS = \
"CMakeFiles/ai.dir/src/composite_nn/ActivationFunction.cpp.o" \
"CMakeFiles/ai.dir/src/composite_nn/Layer.cpp.o" \
"CMakeFiles/ai.dir/src/composite_nn/LossFunction.cpp.o" \
"CMakeFiles/ai.dir/src/composite_nn/Network.cpp.o" \
"CMakeFiles/ai.dir/src/composite_nn/NetworkController.cpp.o" \
"CMakeFiles/ai.dir/src/composite_nn/Weights.cpp.o" \
"CMakeFiles/ai.dir/src/main.cpp.o" \
"CMakeFiles/ai.dir/src/nn/NeuralNetwork.cpp.o" \
"CMakeFiles/ai.dir/src/nn_service/nn_service.cpp.o"

# External object files for target ai
ai_EXTERNAL_OBJECTS =

ai: CMakeFiles/ai.dir/src/composite_nn/ActivationFunction.cpp.o
ai: CMakeFiles/ai.dir/src/composite_nn/Layer.cpp.o
ai: CMakeFiles/ai.dir/src/composite_nn/LossFunction.cpp.o
ai: CMakeFiles/ai.dir/src/composite_nn/Network.cpp.o
ai: CMakeFiles/ai.dir/src/composite_nn/NetworkController.cpp.o
ai: CMakeFiles/ai.dir/src/composite_nn/Weights.cpp.o
ai: CMakeFiles/ai.dir/src/main.cpp.o
ai: CMakeFiles/ai.dir/src/nn/NeuralNetwork.cpp.o
ai: CMakeFiles/ai.dir/src/nn_service/nn_service.cpp.o
ai: CMakeFiles/ai.dir/build.make
ai: CMakeFiles/ai.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kalter/cpp/ai_optimizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable ai"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ai.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ai.dir/build: ai
.PHONY : CMakeFiles/ai.dir/build

CMakeFiles/ai.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ai.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ai.dir/clean

CMakeFiles/ai.dir/depend:
	cd /home/kalter/cpp/ai_optimizer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kalter/cpp/ai_optimizer /home/kalter/cpp/ai_optimizer /home/kalter/cpp/ai_optimizer/build /home/kalter/cpp/ai_optimizer/build /home/kalter/cpp/ai_optimizer/build/CMakeFiles/ai.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ai.dir/depend
