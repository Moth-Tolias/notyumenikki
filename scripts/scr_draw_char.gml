///scr_draw_char(CharToDraw);
var CharacterToDraw, TextPadding;
CharacterToDraw = argument0;
TextPadding = (64 + TextOffsetX);

StringWidth += FontSize_Default;
if ((StringWidth >= (DEFAULT_SCREEN_X - TextPadding)) and (CharacterToDraw == " ")) {
    scr_newline();
    }

draw_text((StringWidth + (view_xview[0] + TextOffsetX)),
         (((view_yview + view_hview[0]) - TextOffsetY) + (LineToDraw * NewlineSize)),
         CharacterToDraw);

/*
switch(CharacterToDraw) {
    default: StringWidth += FontSize_Default; break;
    }*/
