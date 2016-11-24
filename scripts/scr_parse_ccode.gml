#define scr_parse_ccode
///scr_parse_ccode(ControlCode);
switchblade = argument0;

switch (switchblade) {
    case"[[": scr_draw_char("["); break; //draw the escape character
    
    //standard dialog codes
    case"[useav]": UseAvatar = true; SetterTarget = settertargets.avatar; break;
    case"[noav]":  UseAvatar = false; break;
    case"[nline]": LineToDraw += 1; StringWidth = 0; break;
    case"[speed]": SetterTarget = settertargets.textspeed; Setter = 1; break; // to avoid zero
    case"[def]":   SetterTarget = settertargets.defaults; break; //restore speed to default
    case"[next]":  AcceptingInput = true; break; //display a thingy
    case"[skip]":  scr_newline(); break; //skip to next line of dialogue
    case"[midline]": with MyCaller { event_user(1); } break;//execute code midline
    case"[END]":     with MyCaller { Responding = false; event_user(2); }
                     instance_destroy();
                     break; //execute code and close the textbox
    
    //text effect codes
    case "[colour]": SetterTarget = settertargets.colour; break;
    case "[wobble]": break;
    
    //special
    case "[shake]": scr_camera_shake(global.ShakePref, 1, 0); SetterTarget = settertargets.shakepower; break;
    case "[shakeD]": scr_camera_shake(global.ShakePref, 1, ((Setter + 1) * 0.1)); Setter = 0; break;
    case "[event]": break;
    
    //input codes
    case "[query]": WaitingForQuery = true; AcceptingInput = true; /*scr_makequerybox();*/ break; //draw the answers with a querybox
    case "[input]": break;//get input via an inputbox
    
    //set codes
    case "[set+]": Setter +=1; break;
    case "[set-]": Setter -=1; break;
    case "[confirm]": scr_setcode(Setter, SetterTarget); Setter = 0; break;
    
    //default
    default: exit;
    }

CCodesActive = false;
ControlCode = "";

#define scr_setcode
///scr_setcode(Setter, SetterTarget);
var Amount, Target;
Amount = argument0;
Target = argument1;

switch (Target) {
    case settertargets.colour: draw_set_colour(MyCaller.Colours[Amount]); break; //change this one, maybe use enums?
    case settertargets.avatar: AvatarToDraw = spr_av_kat; /*MyCaller.Avatars[Amount];*/ break;
    case settertargets.shakepower: scr_camera_shake(global.ShakePref, Amount, 0); break;
    case settertargets.textspeed: IncrementSpeed = (Amount * 0.1); break;
    case settertargets.defaults: IncrementSpeed = 1; break;
    default: show_error("ControlCode target out of bounds", false);
    }

#define scr_makequerybox
///scr_makequerybox();
if MyInputBox != noone {
    exit; 
    }

MyInputBox = instance_create(x,y,obj_textbox_query);

var i;
i = array_length_1d(MyCaller.Choice);
while i > 0 {
    i -= 1;
    MyInputBox.Choice[i] = MyCaller.Choice[i];
    }