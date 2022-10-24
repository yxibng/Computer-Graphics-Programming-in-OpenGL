cmake_minimum_required(VERSION 3.0.0)
project(prog2_1_background VERSION 0.1.0)

include(CTest)
enable_testing()

add_executable(prog2_1_background main.cpp)

find_package(GLEW)
target_link_libraries(prog2_1_background GLEW::glew_s)


find_package(glfw3 3.3 REQUIRED)

target_link_libraries(prog2_1_background glfw)


set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
