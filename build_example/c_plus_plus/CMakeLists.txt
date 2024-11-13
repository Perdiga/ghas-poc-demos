cmake_minimum_required(VERSION 3.12)
project(c_plus_plus)

# Set C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add source files
set(SOURCES
    src/main.cpp
    src/utils/helper.cpp
)

# Add header files
set(HEADERS
    include/helper.h
)

# Add executable target
add_executable(${PROJECT_NAME} ${SOURCES} ${HEADERS})