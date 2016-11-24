///scr_return_textinput(Interactable, Selection);
var Interactable, Input;
Interactable = argument0;
Input = argument1;

Interactable.Input = Input;
with Interactable {
    event_user(3);
    }
