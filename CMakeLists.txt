cmake_minimum_required(VERSION 3.28.1)

set(CMAKE_TOOL_CHAIN ${CMAKE_TOOLCHAIN_FILE})

project(ai)

set(CMAKE_CXX_STANDARD 14)
set(BUILD_TESTING OFF)

find_package(ZLIB REQUIRED)
find_package(unofficial-brotli CONFIG REQUIRED)
find_package(cpprestsdk CONFIG REQUIRED)
find_package(spdlog CONFIG REQUIRED)

include_directories(include)

file(GLOB_RECURSE SOURCES "src/*.cpp")

add_executable(${PROJECT_NAME} ${SOURCES})

target_link_libraries(${PROJECT_NAME} PRIVATE cpprestsdk::cpprest)

add_subdirectory(include/eigen)

