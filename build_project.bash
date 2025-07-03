#!/bin/bash
set -e

echo "Removing old build directory..."
rm -rf build

mkdir build
cd build

cmake -DCMAKE_BUILD_TYPE:STRING=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE -DCMAKE_C_COMPILER:FILEPATH=/c/msys64/ucrt64/bin/gcc.exe -DCMAKE_CXX_COMPILER:FILEPATH=/c/msys64/ucrt64/bin/g++.exe --no-warn-unused-cli -SC:/Users/fredrikp/Desktop/Project -Bc:/Users/fredrikp/Desktop/Project/build -G "MinGW Makefiles"

cmake --build c/Users/fredrikp/Desktop/Project/build --config Debug --target all -j 10 --

echo "Running project..."
./MyExecutable.exe
