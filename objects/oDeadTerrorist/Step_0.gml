/// @description Insert description here
// You can write your code in this editor

if (canJump) {
	vsp = -jumpForce;
	canJump = 0;
}

vsp += grv;
image_xscale += zsp;
image_yscale += zsp;
image_angle += rsp;


x += hsp;
y += vsp;