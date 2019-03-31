cmake_minimum_required(VERSION 2.8.3)
project(autobot)

find_package(catkin REQUIRED COMPONENTS genmsg message_generation std_msgs roscpp rospy)  #packages for building

include_directories(include
${catkin_INCLUDE_DIRS}
src

)   #this will include ros.h directory and other .h files


add_message_files(FILES Unicycle.msg )
generate_messages(DEPENDENCIES std_msgs)
catkin_package(CATKIN_DEPENDS message_runtime std_msgs )


add_library(my_lib
src/mavlink_communication.cpp
src/serial_port.cpp

)
catkin_package (
   INCLUDE_DIRS include
   LIBRARIES my_lib
   CATKIN_DEPENDS roscpp rospy std_msgs

)

install(TARGETS my_lib
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
target_link_libraries(link ${catkin_LIBRARIES}  my_lib)
add_dependencies(link autobot_generate_messages_cpp)

catkin_install_python(PROGRAMS
  scripts/reader.py
  scripts/teleop.py
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/scripts
)
