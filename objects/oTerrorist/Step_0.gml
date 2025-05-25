/// @description Insert description here
// You can write your code in this editor
if (instance_exists(oCounterTerrorist)) {
	if (oCounterTerrorist.hit = true) {
		instance_create_layer(x,y,"Instances",oDeadTerrorist);
		instance_destroy();
	}
}

x = max(xTo,x-spd);

