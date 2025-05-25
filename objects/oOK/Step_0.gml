/// @description Insert description here
// You can write your code in this editor

if (duration < 0) instance_destroy();

if (duration < startBlinkThreshold) && (startBlink == false) {
	alarm[0] = blinkDuration;
	startBlink = true;
}

stretch = min(stretch+stretchSpd,1);
//fade = max(0,fade-fadeOutSpd);

image_yscale = stretch;
y = max(y-moveSpd,moveTo);
image_alpha = vsbl;



duration--;
