cmake_minimum_required(VERSION 2.8.3)
project(autobotx)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  roscpp
  rospy
  std_msgs
  genmsg
)


# find_package(Boost REQUIRED COMPONENTS system)


## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html
#catkin_python_setup()



add_message_files(
 FILES
 Unicycle.msg
)

generate_messages(
 DEPENDENCIES
 geometry_msgs  std_msgs
 )


 include_directories(include
   ${catkin_INCLUDE_DIRS}    #this will include ros.h directory and other .h files
   src
 )

 add_library(my_libs
   src/mavlink_communication.cpp
   src/serial_port.cpp
 )

catkin_package(
  INCLUDE_DIRS include
  LIBRARIES my_libs
  CATKIN_DEPENDS message_runtime geometry_msgs roscpp rospy std_msgs
)








install(TARGETS my_libs
   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
   RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
 )

 install(DIRECTORY include
   DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
   FILES_MATCHING PATTERN "*.h"
   PATTERN ".svn" EXCLUDE
 )


 add_executable(link src/link.cpp)
 #target_link_libraries(listner src/mavlink_communication.cpp )
 target_link_libraries(link ${catkin_LIBRARIES}  my_libs)
 add_dependencies(link autobot_generate_messages_cpp)

## Mark executable scripts (Python etc.) for installation
## in contrast to setup.py, you can choose the destination
 install(PROGRAMS
 #src/teleop.py
 scripts/teleop_keys.py
 scripts/reader.py
   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
 )


# Mark other files for installation (e.g. launch and bag files, etc.)
install(FILES
#src/teleop.py
scripts/teleop_keys.py
scripts/reader.py

   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
 )
