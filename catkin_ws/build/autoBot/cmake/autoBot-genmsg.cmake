# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "autoBot: 1 messages, 0 services")

set(MSG_I_FLAGS "-IautoBot:/home/chirag/catkin_ws/src/autoBot/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(autoBot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chirag/catkin_ws/src/autoBot/msg/Unicycle.msg" NAME_WE)
add_custom_target(_autoBot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoBot" "/home/chirag/catkin_ws/src/autoBot/msg/Unicycle.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(autoBot
  "/home/chirag/catkin_ws/src/autoBot/msg/Unicycle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoBot
)

### Generating Services

### Generating Module File
_generate_module_cpp(autoBot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoBot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(autoBot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(autoBot_generate_messages autoBot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chirag/catkin_ws/src/autoBot/msg/Unicycle.msg" NAME_WE)
add_dependencies(autoBot_generate_messages_cpp _autoBot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autoBot_gencpp)
add_dependencies(autoBot_gencpp autoBot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autoBot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(autoBot
  "/home/chirag/catkin_ws/src/autoBot/msg/Unicycle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoBot
)

### Generating Services

### Generating Module File
_generate_module_eus(autoBot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoBot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(autoBot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(autoBot_generate_messages autoBot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chirag/catkin_ws/src/autoBot/msg/Unicycle.msg" NAME_WE)
add_dependencies(autoBot_generate_messages_eus _autoBot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autoBot_geneus)
add_dependencies(autoBot_geneus autoBot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autoBot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(autoBot
  "/home/chirag/catkin_ws/src/autoBot/msg/Unicycle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoBot
)

### Generating Services

### Generating Module File
_generate_module_lisp(autoBot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoBot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(autoBot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(autoBot_generate_messages autoBot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chirag/catkin_ws/src/autoBot/msg/Unicycle.msg" NAME_WE)
add_dependencies(autoBot_generate_messages_lisp _autoBot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autoBot_genlisp)
add_dependencies(autoBot_genlisp autoBot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autoBot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(autoBot
  "/home/chirag/catkin_ws/src/autoBot/msg/Unicycle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoBot
)

### Generating Services

### Generating Module File
_generate_module_nodejs(autoBot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoBot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(autoBot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(autoBot_generate_messages autoBot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chirag/catkin_ws/src/autoBot/msg/Unicycle.msg" NAME_WE)
add_dependencies(autoBot_generate_messages_nodejs _autoBot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autoBot_gennodejs)
add_dependencies(autoBot_gennodejs autoBot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autoBot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(autoBot
  "/home/chirag/catkin_ws/src/autoBot/msg/Unicycle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoBot
)

### Generating Services

### Generating Module File
_generate_module_py(autoBot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoBot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(autoBot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(autoBot_generate_messages autoBot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chirag/catkin_ws/src/autoBot/msg/Unicycle.msg" NAME_WE)
add_dependencies(autoBot_generate_messages_py _autoBot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autoBot_genpy)
add_dependencies(autoBot_genpy autoBot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autoBot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoBot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoBot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(autoBot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoBot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoBot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(autoBot_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoBot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoBot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(autoBot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoBot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoBot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(autoBot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoBot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoBot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoBot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(autoBot_generate_messages_py std_msgs_generate_messages_py)
endif()
