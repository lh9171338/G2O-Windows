########### 设置版本
cmake_minimum_required(VERSION 3.20)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_BUILD_TYPE Release)
message(STATUS "Build Type: ${CMAKE_BUILD_TYPE}")

########### 设置项目名称
project(g2o_demo)

########### 添加库
# g2o
find_package(G2O REQUIRED)
include_directories(${G2O_INCLUDE_DIRS})
link_directories(${G2O_LIBRARIE_DIRS})
if("${CMAKE_BUILD_TYPE}" STREQUAL "Debug")
	set(G2O_LIBS ${G2O_LIBS_DEBUG})
else()
	set(G2O_LIBS ${G2O_LIBS_RELEASE})	
endif()
message(STATUS "G2O_INCLUDE_DIRS: ${G2O_INCLUDE_DIRS}")
message(STATUS "G2O_LIBS: ${G2O_LIBS}")

# opencv
find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})
message(STATUS "OpenCV_INCLUDE_DIRS: ${OpenCV_INCLUDE_DIRS}")
message(STATUS "OpenCV_LIBS: ${OpenCV_LIBS}")

# eigen3
find_package(Eigen3 REQUIRED)
include_directories(${EIGEN3_INCLUDE_DIRS})
message(STATUS "EIGEN3_INCLUDE_DIRS: ${EIGEN3_INCLUDE_DIRS}")

########### 编译可执行文件
add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} ${OpenCV_LIBS} ${G2O_LIBS})