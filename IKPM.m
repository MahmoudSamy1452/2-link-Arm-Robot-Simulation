function [theta1 theta2] = IKPM(l1, l2, x, y)
theta2 = acosd((x*x + y*y - l1*l1 - l2*l2)/(2*l1*l2));
c1  = (l1*x +l2*cosd(theta2)*x + l2*sind(theta2)*y)/(l1*l1 + 2*l1*l2*cosd(theta2) + l2*l2);
s1  = (l1*y +l2*cosd(theta2)*y - l2*sind(theta2)*x)/(l1*l1 + 2*l1*l2*cosd(theta2) + l2*l2);
theta1 = atan2(s1,c1);
theta1 = rad2deg(theta1);
if(theta1<0)
    theta1 = theta1+360;
end
end