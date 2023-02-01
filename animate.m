function animate(l1, l2, minTh1, maxTh1, minTh2, maxTh2, x1, x2, x3, x4, y1, y2, y3, y4)
theta = linspace(minTh1, maxTh1, length(x1));
for i = 1:length(x1)
    c1 = line([0,l1*cosd(theta(i))],[0,l1*sind(theta(i))], 'Color', 'red');
    c2 = line([l1*cosd(theta(i)),x1(i)],[l1*sind(theta(i)),y1(i)], 'Color', 'black');
    joint1 = rectangle('Position', [l1*cosd(theta(i))-0.15, l1*sind(theta(i))-0.15, 0.3, 0.3], 'Curvature', [1, 1]);
    joint2 = rectangle('Position', [x1(i)-0.25, y1(i)-0.25, 0.5, 0.5], 'FaceColor', 'red', 'Curvature', [1, 1]);
    drawnow;
    delete(joint1);
    delete(joint2);
    delete(c1);
    delete(c2);
end
theta = linspace(minTh2, maxTh2, length(x4));
for i = 1:length(x4)
    c1 = line([0,l1*cosd(maxTh1)],[0,l1*sind(maxTh1)], 'Color', 'red');
    c2 = line([l1*cosd(maxTh1),x4(i)],[l1*sind(maxTh1),y4(i)], 'Color', 'black');
    joint1 = rectangle('Position', [l1*cosd(maxTh1)-0.15, l1*sind(maxTh1)-0.15, 0.3, 0.3], 'Curvature', [1, 1]);
    joint2 = rectangle('Position', [x4(i)-0.25, y4(i)-0.25, 0.5, 0.5], 'FaceColor', 'red', 'Curvature', [1, 1]);
    drawnow;
    delete(joint1);
    delete(joint2);
    delete(c1);
    delete(c2);
end
theta = linspace(minTh1, maxTh1, length(x2));
for i = length(x2):-1:1
    c1 = line([0,l1*cosd(theta(i))],[0,l1*sind(theta(i))], 'Color', 'red');
    c2 = line([l1*cosd(theta(i)),x2(i)],[l1*sind(theta(i)),y2(i)], 'Color', 'black');
    joint1 = rectangle('Position', [l1*cosd(theta(i))-0.15, l1*sind(theta(i))-0.15, 0.3, 0.3], 'Curvature', [1, 1]);
    joint2 = rectangle('Position', [x2(i)-0.25, y2(i)-0.25, 0.5, 0.5], 'FaceColor', 'red', 'Curvature', [1, 1]);
    drawnow;
    delete(joint1);
    delete(joint2);
    delete(c1);
    delete(c2);
end
theta = linspace(minTh2, maxTh2, length(x3));
for i = length(x3):-1:1
    c1 = line([0,l1*cosd(minTh1)],[0,l1*sind(minTh1)], 'Color', 'red');
    c2 = line([l1*cosd(minTh1),x3(i)],[l1*sind(minTh1),y3(i)], 'Color', 'black');
    joint1 = rectangle('Position', [l1*cosd(minTh1)-0.15, l1*sind(minTh1)-0.15, 0.3, 0.3], 'Curvature', [1, 1]);
    joint2 = rectangle('Position', [x3(i)-0.25, y3(i)-0.25, 0.5, 0.5], 'FaceColor', 'red', 'Curvature', [1, 1]);
    drawnow;
    if(i ~= 1)
        delete(joint1);
        delete(joint2);
        delete(c1);
        delete(c2);
    end
end