#!/usr/bin/python3

import rospy
from uno.msg import Test
from uno.srv import add



def add_two_ints_client(x, y):
    rospy.loginfo("params = %f, %f" % (x,y))
    rospy.wait_for_service('add_x_y')
    add_two_ints = rospy.ServiceProxy('add_x_y', add)
    answer = add_two_ints(x, y)
    return answer.sum


# rospy.init_node('nodex',anonymous=False)

def callback(data):
    response = add_two_ints_client(data.x,data.y)
    rospy.loginfo("risposta= %f" % response)
    

if __name__ == "__main__":
    rospy.init_node('nodex',anonymous=False)
    sub = rospy.Subscriber('/servizio1',Test,callback)
    rospy.spin()