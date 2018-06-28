cmake_minimum_required(VERSION 2.8)
project( WPTR )

find_package( OpenCV REQUIRED )
find_package( OpenGL )
find_package (Threads)

include_directories (/home/yl/CLionProjects/WPTR/include)
include_directories (/home/yl/CLionProjects/WPTR/api)
link_directories (/home/yl/CLionProjects/WPTR/lib)

if(OPENGL_FOUND)
    include_directories( ${OpenCV_INCLUDE_DIRS} ${OPENGL_INCLUDE_DIRS} )
else()
    include_directories( ${OpenCV_INCLUDE_DIRS} )
endif()
#add_library(libaocr SHARED lib/libaocr_x64.so)
#include_directories()
add_executable( getPic src/getPic.cpp)
add_executable( getCh src/getCh.cpp)
add_executable( Ocr src/Ocr.cpp)
add_executable( main src/main.cpp)


target_link_libraries( main  ${OpenCV_LIBS} lept tesseract ${CMAKE_THREAD_LIBS_INIT})
target_link_libraries( getCh  ${OpenCV_LIBS} lept tesseract)
target_link_libraries( getPic  ${OpenCV_LIBS} lept tesseract)


