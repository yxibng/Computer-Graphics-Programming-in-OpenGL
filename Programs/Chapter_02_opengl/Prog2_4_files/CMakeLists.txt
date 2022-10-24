cmake_minimum_required(VERSION 3.0.0)
project(PROG2_4_FILES VERSION 0.1.0)

include(CTest)
enable_testing()

add_executable(PROG2_4_FILES main.cpp)

set(GLSLFILES 
${CMAKE_CURRENT_LIST_DIR}/fragShader.glsl 
${CMAKE_CURRENT_LIST_DIR}/vertShader.glsl
)

add_custom_command(
    TARGET PROG2_4_FILES PRE_LINK
    COMMAND cp ${GLSLFILES} ${CMAKE_CURRENT_BINARY_DIR}
)

find_package(GLEW)
target_link_libraries(PROG2_4_FILES GLEW::glew_s)

find_package(glfw3 3.3 REQUIRED)
target_link_libraries(PROG2_4_FILES glfw)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
