function [x y] = DKPM(Angle1, Angle2, l1, l2)
x = l1*cosd(Angle1) + l2*cosd(Angle1+Angle2);
y = l1*sind(Angle1) + l2*sind(Angle1+Angle2);