/// @description Insert description here
// You can write your code in this editor
global.bufferDuration = global.bufferWindow;
alarm[1] = global.interval;

if (global.beatCounter == global.startInput) global.canInput = true;
if (global.beatCounter == global.endInterval1) global.canInput = true;
if (global.beatCounter == global.endInterval2)	global.canInput = true;
if (global.beatCounter == global.endInterval3) global.canInput = true;