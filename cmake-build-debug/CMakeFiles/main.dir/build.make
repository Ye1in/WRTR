# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/yl/clion-2017.3.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/yl/clion-2017.3.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yl/CLionProjects/WPTR

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yl/CLionProjects/WPTR/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/main.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.dir/flags.make

CMakeFiles/main.dir/src/main.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yl/CLionProjects/WPTR/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/main.cpp.o -c /home/yl/CLionProjects/WPTR/src/main.cpp

CMakeFiles/main.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yl/CLionProjects/WPTR/src/main.cpp > CMakeFiles/main.dir/src/main.cpp.i

CMakeFiles/main.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yl/CLionProjects/WPTR/src/main.cpp -o CMakeFiles/main.dir/src/main.cpp.s

CMakeFiles/main.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/main.dir/src/main.cpp.o.requires

CMakeFiles/main.dir/src/main.cpp.o.provides: CMakeFiles/main.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/main.cpp.o.provides

CMakeFiles/main.dir/src/main.cpp.o.provides.build: CMakeFiles/main.dir/src/main.cpp.o


# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/src/main.cpp.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

main: CMakeFiles/main.dir/src/main.cpp.o
main: CMakeFiles/main.dir/build.make
main: /usr/local/lib/libopencv_cudabgsegm.so.3.4.0
main: /usr/local/lib/libopencv_cudaobjdetect.so.3.4.0
main: /usr/local/lib/libopencv_cudastereo.so.3.4.0
main: /usr/local/lib/libopencv_dnn.so.3.4.0
main: /usr/local/lib/libopencv_ml.so.3.4.0
main: /usr/local/lib/libopencv_shape.so.3.4.0
main: /usr/local/lib/libopencv_stitching.so.3.4.0
main: /usr/local/lib/libopencv_superres.so.3.4.0
main: /usr/local/lib/libopencv_videostab.so.3.4.0
main: /usr/local/lib/libopencv_cudafeatures2d.so.3.4.0
main: /usr/local/lib/libopencv_cudacodec.so.3.4.0
main: /usr/local/lib/libopencv_cudaoptflow.so.3.4.0
main: /usr/local/lib/libopencv_cudalegacy.so.3.4.0
main: /usr/local/lib/libopencv_calib3d.so.3.4.0
main: /usr/local/lib/libopencv_cudawarping.so.3.4.0
main: /usr/local/lib/libopencv_features2d.so.3.4.0
main: /usr/local/lib/libopencv_flann.so.3.4.0
main: /usr/local/lib/libopencv_highgui.so.3.4.0
main: /usr/local/lib/libopencv_objdetect.so.3.4.0
main: /usr/local/lib/libopencv_photo.so.3.4.0
main: /usr/local/lib/libopencv_cudaimgproc.so.3.4.0
main: /usr/local/lib/libopencv_cudafilters.so.3.4.0
main: /usr/local/lib/libopencv_cudaarithm.so.3.4.0
main: /usr/local/lib/libopencv_video.so.3.4.0
main: /usr/local/lib/libopencv_videoio.so.3.4.0
main: /usr/local/lib/libopencv_imgcodecs.so.3.4.0
main: /usr/local/lib/libopencv_imgproc.so.3.4.0
main: /usr/local/lib/libopencv_core.so.3.4.0
main: /usr/local/lib/libopencv_cudev.so.3.4.0
main: CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yl/CLionProjects/WPTR/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable main"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.dir/build: main

.PHONY : CMakeFiles/main.dir/build

CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/main.cpp.o.requires

.PHONY : CMakeFiles/main.dir/requires

CMakeFiles/main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.dir/clean

CMakeFiles/main.dir/depend:
	cd /home/yl/CLionProjects/WPTR/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yl/CLionProjects/WPTR /home/yl/CLionProjects/WPTR /home/yl/CLionProjects/WPTR/cmake-build-debug /home/yl/CLionProjects/WPTR/cmake-build-debug /home/yl/CLionProjects/WPTR/cmake-build-debug/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main.dir/depend

