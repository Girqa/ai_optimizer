cmake_minimum_required(VERSION 3.22)

project(ai)

set(CMAKE_CXX_STANDARD 14)
set(BUILD_TESTING OFF)

file(GLOB_RECURSE SOURCES "src/*.cpp")
add_executable(${PROJECT_NAME} ${SOURCES})

add_subdirectory(include)

