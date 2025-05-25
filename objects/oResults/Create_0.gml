/// @description Insert description here
// You can write your code in this editor
timeline = 0;

guiH = display_get_gui_height();
guiW = display_get_gui_width();

xStart = guiW/2;
yStartPerfect = guiH/4;
yStartOK = guiH/4 + 50;

textOffset = 6;

perfectW = sprite_get_width(sPERFECT);
okW = sprite_get_width(sOK);