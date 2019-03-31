// MESSAGE DESIRE_WHEEL_RPM support class

#pragma once

namespace mavlink {
namespace autobot {
namespace msg {

/**
 * @brief DESIRE_WHEEL_RPM message
 *
 * Desire rpm of both wheels
 */
struct DESIRE_WHEEL_RPM : mavlink::Message {
    static constexpr msgid_t MSG_ID = 31;
    static constexpr size_t LENGTH = 8;
    static constexpr size_t MIN_LENGTH = 8;
    static constexpr uint8_t CRC_EXTRA = 154;
    static constexpr auto NAME = "DESIRE_WHEEL_RPM";


    float left_wheel_rpm; /*<  Desire rpm of left wheel */
    float right_wheel_rpm; /*<  Desire rpm of right wheel */


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
        ss << "  left_wheel_rpm: " << left_wheel_rpm << std::endl;
        ss << "  right_wheel_rpm: " << right_wheel_rpm << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << left_wheel_rpm;                // offset: 0
        map << right_wheel_rpm;               // offset: 4
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> left_wheel_rpm;                // offset: 0
        map >> right_wheel_rpm;               // offset: 4
    }
};

} // namespace msg
} // namespace autobot
} // namespace mavlink
