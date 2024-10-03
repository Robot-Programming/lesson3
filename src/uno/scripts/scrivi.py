#!/usr/bin/python3

import rospy
from std_msgs.msg import String, Float32

rospy.init_node('node1',anonymous=True)
rate = rospy.Rate(1)
pub = rospy.Publisher('/topic1', String, queue_size=10)

count=0

def callback(data):
    global count
    count = data.data
    # rospy.loginfo(data.data)

rospy.Subscriber('/topic2', Float32, callback)

while not rospy.is_shutdown():
    pub.publish('message %f' % count)
    rospy.loginfo('message sent')
    rate.sleep()


