/// @description Insert description here
// You can write your code in this editor
if (!started) && (keyboard_check_pressed(vk_space)) {
	
	//audio_play_sound(snBombBeep,1,0);

	alarm[0] = global.interval;
	alarm[1] = firstBuffer; 
	
	started = true;
}

flashIntensity = max(0, flashIntensity - flashIntensityReductionSpeed);

image_xscale = max(1, image_xscale - imgDeExpansionSpeed);
image_yscale = max(1, image_yscale - imgDeExpansionSpeed);

if (global.beatCounter >= 13) && (audio_is_playing(snBombBeep)) beepGain = max(0,beepGain-beepGainDecreaseSpd);

global.bufferDuration = max(-1,global.bufferDuration-1);