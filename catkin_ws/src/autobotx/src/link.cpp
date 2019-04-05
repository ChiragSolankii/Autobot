#include <stdio.h>
#include <boost/thread.hpp>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "autobotx/Unicycle.h"
#include "serial_port.h"
#include "mavlink_communication.h"

float v = 0;
float w = 0;

uint16_t x = 0;
mavlink_message_t message_send;

char *uart_name = (char*)"/dev/ttyACM1";
int baudrate = 115200;
mavlink_message_t message;
mavlink_robot_sensor_readings_t mav_robot_sensor_read;
mavlink_robot_position_change_t mav_robot_position_change;


void mav_decode();


void chatterCallback(const autobotx::Unicycle::ConstPtr& msg)
{
  v = msg->velocity;
  w = msg->w;
  printf("velocity: [%f] \t w: [%f]\n", v, w);
  x = mavlink_msg_desire_cmd_val_pack(SYSTEM_ID, COMPONENT_ID, &message_send, 23.40, 0);
  serial_port.write_message(message_send, x);
}


int main(int argc, char **argv)
{

  ros::init(argc, argv, "link");

  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("cmd_vel", 100, chatterCallback);

  serial_port.initialize_defaults();
  serial_port.start();

  ros::Rate r(1000);

  while (ros::ok())
  {
    mav_decode();
    ros::spinOnce();
    r.sleep();
  }

  return 0;
}


void mav_decode(void)
{

  bool success = serial_port.read_message(message);

  if(success){
    switch(message.msgid){
      case MAVLINK_MSG_ID_ROBOT_SENSOR_READINGS :
        mavlink_msg_robot_sensor_readings_decode(&message, &mav_robot_sensor_read);
        printf("left wheel ticks:[%u] \t right wheel ticks:[%u] \t curr heading:[%f]\n", mav_robot_sensor_read.left_wheel_ticks,mav_robot_sensor_read.right_wheel_ticks,mav_robot_sensor_read.curr_heading);
        break;

      case MAVLINK_MSG_ID_ROBOT_POSITION_CHANGE :

        mavlink_msg_robot_position_change_decode(&message, &mav_robot_position_change);
        printf("delta x:[%f] \t delta y:[%f] \t delta theta:[%f]\n", mav_robot_position_change.delta_x,mav_robot_position_change.delta_y,mav_robot_position_change.delta_theta);
        break;

      default:
        break;
    }
  }
}
