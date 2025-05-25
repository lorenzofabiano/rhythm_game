/// @description Insert description here
// You can write your code in this editor

image_xscale = imgExpansionSize;
image_yscale = imgExpansionSize;

flashIntensity = flashIntensityMax;

global.beatCounter++;

if (beepGain != 0) audio_play_sound(snBombBeep,1,0,beepGain);

if (global.beatCounter == 17) && !(audio_is_playing(snAtomicAmnesia)) {
	audio_play_sound(snAtomicAmnesia,1,0);
	audio_stop_sound(snBombBeep);
}

//intro
if (global.beatCounter == global.startInput - global.readyGetSetDuration - 4) audio_play_sound(snReadyGetSet,1,0);
if (global.beatCounter == global.startInput -3) audio_play_sound(snThree,1,0);
if (global.beatCounter == global.startInput -2) audio_play_sound(snTwo,1,0);
if (global.beatCounter == global.startInput -1) audio_play_sound(snOne,1,0);
if (global.beatCounter == global.startInput) audio_play_sound(snGO,1,0);

//first interval
if (global.beatCounter == global.startInterval1 - global.andStopDuration) audio_play_sound(snAndStop,1,0);
if (global.beatCounter == global.startInterval1) global.canInput = false;
if (global.beatCounter == global.endInterval1 -3) audio_play_sound(snThree,1,0);
if (global.beatCounter == global.endInterval1 -2) audio_play_sound(snTwo,1,0);
if (global.beatCounter == global.endInterval1 -1) audio_play_sound(snOne,1,0);
if (global.beatCounter == global.endInterval1) audio_play_sound(snGO,1,0);

//second interval
if (global.beatCounter == global.startInterval2 - global.andStopDuration) audio_play_sound(snAndStop,1,0);
if (global.beatCounter == global.startInterval2 + 1) global.canInput = false;
if (global.beatCounter == global.endInterval2 -3) audio_play_sound(snThree,1,0);
if (global.beatCounter == global.endInterval2 -2) audio_play_sound(snTwo,1,0);
if (global.beatCounter == global.endInterval2 -1) audio_play_sound(snOne,1,0);
if (global.beatCounter == global.endInterval2) audio_play_sound(snGO,1,0);

//third interval
if (global.beatCounter == global.startInterval3 - global.andStopDuration) audio_play_sound(snAndStop,1,0);
if (global.beatCounter == global.startInterval3) global.canInput = false;
if (global.beatCounter == global.endInterval3 -3) audio_play_sound(snThree,1,0);
if (global.beatCounter == global.endInterval3 -2) audio_play_sound(snTwo,1,0);
if (global.beatCounter == global.endInterval3 -1) audio_play_sound(snOne,1,0);
if (global.beatCounter == global.endInterval3) audio_play_sound(snGO,1,0);

//outro
if (global.beatCounter == global.endInput - global.andStopDuration) audio_play_sound(snAndStop,1,0);

if !(global.beatCounter == global.totalBeats) {
  alarm[0] = global.interval;
} else {
	global.canInput = false;
	instance_create_layer(x,y,"Instances",oResults);
}

