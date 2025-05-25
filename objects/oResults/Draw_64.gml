/// @description Insert description here
// You can write your code in this editor

draw_set_font(fSilver);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_sprite(sPERFECT,0,xStart,yStartPerfect);
draw_text(xStart+perfectW/2-10,yStartPerfect+textOffset,":" + string(global.PerfectCounter));

draw_sprite(sOK,0,xStart,yStartOK);
draw_text(xStart+okW/2,yStartOK+textOffset,":" + string(global.OKcounter));

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(guiW/2,guiH - guiH/5,"Press R to restart");