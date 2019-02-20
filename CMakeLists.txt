cmake_minimum_required(VERSION 3.4.1)

project(integer_decoder C CXX)

include(source_files.cmake)

set(ICONV_LIBS ${CMAKE_SOURCE_DIR}/NativeLibraries/iconv)
set(OPENCV_LIBS ${CMAKE_SOURCE_DIR}/NativeLibraries/opencv)

add_compile_options(
        -Wno-multichar
        -DANDROID
        -DLIBDIR="c"
        -DIN_LIBRARY
)