#include <stdio.h>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "autobot/Unicycle.h"
#include "serial_port.h"
#include "mavlink_communication.h"
std::string reading;
int array[5]={1,2,3,4,5};
Serial_Port serial;
void chatterCallback(const autobot::Unicycle::ConstPtr& msg)
{
  ROS_INFO("velocity: [%d] \t w: [%d]", msg->velocity, msg->w);
mav_send_robot_position_change(5,5,6);

}


int main(int argc, char **argv)
{
serial.initialize_defaults();
  ros::init(argc, argv, "link");


  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("cmd_vel", 1000, chatterCallback);

  ros::spin();

//printf("%s\n", reading);

  return 0;
}
