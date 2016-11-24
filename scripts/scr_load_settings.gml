///scr_load_settings();
//save settingss to file

ini_open("settings.ini");

//settings
global.MusicGain = ini_read_real('settings', 'music_level', 50);
global.SFX_Gain   = ini_read_real('settings', 'SFX_level', 50);
global.ScreenSize        = ini_read_real('settings', 'screensize', 2);
global.ShakePref  = ini_read_real('settings', 'shaketype', 1);
//global.lang       = ini_read_string('settings', 'language', "eng");

//controls
global.KeyA = ini_read_real('controls', 'a', ord("Z"));
global.KeyB = ini_read_real('controls', 'b', ord("X"));
global.KeyX = ini_read_real('controls', 'x', ord("C"));
global.KeyU = ini_read_real('controls', 'up', vk_up);
global.KeyD = ini_read_real('controls', 'down', vk_down);
global.KeyL = ini_read_real('controls', 'left', vk_left);
global.KeyR = ini_read_real('controls', 'right', vk_right);
global.KeyS = ini_read_real('controls', 'start', vk_enter);


ini_close();
