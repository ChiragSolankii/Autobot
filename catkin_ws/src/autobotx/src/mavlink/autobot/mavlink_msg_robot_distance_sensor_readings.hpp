// MESSAGE ROBOT_DISTANCE_SENSOR_READINGS support class

#pragma once

namespace mavlink {
namespace autobot {
namespace msg {

/**
 * @brief ROBOT_DISTANCE_SENSOR_READINGS message
 *
 * Data of ultrasonic distance sensors
 */
struct ROBOT_DISTANCE_SENSOR_READINGS : mavlink::Message {
    static constexpr msgid_t MSG_ID = 133;
    static constexpr size_t LENGTH = 10;
    static constexpr size_t MIN_LENGTH = 10;
    static constexpr uint8_t CRC_EXTRA = 28;
    static constexpr auto NAME = "ROBOT_DISTANCE_SENSOR_READINGS";


    std::array<uint16_t, 5> ultrasonic_readings; /*<  reading of five ultrasonic sensors, from right to left */


    inline std::string get_name(void) const override
    {
            return NAME;
    }

    inline Info get_message_info(void) const override
    {
            return { MSG_ID, LENGTH, MIN_LENGTH, CRC_EXTRA };
    }

    inline std::string to_yaml(void) const override
    {
        std::stringstream ss;

        ss << NAME << ":" << std::endl;
        ss << "  ultrasonic_readings: [" << to_string(ultrasonic_readings) << "]" << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << ultrasonic_readings;           // offset: 0
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> ultrasonic_readings;           // offset: 0
    }
};

} // namespace msg
} // namespace autobot
} // namespace mavlink
