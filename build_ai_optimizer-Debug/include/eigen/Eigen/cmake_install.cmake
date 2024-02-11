# Install script for directory: D:/DCF/github/ai_optimizer/include/eigen/Eigen

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/ai")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/Users/user/mingw64/bin/objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE FILE FILES
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/Cholesky"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/CholmodSupport"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/Core"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/Dense"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/Eigen"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/Eigenvalues"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/Geometry"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/Householder"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/IterativeLinearSolvers"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/Jacobi"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/LU"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/MetisSupport"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/OrderingMethods"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/PaStiXSupport"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/PardisoSupport"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/QR"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/QtAlignedMalloc"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/SPQRSupport"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/SVD"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/Sparse"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/SparseCholesky"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/SparseCore"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/SparseLU"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/SparseQR"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/StdDeque"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/StdList"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/StdVector"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/SuperLUSupport"
    "D:/DCF/github/ai_optimizer/include/eigen/Eigen/UmfPackSupport"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE DIRECTORY FILES "D:/DCF/github/ai_optimizer/include/eigen/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

