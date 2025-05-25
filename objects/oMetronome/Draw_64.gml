/// @description Insert description here
// You can write your code in this editor
if (global.beatCounter == 0) {
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text(display_get_gui_width()/2,display_get_gui_height() - display_get_gui_height()/6,"Press Spacebar to start");
}