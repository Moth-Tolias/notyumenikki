///scr_save(slot filename)
//save to file

ini_open(argument0);

ini_write_real("general", "unset", false);
ini_write_string("general", "name", global.Name);
ini_write_real("general", "location", global.Location);

var i = (NO_OF_EFFECTS - 1);
repeat(NO_OF_EFFECTS) {
    ini_write_real('effects', ('effect'+string(i)), global.CollectedEffects[i]);
    i -= 1;
    }

i = (NO_OF_EVENTS - 1);
repeat(NO_OF_EVENTS) {
    ini_write_real('events', ('event'+string(i)), global.Events[i]);
    i -= 1;
    }

ini_close();

//if achievement unlocked save that too
