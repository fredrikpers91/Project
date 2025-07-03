cmake_minimum_required(VERSION 4.1)

# Set the project name and version
project(MyExecutable VERSION 1.0)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add the executable
add_executable(MyExecutable main.cpp)
