import numpy as np
import cv2
import time
import serial
import math
DEVICE = '/dev/ttyACM0'
BAUD = 9600
ser = serial.Serial(DEVICE, BAUD)
L1= 25 #cm
L2= 25 #cm
t1=0
t2=0
t3=0
t4=0

conv(t11,t22,t33,t44)
	st1 = Integer.toSring(t11)
	st2 = Integer.toSring(t22)
	st3 = Integer.toString(t33)
	st4 = Integer.toString(t44)
	String str=  "4/" + st1 + "/" + st2 + "/" + st3 + "/" + st4 + "/" + Integer.toString(len(st1)) + Integer.toString(len(st2)) + Integer.toString(len(st3)) + Integer.toString(len(st4))
	return str
	
init(x,y)
	t2= math.acos{[pow(x,2)+pow(y,2) - pow(L1,2)- pow(L2,2)] / 2*L1*L2}
	t1= math.acos{[(L1+L2*math.cos(t2))+L2*math.sin(t2)*y]/(pow(x,2)+pow(y,2))}
	t3= te-t1-t2 # te end effector angle formula is with you
	t4=0
	String str1= conv(t1,t2,t3.t4)
	ser.write(str1)
	
#dest(x,y)
#	t2= math.acos{[pow(x,2)+pow(y,2) - pow(L1,2)- pow(L2,2)] / 2*L1*L2}
#	t1= math.acos{[(L1+L2*math.cos(t2))+L2*math.sin(t2)*y]/(pow(x,2)+pow(y,2))}
def main():
	#Key=ser.readline()
    #cap = cv2.VideoCapture(0)
    #while cv2.waitKey(1) != 27 and cap.isOpened(): #yet to figure out 
        # Capture frame-by-frame
     #   ret, frame = cap.read()
      #  cv2.imshow('frame',frame)
		init(x,y) #initial x & y to be determined
		while Key== '8'
			t1= t1++
			t2= t2++
			String str2= conv(t1,t2,t3.t4)
			ser.write(str2)
		while Key== '2'
			t1= t1--
			t2= t2--
			String str3= conv(t1,t2,t3.t4)
			ser.write(str3)
		while Key=='4'
			g= g--
			String g1 = "1/" + Integer.toString(g)
			ser.write(g1)
		while Key=='6'
			g= g++
			String g1 = "1/" + Integer.toString(g)
			ser.write(g1)
		while Key== 'l'
			t3= t3++
			t4=t4--
			String str4= conv(t1,t2,t3.t4)
			ser.write(str4)
		while Key== 'd'
			t3= t3--
			t4= t4++
			String str5= conv(t1,t2,t3.t4)
			ser.write(str5)
		