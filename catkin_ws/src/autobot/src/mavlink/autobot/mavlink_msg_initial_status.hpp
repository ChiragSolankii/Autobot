// MESSAGE INITIAL_STATUS support class

#pragma once

namespace mavlink {
namespace autobot {
namespace msg {

/**
 * @brief INITIAL_STATUS message
 *
 * Robot initial status and other parameters
 */
struct INITIAL_STATUS : mavlink::Message {
    static constexpr msgid_t MSG_ID = 101;
    static constexpr size_t LENGTH = 9;
    static constexpr size_t MIN_LENGTH = 9;
    static constexpr uint8_t CRC_EXTRA = 35;
    static constexpr auto NAME = "INITIAL_STATUS";


    float initial_heading; /*<  Initial heading of robot */
    uint8_t ultrasonic_config; /*<  Configuration of ultrasonic sensors */
    uint16_t update_freq; /*<  Freuency at which data is sent to Ros */
    uint16_t encoder_ppr; /*<  PPR of encoders */


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
        ss << "  initial_heading: " << initial_heading << std::endl;
        ss << "  ultrasonic_config: " << +ultrasonic_config << std::endl;
        ss << "  update_freq: " << update_freq << std::endl;
        ss << "  encoder_ppr: " << encoder_ppr << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << initial_heading;               // offset: 0
        map << update_freq;                   // offset: 4
        map << encoder_ppr;                   // offset: 6
        map << ultrasonic_config;             // offset: 8
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> initial_heading;               // offset: 0
        map >> update_freq;                   // offset: 4
        map >> encoder_ppr;                   // offset: 6
        map >> ultrasonic_config;             // offset: 8
    }
};

} // namespace msg
} // namespace autobot
} // namespace mavlink
