# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/chirag/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chirag/catkin_ws/build

# Include any dependencies generated for this target.
include autobotx/CMakeFiles/my_libs.dir/depend.make

# Include the progress variables for this target.
include autobotx/CMakeFiles/my_libs.dir/progress.make

# Include the compile flags for this target's objects.
include autobotx/CMakeFiles/my_libs.dir/flags.make

autobotx/CMakeFiles/my_libs.dir/src/mavlink_communication.cpp.o: autobotx/CMakeFiles/my_libs.dir/flags.make
autobotx/CMakeFiles/my_libs.dir/src/mavlink_communication.cpp.o: /home/chirag/catkin_ws/src/autobotx/src/mavlink_communication.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chirag/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object autobotx/CMakeFiles/my_libs.dir/src/mavlink_communication.cpp.o"
	cd /home/chirag/catkin_ws/build/autobotx && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_libs.dir/src/mavlink_communication.cpp.o -c /home/chirag/catkin_ws/src/autobotx/src/mavlink_communication.cpp

autobotx/CMakeFiles/my_libs.dir/src/mavlink_communication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_libs.dir/src/mavlink_communication.cpp.i"
	cd /home/chirag/catkin_ws/build/autobotx && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chirag/catkin_ws/src/autobotx/src/mavlink_communication.cpp > CMakeFiles/my_libs.dir/src/mavlink_communication.cpp.i

autobotx/CMakeFiles/my_libs.dir/src/mavlink_communication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_libs.dir/src/mavlink_communication.cpp.s"
	cd /home/chirag/catkin_ws/build/autobotx && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chirag/catkin_ws/src/autobotx/src/mavlink_communication.cpp -o CMakeFiles/my_libs.dir/src/mavlink_communication.cpp.s

autobotx/CMakeFiles/my_libs.dir/src/mavlink_communication.cpp.o.requires:

.PHONY : autobotx/CMakeFiles/my_libs.dir/src/mavlink_communication.cpp.o.requires

autobotx/CMakeFiles/my_libs.dir/src/mavlink_communication.cpp.o.provides: autobotx/CMakeFiles/my_libs.dir/src/mavlink_communication.cpp.o.requires
	$(MAKE) -f autobotx/CMakeFiles/my_libs.dir/build.make autobotx/CMakeFiles/my_libs.dir/src/mavlink_communication.cpp.o.provides.build
.PHONY : autobotx/CMakeFiles/my_libs.dir/src/mavlink_communication.cpp.o.provides

autobotx/CMakeFiles/my_libs.dir/src/mavlink_communication.cpp.o.provides.build: autobotx/CMakeFiles/my_libs.dir/src/mavlink_communication.cpp.o


autobotx/CMakeFiles/my_libs.dir/src/serial_port.cpp.o: autobotx/CMakeFiles/my_libs.dir/flags.make
autobotx/CMakeFiles/my_libs.dir/src/serial_port.cpp.o: /home/chirag/catkin_ws/src/autobotx/src/serial_port.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chirag/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object autobotx/CMakeFiles/my_libs.dir/src/serial_port.cpp.o"
	cd /home/chirag/catkin_ws/build/autobotx && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_libs.dir/src/serial_port.cpp.o -c /home/chirag/catkin_ws/src/autobotx/src/serial_port.cpp

autobotx/CMakeFiles/my_libs.dir/src/serial_port.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_libs.dir/src/serial_port.cpp.i"
	cd /home/chirag/catkin_ws/build/autobotx && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chirag/catkin_ws/src/autobotx/src/serial_port.cpp > CMakeFiles/my_libs.dir/src/serial_port.cpp.i

autobotx/CMakeFiles/my_libs.dir/src/serial_port.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_libs.dir/src/serial_port.cpp.s"
	cd /home/chirag/catkin_ws/build/autobotx && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chirag/catkin_ws/src/autobotx/src/serial_port.cpp -o CMakeFiles/my_libs.dir/src/serial_port.cpp.s

autobotx/CMakeFiles/my_libs.dir/src/serial_port.cpp.o.requires:

.PHONY : autobotx/CMakeFiles/my_libs.dir/src/serial_port.cpp.o.requires

autobotx/CMakeFiles/my_libs.dir/src/serial_port.cpp.o.provides: autobotx/CMakeFiles/my_libs.dir/src/serial_port.cpp.o.requires
	$(MAKE) -f autobotx/CMakeFiles/my_libs.dir/build.make autobotx/CMakeFiles/my_libs.dir/src/serial_port.cpp.o.provides.build
.PHONY : autobotx/CMakeFiles/my_libs.dir/src/serial_port.cpp.o.provides

autobotx/CMakeFiles/my_libs.dir/src/serial_port.cpp.o.provides.build: autobotx/CMakeFiles/my_libs.dir/src/serial_port.cpp.o


# Object files for target my_libs
my_libs_OBJECTS = \
"CMakeFiles/my_libs.dir/src/mavlink_communication.cpp.o" \
"CMakeFiles/my_libs.dir/src/serial_port.cpp.o"

# External object files for target my_libs
my_libs_EXTERNAL_OBJECTS =

/home/chirag/catkin_ws/devel/lib/libmy_libs.so: autobotx/CMakeFiles/my_libs.dir/src/mavlink_communication.cpp.o
/home/chirag/catkin_ws/devel/lib/libmy_libs.so: autobotx/CMakeFiles/my_libs.dir/src/serial_port.cpp.o
/home/chirag/catkin_ws/devel/lib/libmy_libs.so: autobotx/CMakeFiles/my_libs.dir/build.make
/home/chirag/catkin_ws/devel/lib/libmy_libs.so: autobotx/CMakeFiles/my_libs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chirag/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library /home/chirag/catkin_ws/devel/lib/libmy_libs.so"
	cd /home/chirag/catkin_ws/build/autobotx && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_libs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
autobotx/CMakeFiles/my_libs.dir/build: /home/chirag/catkin_ws/devel/lib/libmy_libs.so

.PHONY : autobotx/CMakeFiles/my_libs.dir/build

autobotx/CMakeFiles/my_libs.dir/requires: autobotx/CMakeFiles/my_libs.dir/src/mavlink_communication.cpp.o.requires
autobotx/CMakeFiles/my_libs.dir/requires: autobotx/CMakeFiles/my_libs.dir/src/serial_port.cpp.o.requires

.PHONY : autobotx/CMakeFiles/my_libs.dir/requires

autobotx/CMakeFiles/my_libs.dir/clean:
	cd /home/chirag/catkin_ws/build/autobotx && $(CMAKE_COMMAND) -P CMakeFiles/my_libs.dir/cmake_clean.cmake
.PHONY : autobotx/CMakeFiles/my_libs.dir/clean

autobotx/CMakeFiles/my_libs.dir/depend:
	cd /home/chirag/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chirag/catkin_ws/src /home/chirag/catkin_ws/src/autobotx /home/chirag/catkin_ws/build /home/chirag/catkin_ws/build/autobotx /home/chirag/catkin_ws/build/autobotx/CMakeFiles/my_libs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : autobotx/CMakeFiles/my_libs.dir/depend
