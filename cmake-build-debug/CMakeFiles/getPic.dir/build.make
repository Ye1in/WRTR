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
include CMakeFiles/getPic.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/getPic.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/getPic.dir/flags.make

CMakeFiles/getPic.dir/src/getPic.cpp.o: CMakeFiles/getPic.dir/flags.make
CMakeFiles/getPic.dir/src/getPic.cpp.o: ../src/getPic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yl/CLionProjects/WPTR/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/getPic.dir/src/getPic.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/getPic.dir/src/getPic.cpp.o -c /home/yl/CLionProjects/WPTR/src/getPic.cpp

CMakeFiles/getPic.dir/src/getPic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/getPic.dir/src/getPic.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yl/CLionProjects/WPTR/src/getPic.cpp > CMakeFiles/getPic.dir/src/getPic.cpp.i

CMakeFiles/getPic.dir/src/getPic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/getPic.dir/src/getPic.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yl/CLionProjects/WPTR/src/getPic.cpp -o CMakeFiles/getPic.dir/src/getPic.cpp.s

CMakeFiles/getPic.dir/src/getPic.cpp.o.requires:

.PHONY : CMakeFiles/getPic.dir/src/getPic.cpp.o.requires

CMakeFiles/getPic.dir/src/getPic.cpp.o.provides: CMakeFiles/getPic.dir/src/getPic.cpp.o.requires
	$(MAKE) -f CMakeFiles/getPic.dir/build.make CMakeFiles/getPic.dir/src/getPic.cpp.o.provides.build
.PHONY : CMakeFiles/getPic.dir/src/getPic.cpp.o.provides

CMakeFiles/getPic.dir/src/getPic.cpp.o.provides.build: CMakeFiles/getPic.dir/src/getPic.cpp.o


# Object files for target getPic
getPic_OBJECTS = \
"CMakeFiles/getPic.dir/src/getPic.cpp.o"

# External object files for target getPic
getPic_EXTERNAL_OBJECTS =

getPic: CMakeFiles/getPic.dir/src/getPic.cpp.o
getPic: CMakeFiles/getPic.dir/build.make
getPic: /usr/local/lib/libopencv_cudabgsegm.so.3.4.0
getPic: /usr/local/lib/libopencv_cudaobjdetect.so.3.4.0
getPic: /usr/local/lib/libopencv_cudastereo.so.3.4.0
getPic: /usr/local/lib/libopencv_dnn.so.3.4.0
getPic: /usr/local/lib/libopencv_ml.so.3.4.0
getPic: /usr/local/lib/libopencv_shape.so.3.4.0
getPic: /usr/local/lib/libopencv_stitching.so.3.4.0
getPic: /usr/local/lib/libopencv_superres.so.3.4.0
getPic: /usr/local/lib/libopencv_videostab.so.3.4.0
getPic: /usr/local/lib/libopencv_cudafeatures2d.so.3.4.0
getPic: /usr/local/lib/libopencv_cudacodec.so.3.4.0
getPic: /usr/local/lib/libopencv_cudaoptflow.so.3.4.0
getPic: /usr/local/lib/libopencv_cudalegacy.so.3.4.0
getPic: /usr/local/lib/libopencv_calib3d.so.3.4.0
getPic: /usr/local/lib/libopencv_cudawarping.so.3.4.0
getPic: /usr/local/lib/libopencv_features2d.so.3.4.0
getPic: /usr/local/lib/libopencv_flann.so.3.4.0
getPic: /usr/local/lib/libopencv_highgui.so.3.4.0
getPic: /usr/local/lib/libopencv_objdetect.so.3.4.0
getPic: /usr/local/lib/libopencv_photo.so.3.4.0
getPic: /usr/local/lib/libopencv_cudaimgproc.so.3.4.0
getPic: /usr/local/lib/libopencv_cudafilters.so.3.4.0
getPic: /usr/local/lib/libopencv_cudaarithm.so.3.4.0
getPic: /usr/local/lib/libopencv_video.so.3.4.0
getPic: /usr/local/lib/libopencv_videoio.so.3.4.0
getPic: /usr/local/lib/libopencv_imgcodecs.so.3.4.0
getPic: /usr/local/lib/libopencv_imgproc.so.3.4.0
getPic: /usr/local/lib/libopencv_core.so.3.4.0
getPic: /usr/local/lib/libopencv_cudev.so.3.4.0
getPic: CMakeFiles/getPic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yl/CLionProjects/WPTR/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable getPic"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/getPic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/getPic.dir/build: getPic

.PHONY : CMakeFiles/getPic.dir/build

CMakeFiles/getPic.dir/requires: CMakeFiles/getPic.dir/src/getPic.cpp.o.requires

.PHONY : CMakeFiles/getPic.dir/requires

CMakeFiles/getPic.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/getPic.dir/cmake_clean.cmake
.PHONY : CMakeFiles/getPic.dir/clean

CMakeFiles/getPic.dir/depend:
	cd /home/yl/CLionProjects/WPTR/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yl/CLionProjects/WPTR /home/yl/CLionProjects/WPTR /home/yl/CLionProjects/WPTR/cmake-build-debug /home/yl/CLionProjects/WPTR/cmake-build-debug /home/yl/CLionProjects/WPTR/cmake-build-debug/CMakeFiles/getPic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/getPic.dir/depend

