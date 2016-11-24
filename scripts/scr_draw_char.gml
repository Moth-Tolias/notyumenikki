///scr_draw_char(CharToDraw);
var bees = argument0;

draw_text((StringWidth + (view_xview[0] + TextOffsetX)),
         (((view_yview + view_hview[0]) - TextOffsetY) + (LineToDraw * NewlineSize)),
         bees);
StringWidth += FontSize_Default;
/*
switch(bees) {
    default: StringWidth += FontSize_Default; break;
    }*/
