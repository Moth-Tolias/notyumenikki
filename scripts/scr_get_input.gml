///scr_get_input(pressed)
var Pressed;
Pressed = argument0;

//pressed keys
if Pressed == true {
    PressedKeyA = keyboard_check_pressed(global.KeyA);
    PressedKeyB = keyboard_check_pressed(global.KeyB);
    PressedKeyX = keyboard_check_pressed(global.KeyX);
    PressedKeyU = keyboard_check_pressed(global.KeyU);
    PressedKeyD = keyboard_check_pressed(global.KeyD);
    PressedKeyL = keyboard_check_pressed(global.KeyL);
    PressedKeyR = keyboard_check_pressed(global.KeyR);
    PressedKeyS = keyboard_check_pressed(global.KeyS);
    }
    
//pressing keys
else {
    PressingKeyA = keyboard_check(global.KeyA);
    PressingKeyB = keyboard_check(global.KeyB);
    PressingKeyX = keyboard_check(global.KeyX);
    PressingKeyU = keyboard_check(global.KeyU);
    PressingKeyD = keyboard_check(global.KeyD);
    PressingKeyL = keyboard_check(global.KeyL);
    PressingKeyR = keyboard_check(global.KeyR);
    PressingKeyS = keyboard_check(global.KeyS);
    }
