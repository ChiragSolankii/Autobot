// MESSAGE RIGHT_WHEEL_PID_GAINS support class

#pragma once

namespace mavlink {
namespace autobot {
namespace msg {

/**
 * @brief RIGHT_WHEEL_PID_GAINS message
 *
 * Right wheel PID gains
 */
struct RIGHT_WHEEL_PID_GAINS : mavlink::Message {
    static constexpr msgid_t MSG_ID = 2;
    static constexpr size_t LENGTH = 12;
    static constexpr size_t MIN_LENGTH = 12;
    static constexpr uint8_t CRC_EXTRA = 87;
    static constexpr auto NAME = "RIGHT_WHEEL_PID_GAINS";


    float Kp; /*<  Proportional Gain */
    float Ki; /*<  Integral Gain */
    float Kd; /*<  Derivative Gain */


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
        ss << "  Kp: " << Kp << std::endl;
        ss << "  Ki: " << Ki << std::endl;
        ss << "  Kd: " << Kd << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << Kp;                            // offset: 0
        map << Ki;                            // offset: 4
        map << Kd;                            // offset: 8
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> Kp;                            // offset: 0
        map >> Ki;                            // offset: 4
        map >> Kd;                            // offset: 8
    }
};

} // namespace msg
} // namespace autobot
} // namespace mavlink
