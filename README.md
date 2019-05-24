# Autobot
Autonomous Navigation of Robot in Indoor Environment using SLAM

The use of Autonomous robotics has increased noticeably in last decade, especially for
indoor applications. An autonomous robot can map its surrounding environment and
decide upon navigation strategy, hence finding great use in many fields such as military
application, disaster management, patient assistance etc. In order to achieve complete
independent functioning, entire system can be divided in three subsections.
1. Map generation using Simultaneous Localization and Mapping [SLAM].
2. Localisation using Adaptive Monte Carlo particle filter.
3. Path planning using A* algorithm.

Map generation is based on the gmapping ROS package which works on Rao-
Blackwellized Particle Filter. Generated map is then used for goal tracking and path
planning purpose. Localisation in this map is done by amcl ROS package. Navigation
stack is used for the navigation of robot in the path chosen. All the above-mentioned
algorithms are processed on ROS platform based on Ubuntu 16.04 running on Intel
i5-8300H processor. These algorithms output command velocity which is then sent to
controller using MAVLink protocol. The microcontroller then implements the set
velocity based on the unicycle model closed loop control.
