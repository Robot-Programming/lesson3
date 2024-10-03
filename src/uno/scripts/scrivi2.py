#!/usr/bin/python3

import rospy
from std_msgs.msg import Float32

rospy.init_node('node3',anonymous=False)

rate = rospy.Rate(2)

pub = rospy.Publisher('/topic2',Float32, queue_size=10)

count = 0

while not rospy.is_shutdown():
    count = count + 1
    pub.publish(count)
    rate.sleep()
