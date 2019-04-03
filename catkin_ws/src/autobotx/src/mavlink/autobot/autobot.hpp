/** @file
 *	@brief MAVLink comm protocol generated from autobot.xml
 *	@see http://mavlink.org
 */

#pragma once

#include <array>
#include <cstdint>
#include <sstream>

#ifndef MAVLINK_STX
#define MAVLINK_STX 253
#endif

#include "../message.hpp"

namespace mavlink {
namespace autobot {

/**
 * Array of msg_entry needed for @p mavlink_parse_char() (trought @p mavlink_get_msg_entry())
 */
constexpr std::array<mavlink_msg_entry_t, 9> MESSAGE_ENTRIES {{ {1, 119, 12, 0, 0, 0}, {2, 87, 12, 0, 0, 0}, {3, 107, 8, 0, 0, 0}, {31, 154, 8, 0, 0, 0}, {32, 154, 8, 0, 0, 0}, {101, 35, 9, 0, 0, 0}, {131, 90, 12, 0, 0, 0}, {132, 3, 12, 0, 0, 0}, {133, 28, 10, 0, 0, 0} }};

//! MAVLINK VERSION
constexpr auto MAVLINK_VERSION = 1;


// ENUM DEFINITIONS




} // namespace autobot
} // namespace mavlink

// MESSAGE DEFINITIONS
#include "./mavlink_msg_left_wheel_pid_gains.hpp"
#include "./mavlink_msg_right_wheel_pid_gains.hpp"
#include "./mavlink_msg_robot_dimensions.hpp"
#include "./mavlink_msg_desire_wheel_rpm.hpp"
#include "./mavlink_msg_desire_cmd_val.hpp"
#include "./mavlink_msg_initial_status.hpp"
#include "./mavlink_msg_robot_position_change.hpp"
#include "./mavlink_msg_robot_sensor_readings.hpp"
#include "./mavlink_msg_robot_distance_sensor_readings.hpp"

// base include

