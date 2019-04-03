#include <stdio.h>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "autobot/Unicycle.h"
#include "serial_port.h"
#include "mavlink_communication.h"
std::string reading;


void chatterCallback(const autobot::Unicycle::ConstPtr& msg)
{
  ROS_INFO("velocity: [%f] \t w: [%f]", msg->velocity, msg->w);
  mav_send_desired_cmd_val(msg->velocity,msg->w);
  //ros::Duration(0.5).sleep();

}


int main(int argc, char **argv)
{

  ros::init(argc, argv, "link");

  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("cmd_vel", 1000, chatterCallback);

//  serial_port.initialize_defaults();
  serial_port.start();
ros::Rate r(100);

  while (ros::ok())
{
  mav_decode();
  ros::spinOnce();
  r.sleep();

}



//printf("%s\n", reading);

  return 0;
}
