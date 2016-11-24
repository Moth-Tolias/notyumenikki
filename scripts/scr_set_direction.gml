///scr_set_direction(xx, yy, fallback);
var xX, yY;
xX = argument0;
yY = argument1;

if (xX == 0) {
    if (yY < 0) { return(cardinals.north); }
    else if (yY > 0) { return(cardinals.south); }
    }

else if (yY == 0) {
    if ((xX > 0) and (yY = 0)) { return(cardinals.east); }
    else if ((xX < 0) and (yY = 0)) { return(cardinals.west); }
    }
    
if (xX > 0) {
    if (yY < 0) { return(cardinals.northeast); }
    if (yY > 0) { return(cardinals.southeast); }
    }

else {
    if yY < 0 { return(cardinals.northwest); }
    if yY > 0 { return(cardinals.southwest); }
    }

return(argument2);
