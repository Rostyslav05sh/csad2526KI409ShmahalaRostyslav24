@echo off
setlocal enabledelayedexpansion

REM Створення каталогу білдування
if not exist build (
    mkdir build
)
cd build

REM Конфігурування проекту за допомогою CMake
cmake ..

REM Білдування проєкту
cmake --build .

REM Запуск тестів через CTest
ctest --output-on-failure
