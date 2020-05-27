# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "serial_cmd: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iserial_cmd:/home/joeyyu/joeyyu-workplane/catkin_serial/src/serial_cmd/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(serial_cmd_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/joeyyu/joeyyu-workplane/catkin_serial/src/serial_cmd/msg/serial.msg" NAME_WE)
add_custom_target(_serial_cmd_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "serial_cmd" "/home/joeyyu/joeyyu-workplane/catkin_serial/src/serial_cmd/msg/serial.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(serial_cmd
  "/home/joeyyu/joeyyu-workplane/catkin_serial/src/serial_cmd/msg/serial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/serial_cmd
)

### Generating Services

### Generating Module File
_generate_module_cpp(serial_cmd
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/serial_cmd
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(serial_cmd_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(serial_cmd_generate_messages serial_cmd_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joeyyu/joeyyu-workplane/catkin_serial/src/serial_cmd/msg/serial.msg" NAME_WE)
add_dependencies(serial_cmd_generate_messages_cpp _serial_cmd_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(serial_cmd_gencpp)
add_dependencies(serial_cmd_gencpp serial_cmd_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS serial_cmd_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(serial_cmd
  "/home/joeyyu/joeyyu-workplane/catkin_serial/src/serial_cmd/msg/serial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/serial_cmd
)

### Generating Services

### Generating Module File
_generate_module_eus(serial_cmd
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/serial_cmd
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(serial_cmd_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(serial_cmd_generate_messages serial_cmd_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joeyyu/joeyyu-workplane/catkin_serial/src/serial_cmd/msg/serial.msg" NAME_WE)
add_dependencies(serial_cmd_generate_messages_eus _serial_cmd_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(serial_cmd_geneus)
add_dependencies(serial_cmd_geneus serial_cmd_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS serial_cmd_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(serial_cmd
  "/home/joeyyu/joeyyu-workplane/catkin_serial/src/serial_cmd/msg/serial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/serial_cmd
)

### Generating Services

### Generating Module File
_generate_module_lisp(serial_cmd
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/serial_cmd
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(serial_cmd_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(serial_cmd_generate_messages serial_cmd_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joeyyu/joeyyu-workplane/catkin_serial/src/serial_cmd/msg/serial.msg" NAME_WE)
add_dependencies(serial_cmd_generate_messages_lisp _serial_cmd_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(serial_cmd_genlisp)
add_dependencies(serial_cmd_genlisp serial_cmd_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS serial_cmd_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(serial_cmd
  "/home/joeyyu/joeyyu-workplane/catkin_serial/src/serial_cmd/msg/serial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/serial_cmd
)

### Generating Services

### Generating Module File
_generate_module_nodejs(serial_cmd
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/serial_cmd
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(serial_cmd_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(serial_cmd_generate_messages serial_cmd_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joeyyu/joeyyu-workplane/catkin_serial/src/serial_cmd/msg/serial.msg" NAME_WE)
add_dependencies(serial_cmd_generate_messages_nodejs _serial_cmd_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(serial_cmd_gennodejs)
add_dependencies(serial_cmd_gennodejs serial_cmd_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS serial_cmd_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(serial_cmd
  "/home/joeyyu/joeyyu-workplane/catkin_serial/src/serial_cmd/msg/serial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/serial_cmd
)

### Generating Services

### Generating Module File
_generate_module_py(serial_cmd
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/serial_cmd
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(serial_cmd_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(serial_cmd_generate_messages serial_cmd_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joeyyu/joeyyu-workplane/catkin_serial/src/serial_cmd/msg/serial.msg" NAME_WE)
add_dependencies(serial_cmd_generate_messages_py _serial_cmd_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(serial_cmd_genpy)
add_dependencies(serial_cmd_genpy serial_cmd_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS serial_cmd_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/serial_cmd)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/serial_cmd
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(serial_cmd_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/serial_cmd)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/serial_cmd
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(serial_cmd_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/serial_cmd)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/serial_cmd
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(serial_cmd_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/serial_cmd)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/serial_cmd
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(serial_cmd_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/serial_cmd)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/serial_cmd\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/serial_cmd
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(serial_cmd_generate_messages_py std_msgs_generate_messages_py)
endif()
