//this script never gets called but you can think
//of it as running at the start of the game
enum shakemodes {
     shake_off,
     shake_normal,
     shake_ud,
     shake_lr,
     shake_4thwall
     }

//menu
enum menustates {
     menu_title,
     menu_main,
     menu_start,
     menu_settings,
     menu_controls
     }


enum optionmain {
     option_start,
     option_settings,
     option_quit
     }


enum optionstart {
     option_load1,
     option_load2,
     option_load3,
     option_back
     }
     
enum optionsettings {
     optionmus,
     optionSFX,
     optionscreensize,
     optionshake,
     optioncontrols,
     optionlanguage,
     option_back
     }
//end menu

enum settertargets {
     outofbounds,
     colour,
     avatar,
     shakepower,
     textspeed,
     defaults
     }

enum cardinals {
     north,
     northeast,
     east,
     southeast,
     south,
     southwest,
     west,
     northwest,
     standing
     }

enum locations {
     area_debug1,
     area_debug2,
     area_firstroom
     }

/*enum effects {
     effect_normal,
     effect_,
     effect_,
     }
     
