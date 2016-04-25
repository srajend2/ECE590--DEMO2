clc;
l1=0;l2=25;l3=25;
x=22;y=7;z=0;
theta1 = atand((-x)/y)
theta2 = acosd(((x^2)+(y^2)+(l2^2)-(l3^2))/(2*l2*sqrt((x^2)+(y^2)))) + atand((z-l1)/(sqrt((x^2)+(y^2))))
theta3 = acosd(((x^2)+(y^2)-(l2^2)-(l3^2))/(2*l2*l3))
acttheta3 = 180-theta3