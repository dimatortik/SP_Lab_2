cmake_minimum_required(VERSION 3.10)
project(calculator)

include_directories(.)

add_library(calculator_lib STATIC calculator.cpp)
add_executable(calculator main.cpp)
target_link_libraries(calculator calculator_lib)