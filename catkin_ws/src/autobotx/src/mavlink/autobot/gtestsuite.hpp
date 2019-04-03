/** @file
 *	@brief MAVLink comm testsuite protocol generated from autobot.xml
 *	@see http://mavlink.org
 */

#pragma once

#include <gtest/gtest.h>
#include "autobot.hpp"

#ifdef TEST_INTEROP
using namespace mavlink;
#undef MAVLINK_HELPER
#include "mavlink.h"
#endif


TEST(autobot, LEFT_WHEEL_PID_GAINS)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::autobot::msg::LEFT_WHEEL_PID_GAINS packet_in{};
    packet_in.Kp = 17.0;
    packet_in.Ki = 45.0;
    packet_in.Kd = 73.0;

    mavlink::autobot::msg::LEFT_WHEEL_PID_GAINS packet1{};
    mavlink::autobot::msg::LEFT_WHEEL_PID_GAINS packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.Kp, packet2.Kp);
    EXPECT_EQ(packet1.Ki, packet2.Ki);
    EXPECT_EQ(packet1.Kd, packet2.Kd);
}

#ifdef TEST_INTEROP
TEST(autobot_interop, LEFT_WHEEL_PID_GAINS)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_left_wheel_pid_gains_t packet_c {
         17.0, 45.0, 73.0
    };

    mavlink::autobot::msg::LEFT_WHEEL_PID_GAINS packet_in{};
    packet_in.Kp = 17.0;
    packet_in.Ki = 45.0;
    packet_in.Kd = 73.0;

    mavlink::autobot::msg::LEFT_WHEEL_PID_GAINS packet2{};

    mavlink_msg_left_wheel_pid_gains_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.Kp, packet2.Kp);
    EXPECT_EQ(packet_in.Ki, packet2.Ki);
    EXPECT_EQ(packet_in.Kd, packet2.Kd);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(autobot, RIGHT_WHEEL_PID_GAINS)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::autobot::msg::RIGHT_WHEEL_PID_GAINS packet_in{};
    packet_in.Kp = 17.0;
    packet_in.Ki = 45.0;
    packet_in.Kd = 73.0;

    mavlink::autobot::msg::RIGHT_WHEEL_PID_GAINS packet1{};
    mavlink::autobot::msg::RIGHT_WHEEL_PID_GAINS packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.Kp, packet2.Kp);
    EXPECT_EQ(packet1.Ki, packet2.Ki);
    EXPECT_EQ(packet1.Kd, packet2.Kd);
}

#ifdef TEST_INTEROP
TEST(autobot_interop, RIGHT_WHEEL_PID_GAINS)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_right_wheel_pid_gains_t packet_c {
         17.0, 45.0, 73.0
    };

    mavlink::autobot::msg::RIGHT_WHEEL_PID_GAINS packet_in{};
    packet_in.Kp = 17.0;
    packet_in.Ki = 45.0;
    packet_in.Kd = 73.0;

    mavlink::autobot::msg::RIGHT_WHEEL_PID_GAINS packet2{};

    mavlink_msg_right_wheel_pid_gains_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.Kp, packet2.Kp);
    EXPECT_EQ(packet_in.Ki, packet2.Ki);
    EXPECT_EQ(packet_in.Kd, packet2.Kd);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(autobot, ROBOT_DIMENSIONS)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::autobot::msg::ROBOT_DIMENSIONS packet_in{};
    packet_in.wheel_radius = 17.0;
    packet_in.distance_bw_wheels = 45.0;

    mavlink::autobot::msg::ROBOT_DIMENSIONS packet1{};
    mavlink::autobot::msg::ROBOT_DIMENSIONS packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.wheel_radius, packet2.wheel_radius);
    EXPECT_EQ(packet1.distance_bw_wheels, packet2.distance_bw_wheels);
}

