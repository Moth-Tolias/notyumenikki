///scr_save_settings();
//save settingss to file

ini_open("settings.ini");

//settings
ini_write_real("settings", "music_level", global.MusicGain);
ini_write_real("settings", "SFX_level", global.SFX_Gain);
ini_write_real("settings", "screensize", global.ScreenSize);
ini_write_real("settings", "shaketype", global.ShakePref);
//ini_write_real("settings", "language", global.lang);

//controls
ini_write_real("controls", "a", global.KeyA);
ini_write_real("controls", "b", global.KeyB);
ini_write_real("controls", "x", global.KeyX);
ini_write_real("controls", "up", global.KeyU);
ini_write_real("controls", "down", global.KeyD);
ini_write_real("controls", "left", global.KeyL);
ini_write_real("controls", "right", global.KeyR);
ini_write_real("controls", "start", global.KeyS);


ini_close();
