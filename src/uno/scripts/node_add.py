#!/usr/bin/python3

import rospy
from uno.msg import Test
from std_msgs.msg import String
import random

rospy.init_node('nodey',anonymous=-False)

rate = rospy.Rate(1)

pub = rospy.Publisher('/servizio1',Test,queue_size=10)

rospy.loginfo("inizio")
t=Test()

while not rospy.is_shutdown():
    t.x = random.randrange(100, 500)
    t.y =  random.randrange(100, 500)
    pub.publish(t)
    rate.sleep()