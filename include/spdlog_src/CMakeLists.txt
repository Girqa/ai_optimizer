target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_include_directories(${PROJECT_NAME} PUBLIC 
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/spdlog/include>
    $<INSTALL_INTERFACE:spdlog>
)

add_library(SPDLOG_LIB STATIC spdlog)
set_target_properties(SPDLOG_LIB PROPERTIES LINKER_LANGUAGE CXX)

target_include_directories(SPDLOG_LIB PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/spdlog/include>
    $<INSTALL_INTERFACE:spdlog>
)
