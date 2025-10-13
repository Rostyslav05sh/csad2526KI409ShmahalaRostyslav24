#!/bin/bash
set -e

# Create build directory
mkdir -p build
cd build

# Configure the project with CMake
cmake ..

# Build the project
cmake --build .

# Run tests using CTest
ctest --output-on-failure
