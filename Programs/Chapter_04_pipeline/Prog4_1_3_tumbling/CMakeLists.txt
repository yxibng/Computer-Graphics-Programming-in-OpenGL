cmake_minimum_required(VERSION 3.0.0)
project(Prog4_1_3_tumbling VERSION 0.1.0)

include(CTest)
enable_testing()

set(CMAKE_PREFIX_PATH ${CMAKE_CURRENT_LIST_DIR}/../../SOIL2)

add_executable(Prog4_1_3_tumbling main.cpp Utils.cpp)
target_include_directories(Prog4_1_3_tumbling PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})

set(GLSLFILES 
${CMAKE_CURRENT_LIST_DIR}/fragShader.glsl 
${CMAKE_CURRENT_LIST_DIR}/vertShader.glsl
)

add_custom_command(
    TARGET Prog4_1_3_tumbling PRE_LINK
    COMMAND cp ${GLSLFILES} ${CMAKE_CURRENT_BINARY_DIR}
)

find_package(GLEW)
target_link_libraries(Prog4_1_3_tumbling GLEW::glew_s)

find_package(glfw3 3.3 REQUIRED)
target_link_libraries(Prog4_1_3_tumbling glfw)

find_package(soil2)
target_link_libraries(Prog4_1_3_tumbling soil2::soil2)


target_link_libraries(Prog4_1_3_tumbling "-framework CoreFoundation")




set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
