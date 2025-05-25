/// @description Insert description here
// You can write your code in this editor

var keyPress = keyboard_check_pressed(vk_space);
//var canInput = ((global.beatCounter >= global.startInput) && (global.beatCounter < global.endInput));
//var canInput = true;

if ((keyPress) && (global.canInput)) {

	image_xscale = imgExpansionSize;
	image_yscale = imgExpansionSize;
	sprite_index = sCtAnimated;
	
	if (global.bufferDuration >= 0) {
		
		//hit a frame perfect beat
		if (global.bufferDuration == global.bufferWindow/2) {
			audio_play_sound(snHeadshot,1,0);
			perfectHit = true;
		}	
		
		//hit a beat within the buffer window
		audio_play_sound(snUSPS,1,0);
		hit = true;
		pistolRecoil = pistolRecoilMax;
		instance_create_layer(x,y,"Bullets",oBullet);
		
		//delete previous messages
		instance_destroy(oOK);
		instance_destroy(oPERFECT);
		
		
		if !perfectHit {
			global.OKcounter++;
			instance_create_layer(x,y-10,"Messages",oOK);
		}
		else {
			global.PerfectCounter++;
			instance_create_layer(x,y-10,"Messages",oPERFECT);
		}
	}
	else {
		audio_play_sound(snKick,1,0);
		hit = false;
		instance_create_layer(x,y,"Instances",oDeadCounterTerrorist);
		instance_destroy();
	}
	
} else {
	hit = false;
	perfectHit = false;
}

image_xscale = max(base_scale, image_xscale - imgDeExpansionSpeed);
image_yscale = max(base_scale, image_yscale - imgDeExpansionSpeed);

x = min(xTo,x+spd);

pistolRecoil = max(0,pistolRecoil-1);