#ifndef MAVLINK_COMMUNICATION
#define MAVLINK_COMMUNICATION

#define MAVLINK_COMM_NUM_BUFFERS 1
#include "mavlink/autobot/mavlink.h"
#include "serial_port.h"

#define SYSTEM_ID     101
#define COMPONENT_ID  51
extern Serial_Port serial_port;
/*void mav_send_robot_sensor_readings(uint32_t left_wheel_ticks, uint32_t right_wheel_ticks, float curr_heading);
void mav_send_robot_position_change(int delta_x, int delta_y, int delta_theta);
//void mav_send_robot_distance_sensor_readings(const uint16_t *ultrasonic_readings);
void mav_send_initial_status(float initial_heading, uint8_t ultrasonic_config, uint16_t update_freq, uint16_t encoder_ppr);
*/
void mav_decode(void);


void mav_send_desired_cmd_val(float v, float h);
class motorcontrol
{
public:
  uint32_t left_wheel_ticks;
  uint32_t right_wheel_ticks;
  uint32_t curr_heading;






};
#endif
