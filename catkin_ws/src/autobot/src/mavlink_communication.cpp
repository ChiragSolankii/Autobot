#include "mavlink_communication.h"
//#include <arduino.h>
#include "ros/ros.h"
#include <stdio.h>
char *uart_name = (char*)"/dev/ttyACM2";
int baudrate = 115200;
std::string readings;
//Serial_Port serial;
Serial_Port serial_port(uart_name, baudrate);
mavlink_status_t mav_rec_status;
mavlink_message_t mav_rec_msg,m;
int mav_rec_chan = MAVLINK_COMM_0;
float vleft, vright;
motorcontrol MotorControl;
mavlink_robot_sensor_readings_t mav_robot_sensor_readings;
mavlink_robot_position_change_t mav_robot_position_change;
mavlink_robot_distance_sensor_readings_t mav_robot_distance_sensor_readings;
mavlink_initial_status_t mav_initial_status;
mavlink_robot_dimensions_t mav_comm_robot_dimensions;
mavlink_left_wheel_pid_gains_t mav_comm_left_wheel_pid_gains;
mavlink_right_wheel_pid_gains_t mav_comm_right_wheel_pid_gains;
mavlink_desire_wheel_rpm_t mav_comm_desire_wheel_rpm;
mavlink_desire_cmd_val_t mav_comm_desire_cmd_val;

/*
void mav_send_robot_sensor_readings(uint32_t left_wheel_ticks, uint32_t right_wheel_ticks, float curr_heading)
{
  int x = 0;
  mavlink_message_t msg;
  x = mavlink_msg_robot_sensor_readings_pack(SYSTEM_ID, COMPONENT_ID, &msg, left_wheel_ticks, right_wheel_ticks, curr_heading);
  serial_port.start();
  int data=serial_port.write_message(msg);
}

void mav_send_robot_position_change(int delta_x, int delta_y, int delta_theta)
{
  int x = 0;
  mavlink_message_t msg;
  x = mavlink_msg_robot_position_change_pack(SYSTEM_ID, COMPONENT_ID, &msg, delta_x, delta_y, delta_theta);
  serial_port.start();
  int data=serial_port.write_message(msg);
}

void mav_send_initial_status(float initial_heading, uint8_t ultrasonic_config, uint16_t update_freq, uint16_t encoder_ppr)
{
  int x = 0;
  mavlink_message_t msg;

  x = mavlink_msg_initial_status_pack(SYSTEM_ID, COMPONENT_ID, &msg,initial_heading, ultrasonic_config, update_freq, encoder_ppr );
  serial_port.start();
  int data=serial_port.write_message(msg);
}
*/


void mav_send_desired_cmd_val(float v, float w)
{
  int x = 0;
  mavlink_message_t msg;
  x = mavlink_msg_desire_cmd_val_pack(SYSTEM_ID, COMPONENT_ID, &msg,v,w );
  serial_port.start();
  int data=serial_port.write_message(msg);

}

void mav_decode(void)
{
      mavlink_message_t message;
  		bool success = serial_port.read_message(message);
  if(success){

    switch(message.msgid)
    {
      case MAVLINK_MSG_ID_ROBOT_SENSOR_READINGS :
        mavlink_msg_robot_sensor_readings_decode(&mav_rec_msg, &mav_robot_sensor_readings);
	    	MotorControl.left_wheel_ticks = mav_robot_sensor_readings.left_wheel_ticks;
	    	MotorControl.right_wheel_ticks= mav_robot_sensor_readings.right_wheel_ticks;
        MotorControl.curr_heading = mav_robot_sensor_readings.curr_heading;
        printf("left wheel ticks:[%d] \t right wheel ticks:[%d] \t curr heading:[%d]\n", MotorControl.left_wheel_ticks,MotorControl.right_wheel_ticks,MotorControl.curr_heading);
        break;


      default:
        break;
    }
  }

}
