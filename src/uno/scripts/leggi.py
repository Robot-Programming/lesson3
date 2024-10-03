#!/usr/bin/python3

import rospy
from std_msgs.msg import String

rospy.init_node('node2',anonymous=False)

def eventrised(data):
    rospy.loginfo(data.data)

rospy.Subscriber('/topic1', String, eventrised)

rospy.spin()

