// MESSAGE ROBOT_SENSOR_READINGS support class

#pragma once

namespace mavlink {
namespace autobot {
namespace msg {

/**
 * @brief ROBOT_SENSOR_READINGS message
 *
 * Data of encoders and heading
 */
struct ROBOT_SENSOR_READINGS : mavlink::Message {
    static constexpr msgid_t MSG_ID = 132;
    static constexpr size_t LENGTH = 12;
    static constexpr size_t MIN_LENGTH = 12;
    static constexpr uint8_t CRC_EXTRA = 3;
    static constexpr auto NAME = "ROBOT_SENSOR_READINGS";


    uint32_t left_wheel_ticks; /*<  left wheel encoder ticks */
    uint32_t right_wheel_ticks; /*<  right wheel encoder ticks */
    float curr_heading; /*<  current heading of robot */


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
        ss << "  left_wheel_ticks: " << left_wheel_ticks << std::endl;
        ss << "  right_wheel_ticks: " << right_wheel_ticks << std::endl;
        ss << "  curr_heading: " << curr_heading << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << left_wheel_ticks;              // offset: 0
        map << right_wheel_ticks;             // offset: 4
        map << curr_heading;                  // offset: 8
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> left_wheel_ticks;              // offset: 0
        map >> right_wheel_ticks;             // offset: 4
        map >> curr_heading;                  // offset: 8
    }
};

} // namespace msg
} // namespace autobot
} // namespace mavlink
