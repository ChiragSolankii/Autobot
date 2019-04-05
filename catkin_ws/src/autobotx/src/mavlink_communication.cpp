#include "mavlink_communication.h"

#include "ros/ros.h"
#include <stdio.h>
#include "mavlink/autobot/mavlink.h"
#include "autobotx/Unicycle.h"
char *uart_name = (char*)"/dev/ttyACM0";
int baudrate = 115200;



Serial_Port serial_port;
