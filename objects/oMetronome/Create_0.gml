/// @description Insert description here
// You can write your code in this editor
started = false;

flashIntensityMax = 1;
flashIntensity = 0;
flashIntensityReductionSpeed = .05;

imgExpansionSize = 2; //multiplier
imgDeExpansionSpeed = .1;
global.interval = 24;
global.bufferWindow = 6;
global.bufferDuration = 0;
firstBuffer = global.interval - global.bufferWindow/2;

global.beatCounter = 0;
global.totalBeats = 640;

global.startInput = 80;
//global.startInput = 10;
global.endInput = 640;

global.readyGetSetDuration = 4 - 1;
global.andStopDuration = 2 - 1;

global.startInterval1 = 129;
global.endInterval1 = 144;

global.startInterval2 = 200;
global.endInterval2 = 208;

global.startInterval3 = 264;
global.endInterval3 = 272;

global.canInput = false;

global.OKcounter = 0;
global.PerfectCounter = 0;

beepGain = 1;
beepGainDecreaseSpd = .03;

//image_xscale = imgExpansionSize;
//image_yscale = imgExpansionSize;



