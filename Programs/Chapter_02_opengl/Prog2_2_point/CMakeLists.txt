cmake_minimum_required(VERSION 3.0.0)
project(Prog2_2_point VERSION 0.1.0)

include(CTest)
enable_testing()

add_executable(Prog2_2_point main.cpp)

find_package(GLEW)
target_link_libraries(Prog2_2_point GLEW::glew_s)


find_package(glfw3 3.3 REQUIRED)
target_link_libraries(Prog2_2_point glfw)


set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
