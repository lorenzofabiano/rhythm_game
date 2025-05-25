/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sMeterBackground,0,meterX,meterY,1,1,0,c_white,.5);
draw_sprite(sMeterOutline,0,meterX,meterY);
draw_sprite_stretched(sMeter,0,meterX,meterY, (global.beatCounter/global.totalBeats) * meterWidth, meterHeight);