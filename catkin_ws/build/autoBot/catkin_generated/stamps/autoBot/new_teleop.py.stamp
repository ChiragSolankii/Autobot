#!/usr/bin/env python

from __future__ import print_function

import roslib;
import rospy
from beginner_tutorials.msg import Unicycle
from geometry_msgs.msg import Twist
from std_msgs.msg import String

import sys, select, termios, tty

msg = """
Reading from the keyboard  and Publishing to Twist!
---------------------------
Moving around:
   u    i    o
   j    k    l
   m    ,    .
For Holonomic mode (strafing), hold down the shift key:
---------------------------
   U    I    O
   J    K    L
   M    <    >
t : up (+z)
b : down (-z)
anything else : stop
q/z : increase/decrease max speeds by 10%
w/x : increase/decrease only linear speed by 10%
e/c : increase/decrease only angular speed by 10%
CTRL-C to quit
"""

moveBindings = {
        'w':(1,0),
        's':(-1,0),
        'd':(1,1),
        'a':(-1,-1),
        'e':(1,1),
        'q':(1,-1),
        'c':(-1,1),
        'z':(-1,1),
    }

speedBindings={



    }

def getKey():
    tty.setraw(sys.stdin.fileno())
    select.select([sys.stdin], [], [], 0)
    key = sys.stdin.read(1)
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key


def vels(speed,turn):
    return "currently:\tspeed %s\tturn %s " % (speed,turn)

if __name__=="__main__":
    settings = termios.tcgetattr(sys.stdin)

    pub = rospy.Publisher('cmd_vel',Unicycle, queue_size = 1)
    rospy.init_node('teleop_twist_keyboard')
    speed = rospy.get_param("~speed", 0.5)
    turn = rospy.get_param("~turn", 1.0)
    speed=0
    turn=0

    print(msg)
    print(vels(speed,turn))
    while(1):
        key = getKey()
        if key in moveBindings.keys():
            speed = str(moveBindings[key][0])
            turn = str(moveBindings[key][1])
        elif key in speedBindings.keys():
            speed = speed * speedBindings[key][0]
            turn = turn * speedBindings[key][1]

            print(vels(speed))
            if (status == 14):
                print(msg)
            status = (status + 1) % 15
        else:
            x = 0
            y = 0
            z = 0
            th = 0
            if (key == '\x03'):
                break

        #pub.publish(speed,turn)
        twist = Twist()
        unicycle = Unicycle()
        #twist.linear.x = speed; twist.linear.y = 0; twist.linear.z =0;
        #twist.angular.x = 0; twist.angular.y = 0; twist.angular.z = turn
        #pub.publish(twist.linear,twist.angular)
        unicycle.velocity= int(speed)
        unicycle.w = int(turn)
        pub.publish(unicycle)

        print(unicycle)
'''
finally:
    twist = Twist()
    twist.linear.x = 0; twist.linear.y = 0; twist.linear.z = 0
    twist.angular.x = 0; twist.angular.y = 0; twist.angular.z = 0
    pub.publish(twist)

    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
'''
