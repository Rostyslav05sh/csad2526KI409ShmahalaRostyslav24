@echo off
setlocal enabledelayedexpansion

REM Creating a build directory
if not exist build (
    mkdir build
)
cd build

REM Configuring a project using CMake
cmake ..

REM Project building
cmake --build .

REM Running tests via CTest
ctest --output-on-failure
