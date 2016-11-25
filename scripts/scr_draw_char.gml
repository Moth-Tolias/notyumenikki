///scr_draw_char(CharToDraw);
var CharacterToDraw, TextPadding;
CharacterToDraw = argument0;
TextPadding = (16 + TextOffsetX);

draw_text((StringWidth + (view_xview[0] + TextOffsetX)),
         (((view_yview + view_hview[0]) - TextOffsetY) + (LineToDraw * NewlineSize)),
         CharacterToDraw);
StringWidth += FontSize_Default;
if StringWidth >= (DEFAULT_SCREEN_X - TextPadding) {
    scr_newline();
    }
/*
switch(bees) {
    default: StringWidth += FontSize_Default; break;
    }*/