#ifdef TEST_INTEROP
TEST(autobot_interop, ROBOT_DIMENSIONS)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_robot_dimensions_t packet_c {
         17.0, 45.0
    };

    mavlink::autobot::msg::ROBOT_DIMENSIONS packet_in{};
    packet_in.wheel_radius = 17.0;
    packet_in.distance_bw_wheels = 45.0;

    mavlink::autobot::msg::ROBOT_DIMENSIONS packet2{};

    mavlink_msg_robot_dimensions_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.wheel_radius, packet2.wheel_radius);
    EXPECT_EQ(packet_in.distance_bw_wheels, packet2.distance_bw_wheels);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(autobot, DESIRE_WHEEL_RPM)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::autobot::msg::DESIRE_WHEEL_RPM packet_in{};
    packet_in.left_wheel_rpm = 17.0;
    packet_in.right_wheel_rpm = 45.0;

    mavlink::autobot::msg::DESIRE_WHEEL_RPM packet1{};
    mavlink::autobot::msg::DESIRE_WHEEL_RPM packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.left_wheel_rpm, packet2.left_wheel_rpm);
    EXPECT_EQ(packet1.right_wheel_rpm, packet2.right_wheel_rpm);
}

#ifdef TEST_INTEROP
TEST(autobot_interop, DESIRE_WHEEL_RPM)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_desire_wheel_rpm_t packet_c {
         17.0, 45.0
    };

    mavlink::autobot::msg::DESIRE_WHEEL_RPM packet_in{};
    packet_in.left_wheel_rpm = 17.0;
    packet_in.right_wheel_rpm = 45.0;

    mavlink::autobot::msg::DESIRE_WHEEL_RPM packet2{};

    mavlink_msg_desire_wheel_rpm_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.left_wheel_rpm, packet2.left_wheel_rpm);
    EXPECT_EQ(packet_in.right_wheel_rpm, packet2.right_wheel_rpm);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(autobot, DESIRE_CMD_VAL)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::autobot::msg::DESIRE_CMD_VAL packet_in{};
    packet_in.v = 17.0;
    packet_in.w = 45.0;

    mavlink::autobot::msg::DESIRE_CMD_VAL packet1{};
    mavlink::autobot::msg::DESIRE_CMD_VAL packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.v, packet2.v);
    EXPECT_EQ(packet1.w, packet2.w);
}

#ifdef TEST_INTEROP
TEST(autobot_interop, DESIRE_CMD_VAL)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_desire_cmd_val_t packet_c {
         17.0, 45.0
    };

    mavlink::autobot::msg::DESIRE_CMD_VAL packet_in{};
    packet_in.v = 17.0;
    packet_in.w = 45.0;

    mavlink::autobot::msg::DESIRE_CMD_VAL packet2{};

    mavlink_msg_desire_cmd_val_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.v, packet2.v);
    EXPECT_EQ(packet_in.w, packet2.w);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(autobot, INITIAL_STATUS)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::autobot::msg::INITIAL_STATUS packet_in{};
    packet_in.initial_heading = 17.0;
    packet_in.ultrasonic_config = 29;
    packet_in.update_freq = 17443;
    packet_in.encoder_ppr = 17547;

    mavlink::autobot::msg::INITIAL_STATUS packet1{};
    mavlink::autobot::msg::INITIAL_STATUS packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.initial_heading, packet2.initial_heading);
    EXPECT_EQ(packet1.ultrasonic_config, packet2.ultrasonic_config);
    EXPECT_EQ(packet1.update_freq, packet2.update_freq);
    EXPECT_EQ(packet1.encoder_ppr, packet2.encoder_ppr);
}

#ifdef TEST_INTEROP
TEST(autobot_interop, INITIAL_STATUS)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_initial_status_t packet_c {
         17.0, 17443, 17547, 29
    };

    mavlink::autobot::msg::INITIAL_STATUS packet_in{};
    packet_in.initial_heading = 17.0;
    packet_in.ultrasonic_config = 29;
    packet_in.update_freq = 17443;
    packet_in.encoder_ppr = 17547;

    mavlink::autobot::msg::INITIAL_STATUS packet2{};

    mavlink_msg_initial_status_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.initial_heading, packet2.initial_heading);
    EXPECT_EQ(packet_in.ultrasonic_config, packet2.ultrasonic_config);
    EXPECT_EQ(packet_in.update_freq, packet2.update_freq);
    EXPECT_EQ(packet_in.encoder_ppr, packet2.encoder_ppr);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(autobot, ROBOT_POSITION_CHANGE)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::autobot::msg::ROBOT_POSITION_CHANGE packet_in{};
    packet_in.delta_x = 17.0;
    packet_in.delta_y = 45.0;
    packet_in.delta_theta = 73.0;

    mavlink::autobot::msg::ROBOT_POSITION_CHANGE packet1{};
    mavlink::autobot::msg::ROBOT_POSITION_CHANGE packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.delta_x, packet2.delta_x);
    EXPECT_EQ(packet1.delta_y, packet2.delta_y);
    EXPECT_EQ(packet1.delta_theta, packet2.delta_theta);
}

