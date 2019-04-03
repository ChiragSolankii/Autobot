// MESSAGE DESIRE_CMD_VAL support class

#pragma once

namespace mavlink {
namespace autobot {
namespace msg {

/**
 * @brief DESIRE_CMD_VAL message
 *
 * Desire rpm of both wheels
 */
struct DESIRE_CMD_VAL : mavlink::Message {
    static constexpr msgid_t MSG_ID = 32;
    static constexpr size_t LENGTH = 8;
    static constexpr size_t MIN_LENGTH = 8;
    static constexpr uint8_t CRC_EXTRA = 154;
    static constexpr auto NAME = "DESIRE_CMD_VAL";


    float v; /*<  linear velocity */
    float w; /*<  angular velocity */


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
        ss << "  v: " << v << std::endl;
        ss << "  w: " << w << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << v;                             // offset: 0
        map << w;                             // offset: 4
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> v;                             // offset: 0
        map >> w;                             // offset: 4
    }
};

} // namespace msg
} // namespace autobot
} // namespace mavlink
