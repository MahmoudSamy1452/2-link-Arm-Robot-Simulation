function WA = WorkingArea(x1, y1, x2, y2, x3, y3, x4, y4)
WA = 0;
for i = 1:length(x1)-1
    WA = WA + 0.5 * (x1(i+1) + x1(i)) * (y1(i+1) - y1(i));
end
for i = 1:length(x4)-1
    WA = WA + 0.5 * (x4(i+1) + x4(i)) * (y4(i+1) - y4(i));
end
for i = length(x2):-1:2
    WA = WA + 0.5 * (x2(i-1) + x2(i)) * (y2(i-1) - y2(i));
end
for i = length(x3):-1:2
    WA = WA + 0.5 * (x3(i-1) + x3(i)) * (y3(i-1) - y3(i));
end
end
