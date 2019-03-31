// MESSAGE ROBOT_DIMENSIONS support class

#pragma once

namespace mavlink {
namespace autobot {
namespace msg {

/**
 * @brief ROBOT_DIMENSIONS message
 *
 * Robot Dimensions
 */
struct ROBOT_DIMENSIONS : mavlink::Message {
    static constexpr msgid_t MSG_ID = 3;
    static constexpr size_t LENGTH = 8;
    static constexpr size_t MIN_LENGTH = 8;
    static constexpr uint8_t CRC_EXTRA = 107;
    static constexpr auto NAME = "ROBOT_DIMENSIONS";


    float wheel_radius; /*<  Raduis of wheels */
    float distance_bw_wheels; /*<  Distance between wheels */


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
        ss << "  wheel_radius: " << wheel_radius << std::endl;
        ss << "  distance_bw_wheels: " << distance_bw_wheels << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << wheel_radius;                  // offset: 0
        map << distance_bw_wheels;            // offset: 4
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> wheel_radius;                  // offset: 0
        map >> distance_bw_wheels;            // offset: 4
    }
};

} // namespace msg
} // namespace autobot
} // namespace mavlink
