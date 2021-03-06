cmake_minimum_required(VERSION 3.8)
project(ur5_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(moveit_msgs REQUIRED)

set(srv_files
  srv/plc_srvs/AlarmSignals.srv
  srv/plc_srvs/MoveToAisle.srv
  srv/plc_srvs/MoveHorizontal.srv
  srv/plc_srvs/MoveVertical.srv
  srv/plc_srvs/PlcCommand.srv
  srv/plc_srvs/SetAisle.srv
  srv/plc_srvs/GetAisle.srv

  srv/Locations.srv
  srv/Pick.srv
  srv/PickHome.srv
  srv/PickHome2Place.srv
  srv/Place2PickHome.srv
  srv/VisionEngineMode.srv
  srv/Mission.srv
  srv/Order.srv
  srv/GoToGoal.srv

  srv/MotorStatus.srv
  srv/PositionControl.srv
  srv/PushPullArmControl.srv
  srv/OrderFile.srv
  srv/GetArmPlan.srv
  srv/GetCurrentJointState.srv
  srv/ExecuteTrajectory.srv
  srv/TfService.srv
  srv/BlendTrajectories.srv
)

set(msg_files
  msg/ErrorCodes.msg
  msg/PlanningInfo.msg
  msg/Bucket.msg
  msg/MissionStatus.msg
  msg/RobotStatus.msg
  msg/Sku.msg
  msg/SkuCurrent.msg
  msg/SkuSkipped.msg
  msg/OrderStatus.msg
  msg/Order.msg
  msg/OrderFile.msg
  msg/OrderFileList.msg
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${srv_files}
  DEPENDENCIES builtin_interfaces geometry_msgs moveit_msgs
  ADD_LINTER_TESTS
)

install(
  FILES message_mappings.yaml
  DESTINATION share/${PROJECT_NAME})

ament_export_dependencies(rosidl_default_runtime)

ament_package()
