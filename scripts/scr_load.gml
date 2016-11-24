#define scr_load
///scr_load(filename);
//load a file
var i, IngameLocation;
ini_open(argument0);

global.Name = ini_read_string('general', 'name', "");
IngameLocation = ini_read_real('general', 'name', locations.area_firstroom);

i = (NO_OF_EFFECTS - 1);
repeat(NO_OF_EFFECTS) {
    global.CollectedEffects[i] = ini_read_real('effects', ('effect'+string(i)), false);
    i -= 1;
    }

i = (NO_OF_EVENTS - 1);
repeat(NO_OF_EVENTS) {
    global.Events[i] = ini_read_real('events', ('event'+string(i)), 0);
    i -= 1;
    }
    
ini_close();

scr_parse_location(IngameLocation);

#define scr_parse_location
///scr_parse_location(location);
switch (argument0) {
    case locations.area_firstroom: scr_goto_location(room_firstroom, 180, 144); break;
    default: scr_goto_location(room_debug_central, 80, 128); break;
    }