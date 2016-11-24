///scr_move(xx, yy);
var xX, yY, XSign, YSign;
xX = argument0;
yY = argument1;
//Size = (argument2 -1);
XSign = sign(xX);
YSign = sign(yY);



//x = round(x);
//y = round(y);

if collision_rectangle(bbox_left + xX, bbox_top + yY, bbox_right + xX, bbox_bottom + yY, obj_wall, false, true) == noone {
    x += xX;
    y += yY;
    return (0);
    }
    
//x
var i = 0;
while (collision_rectangle(bbox_left + XSign, bbox_top, bbox_right + XSign, bbox_bottom , obj_wall, false, true) == noone) and (i < abs(xX)) {
    x += XSign;
    i += 1;
    }

//y
i = 0;
while (collision_rectangle(bbox_left, bbox_top + YSign, bbox_right, bbox_bottom + YSign, obj_wall, false, true) == noone) and (i < abs(yY)) {
    y += YSign;
    i += 1;
    }

x = round(x);
y = round(y);

return (1);

/*
if collision_rectangle(x + xX, y + yY, x + (Size + xX), y + (Size + yY), obj_wall, false, true) == noone {
    x += xX;
    y += yY;
    return (0);
    }
    
//x
var i = 0;
while (collision_rectangle(x + XSign, y, x + (Size + XSign), y + Size, obj_wall, false, true) == noone) and (i < abs(xX)) {
    x += XSign;
    i += 1;
    }

//y
i = 0;
while (collision_rectangle(x, y + YSign, x + Size, y + (Size + YSign), obj_wall, false, true) == noone) and (i < abs(yY)) {
    y += YSign;
    i += 1;
    }

return (1);
