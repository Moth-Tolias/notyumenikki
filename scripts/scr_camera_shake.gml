#define scr_camera_shake
///scr_camera_shake(power, [x]);
var _ShakePower = argument[0];
var SkipY = false;

if argument_count = 1 {
    var ShiftX = irandom_range(-_ShakePower,_ShakePower);
    var ShiftY = irandom_range(-_ShakePower,_ShakePower);
    }
else {
    SkipY = true;
    var ShiftX = argument[1];
    }

var ShakeOffsetX = 0;
var ShakeOffsetY = 0;

// 4th wall shaking
if ShakeMode == shakemodes.shake_4thwall {
    scr_camera_shake_4thwall(ShiftX,ShiftY);
    }

// normal shaking
else {
    //y component
    if ((ShakeMode == shakemodes.shake_normal) or (ShakeMode == shakemodes.shake_ud)) and not SkipY {
        ShakeOffsetY = ShiftY;
        }
    else ShakeOffsetY = 0;

    //x component
    if (ShakeMode == shakemodes.shake_normal) or (ShakeMode == shakemodes.shake_lr) {
        ShakeOffsetX = ShiftX;
        }
    }

//apply shaking
view_xview[0] += ShakeOffsetX;
view_yview[0] += ShakeOffsetY;

#define scr_camera_shake_4thwall
///scr_camera_shake_4thwall()
var ShiftX, ShiftY;
ShiftX = argument0;
ShiftY = argument1;

if FullScreen == false {
    window_set_position(WindowX + ShiftX, WindowY + ShiftY);
    }
else {
    ShakeOffsetX = RandX;
    ShakeOffsetY = RandY;
    }
