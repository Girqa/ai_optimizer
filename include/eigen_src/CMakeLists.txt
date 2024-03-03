target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})

add_library(EIGEN_LIB STATIC eigen)
set_target_properties(EIGEN_LIB PROPERTIES LINKER_LANGUAGE CXX)

target_include_directories(EIGEN_LIB PRIVATE
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/eigen/Eigen/Eigen>
    $<INSTALL_INTERFACE:eigen/Eigen/Eigen>
)