#ifdef TEST_INTEROP
TEST(autobot_interop, ROBOT_POSITION_CHANGE)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_robot_position_change_t packet_c {
         17.0, 45.0, 73.0
    };

    mavlink::autobot::msg::ROBOT_POSITION_CHANGE packet_in{};
    packet_in.delta_x = 17.0;
    packet_in.delta_y = 45.0;
    packet_in.delta_theta = 73.0;

    mavlink::autobot::msg::ROBOT_POSITION_CHANGE packet2{};

    mavlink_msg_robot_position_change_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.delta_x, packet2.delta_x);
    EXPECT_EQ(packet_in.delta_y, packet2.delta_y);
    EXPECT_EQ(packet_in.delta_theta, packet2.delta_theta);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(autobot, ROBOT_SENSOR_READINGS)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::autobot::msg::ROBOT_SENSOR_READINGS packet_in{};
    packet_in.left_wheel_ticks = 963497464;
    packet_in.right_wheel_ticks = 963497672;
    packet_in.curr_heading = 73.0;

    mavlink::autobot::msg::ROBOT_SENSOR_READINGS packet1{};
    mavlink::autobot::msg::ROBOT_SENSOR_READINGS packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.left_wheel_ticks, packet2.left_wheel_ticks);
    EXPECT_EQ(packet1.right_wheel_ticks, packet2.right_wheel_ticks);
    EXPECT_EQ(packet1.curr_heading, packet2.curr_heading);
}

#ifdef TEST_INTEROP
TEST(autobot_interop, ROBOT_SENSOR_READINGS)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_robot_sensor_readings_t packet_c {
         963497464, 963497672, 73.0
    };

    mavlink::autobot::msg::ROBOT_SENSOR_READINGS packet_in{};
    packet_in.left_wheel_ticks = 963497464;
    packet_in.right_wheel_ticks = 963497672;
    packet_in.curr_heading = 73.0;

    mavlink::autobot::msg::ROBOT_SENSOR_READINGS packet2{};

    mavlink_msg_robot_sensor_readings_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.left_wheel_ticks, packet2.left_wheel_ticks);
    EXPECT_EQ(packet_in.right_wheel_ticks, packet2.right_wheel_ticks);
    EXPECT_EQ(packet_in.curr_heading, packet2.curr_heading);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(autobot, ROBOT_DISTANCE_SENSOR_READINGS)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::autobot::msg::ROBOT_DISTANCE_SENSOR_READINGS packet_in{};
    packet_in.ultrasonic_readings = {{ 17235, 17236, 17237, 17238, 17239 }};

    mavlink::autobot::msg::ROBOT_DISTANCE_SENSOR_READINGS packet1{};
    mavlink::autobot::msg::ROBOT_DISTANCE_SENSOR_READINGS packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.ultrasonic_readings, packet2.ultrasonic_readings);
}

#ifdef TEST_INTEROP
TEST(autobot_interop, ROBOT_DISTANCE_SENSOR_READINGS)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_robot_distance_sensor_readings_t packet_c {
         { 17235, 17236, 17237, 17238, 17239 }
    };

    mavlink::autobot::msg::ROBOT_DISTANCE_SENSOR_READINGS packet_in{};
    packet_in.ultrasonic_readings = {{ 17235, 17236, 17237, 17238, 17239 }};

    mavlink::autobot::msg::ROBOT_DISTANCE_SENSOR_READINGS packet2{};

    mavlink_msg_robot_distance_sensor_readings_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.ultrasonic_readings, packet2.ultrasonic_readings);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif
