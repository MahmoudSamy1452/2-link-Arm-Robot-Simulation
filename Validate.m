function valid = Validate(x,y,l1,l2,minTh1,maxTh1,minTh2,maxTh2)
[x1 y1 x2 y2 x3 y3 x4 y4] = Draw(l1, l2, minTh1, maxTh1, minTh2, maxTh2);
Xi1 = 0;
Xi2 = 0;
tolx = 0.0001;
for i = 1:length(x1)-1
    if (((x1(i) < x) && (x1(i+1) > x)) || ((x1(i) > x) && (x1(i+1) < x)) || (abs(x1(i) - x) < tolx) || (abs(x1(i+1) - x) < tolx))
        if(Xi1 > 0)
            Xi2 = i+1;
            yi2 = y1(Xi2);
        else
            Xi1 = i+1;
            yi1 = y1(Xi1);
        end
    end
end
for i = 1:length(x2)-1
    if (((x2(i) < x) && (x2(i+1) > x)) || ((x2(i) > x) && (x2(i+1) < x)) || (abs(x2(i) - x) < tolx) || (abs(x2(i+1) - x) < tolx))
        if(Xi1 > 0)
            Xi2 = i+1;
            yi2 = y2(Xi2);
        else
            Xi1 = i+1;
            yi1 = y2(Xi1);
        end
    end
end
for i = 1:length(x3)-1
    if (((x3(i) < x) && (x3(i+1) > x)) || ((x3(i) > x) && (x3(i+1) < x)) || (abs(x3(i) - x) < tolx) || (abs(x3(i+1) - x) < tolx))
        if(Xi1 >0)
            Xi2 = i+1;
            yi2 = y3(Xi2);
        else
            Xi1 = i+1;
            yi1 = y3(Xi1);
        end
    end
end
for i = 1:length(x4)-1
    if (((x4(i) < x) && (x4(i+1) > x)) || ((x4(i) > x) && (x4(i+1) < x)) || (abs(x4(i) - x) < tolx) || (abs(x4(i+1) - x) < tolx))
        if(Xi1 > 0)
            Xi2 = i+1;
            yi2 = y4(Xi2);
        else
            Xi1 = i+1;
            yi1 = y4(Xi1);
        end
    end
end
if(Xi1 == 0 || Xi2 == 0)
    valid = 0;
    return
end
toly = 0.027;
if(((yi1 < y) && (yi2 > y)) || ((yi1 > y) && (yi2 < y)) || (abs(yi1 - y) < toly) || (abs(yi2 - y) < toly))
    valid = 1;
    return
else
    valid = 0;
    return
end
end
    