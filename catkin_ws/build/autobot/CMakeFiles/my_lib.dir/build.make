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
include autobot/CMakeFiles/my_lib.dir/depend.make

# Include the progress variables for this target.
include autobot/CMakeFiles/my_lib.dir/progress.make

# Include the compile flags for this target's objects.
include autobot/CMakeFiles/my_lib.dir/flags.make

autobot/CMakeFiles/my_lib.dir/src/mavlink_communication.cpp.o: autobot/CMakeFiles/my_lib.dir/flags.make
autobot/CMakeFiles/my_lib.dir/src/mavlink_communication.cpp.o: /home/chirag/catkin_ws/src/autobot/src/mavlink_communication.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chirag/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object autobot/CMakeFiles/my_lib.dir/src/mavlink_communication.cpp.o"
	cd /home/chirag/catkin_ws/build/autobot && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_lib.dir/src/mavlink_communication.cpp.o -c /home/chirag/catkin_ws/src/autobot/src/mavlink_communication.cpp

autobot/CMakeFiles/my_lib.dir/src/mavlink_communication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_lib.dir/src/mavlink_communication.cpp.i"
	cd /home/chirag/catkin_ws/build/autobot && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chirag/catkin_ws/src/autobot/src/mavlink_communication.cpp > CMakeFiles/my_lib.dir/src/mavlink_communication.cpp.i

autobot/CMakeFiles/my_lib.dir/src/mavlink_communication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_lib.dir/src/mavlink_communication.cpp.s"
	cd /home/chirag/catkin_ws/build/autobot && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chirag/catkin_ws/src/autobot/src/mavlink_communication.cpp -o CMakeFiles/my_lib.dir/src/mavlink_communication.cpp.s

autobot/CMakeFiles/my_lib.dir/src/mavlink_communication.cpp.o.requires:

.PHONY : autobot/CMakeFiles/my_lib.dir/src/mavlink_communication.cpp.o.requires

autobot/CMakeFiles/my_lib.dir/src/mavlink_communication.cpp.o.provides: autobot/CMakeFiles/my_lib.dir/src/mavlink_communication.cpp.o.requires
	$(MAKE) -f autobot/CMakeFiles/my_lib.dir/build.make autobot/CMakeFiles/my_lib.dir/src/mavlink_communication.cpp.o.provides.build
.PHONY : autobot/CMakeFiles/my_lib.dir/src/mavlink_communication.cpp.o.provides

autobot/CMakeFiles/my_lib.dir/src/mavlink_communication.cpp.o.provides.build: autobot/CMakeFiles/my_lib.dir/src/mavlink_communication.cpp.o


autobot/CMakeFiles/my_lib.dir/src/serial_port.cpp.o: autobot/CMakeFiles/my_lib.dir/flags.make
autobot/CMakeFiles/my_lib.dir/src/serial_port.cpp.o: /home/chirag/catkin_ws/src/autobot/src/serial_port.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chirag/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object autobot/CMakeFiles/my_lib.dir/src/serial_port.cpp.o"
	cd /home/chirag/catkin_ws/build/autobot && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_lib.dir/src/serial_port.cpp.o -c /home/chirag/catkin_ws/src/autobot/src/serial_port.cpp

autobot/CMakeFiles/my_lib.dir/src/serial_port.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_lib.dir/src/serial_port.cpp.i"
	cd /home/chirag/catkin_ws/build/autobot && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chirag/catkin_ws/src/autobot/src/serial_port.cpp > CMakeFiles/my_lib.dir/src/serial_port.cpp.i

autobot/CMakeFiles/my_lib.dir/src/serial_port.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_lib.dir/src/serial_port.cpp.s"
	cd /home/chirag/catkin_ws/build/autobot && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chirag/catkin_ws/src/autobot/src/serial_port.cpp -o CMakeFiles/my_lib.dir/src/serial_port.cpp.s

autobot/CMakeFiles/my_lib.dir/src/serial_port.cpp.o.requires:

.PHONY : autobot/CMakeFiles/my_lib.dir/src/serial_port.cpp.o.requires

autobot/CMakeFiles/my_lib.dir/src/serial_port.cpp.o.provides: autobot/CMakeFiles/my_lib.dir/src/serial_port.cpp.o.requires
	$(MAKE) -f autobot/CMakeFiles/my_lib.dir/build.make autobot/CMakeFiles/my_lib.dir/src/serial_port.cpp.o.provides.build
.PHONY : autobot/CMakeFiles/my_lib.dir/src/serial_port.cpp.o.provides

autobot/CMakeFiles/my_lib.dir/src/serial_port.cpp.o.provides.build: autobot/CMakeFiles/my_lib.dir/src/serial_port.cpp.o


# Object files for target my_lib
my_lib_OBJECTS = \
"CMakeFiles/my_lib.dir/src/mavlink_communication.cpp.o" \
"CMakeFiles/my_lib.dir/src/serial_port.cpp.o"

# External object files for target my_lib
my_lib_EXTERNAL_OBJECTS =

/home/chirag/catkin_ws/devel/lib/libmy_lib.so: autobot/CMakeFiles/my_lib.dir/src/mavlink_communication.cpp.o
/home/chirag/catkin_ws/devel/lib/libmy_lib.so: autobot/CMakeFiles/my_lib.dir/src/serial_port.cpp.o
/home/chirag/catkin_ws/devel/lib/libmy_lib.so: autobot/CMakeFiles/my_lib.dir/build.make
/home/chirag/catkin_ws/devel/lib/libmy_lib.so: autobot/CMakeFiles/my_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chirag/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library /home/chirag/catkin_ws/devel/lib/libmy_lib.so"
	cd /home/chirag/catkin_ws/build/autobot && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
autobot/CMakeFiles/my_lib.dir/build: /home/chirag/catkin_ws/devel/lib/libmy_lib.so

.PHONY : autobot/CMakeFiles/my_lib.dir/build

autobot/CMakeFiles/my_lib.dir/requires: autobot/CMakeFiles/my_lib.dir/src/mavlink_communication.cpp.o.requires
autobot/CMakeFiles/my_lib.dir/requires: autobot/CMakeFiles/my_lib.dir/src/serial_port.cpp.o.requires

.PHONY : autobot/CMakeFiles/my_lib.dir/requires

autobot/CMakeFiles/my_lib.dir/clean:
	cd /home/chirag/catkin_ws/build/autobot && $(CMAKE_COMMAND) -P CMakeFiles/my_lib.dir/cmake_clean.cmake
.PHONY : autobot/CMakeFiles/my_lib.dir/clean

autobot/CMakeFiles/my_lib.dir/depend:
	cd /home/chirag/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chirag/catkin_ws/src /home/chirag/catkin_ws/src/autobot /home/chirag/catkin_ws/build /home/chirag/catkin_ws/build/autobot /home/chirag/catkin_ws/build/autobot/CMakeFiles/my_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : autobot/CMakeFiles/my_lib.dir/depend

