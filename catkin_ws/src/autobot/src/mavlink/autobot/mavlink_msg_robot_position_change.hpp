// MESSAGE ROBOT_POSITION_CHANGE support class

#pragma once

namespace mavlink {
namespace autobot {
namespace msg {

/**
 * @brief ROBOT_POSITION_CHANGE message
 *
 * Change in robot position
 */
struct ROBOT_POSITION_CHANGE : mavlink::Message {
    static constexpr msgid_t MSG_ID = 131;
    static constexpr size_t LENGTH = 12;
    static constexpr size_t MIN_LENGTH = 12;
    static constexpr uint8_t CRC_EXTRA = 90;
    static constexpr auto NAME = "ROBOT_POSITION_CHANGE";


    float delta_x; /*<  change in x */
    float delta_y; /*<  change in y */
    float delta_theta; /*<  change in theta */


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
        ss << "  delta_x: " << delta_x << std::endl;
        ss << "  delta_y: " << delta_y << std::endl;
        ss << "  delta_theta: " << delta_theta << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << delta_x;                       // offset: 0
        map << delta_y;                       // offset: 4
        map << delta_theta;                   // offset: 8
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> delta_x;                       // offset: 0
        map >> delta_y;                       // offset: 4
        map >> delta_theta;                   // offset: 8
    }
};

} // namespace msg
} // namespace autobot
} // namespace mavlink
