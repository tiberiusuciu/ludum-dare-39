/// @description Movement


var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var space = keyboard_check_pressed(vk_space);
var run = keyboard_check(vk_lshift);
hack = keyboard_check(ord("E"));
interact = keyboard_check_pressed(ord("E"));
hideKey = keyboard_check(ord("S"));

if (hideKey && isHiding) {
	left = false;
	right = false;
	space = false;
	run = false;
	interact = false;
}
else {
	isHiding = false;
	
}

if (keyboard_check_pressed(ord("Z"))) {
	isSneaking = !isSneaking;
}
 
if(!hack) {
	isHacking = false;
}

if (isHacking) {
	left = false;
	right = false;
	space = false;
	run = false;
	hackingLeft--;
}

var imageSpeed = 1;

if (run) {
	hspd = (right - left) * runspd;
	imageSpeed = 2;
}
else if (isSneaking) {
	hspd = (right - left) * sneakspd;
	imageSpeed = .5;
}
else {
	if (!isHurt) {
		hspd = (right - left) * wlkspd;
		imageSpeed = 1;
	}
}

vspd += grav;


// Horizontal Collision
if (!place_free(x+hspd, y)) {
	while(place_free(x+sign(hspd), y)) {
		x += sign(hspd);
	}
	hspd = 0;
}


if (space && place_meeting(x, y+1, obj_solid)) {
	vspd += jspd;
	audio_sound_pitch(snd_jump, random_range(.6, 1.2))
	audio_play_sound(snd_jump, 4, false);
}

// Vertical Collision
if (!place_free(x, y + vspd)) {
	if (sign(vspd)) {
		// Floor Collision
		while(place_free(x, y + sign(vspd))) {
			y += sign(vspd);
		}
		
		vspd = 0;
		
		//if (!place_free(x, y - 1)) {
		//	vspd = grav;
		//}
		//else {
		//	vspd = 0;
		//}
	}
	else {
		// Ceiling Collision
		while(place_free(x, y + sign(vspd))) {
			y += sign(vspd);
		}
		vspd = grav;
	}
}

x += hspd;
y += vspd;


// Animations
if (hspd != 0) {
	sprite_index = spr_player_walk;
	image_speed = imageSpeed;
	if (sign(hspd)) {
		image_xscale = 1;
	}
	else {
		image_xscale = -1;
	}
}
else {
	if (!isHacking) {
		sprite_index = spr_player_idle;
		image_speed = 0;
	}
}

if (vspd != 0) {
	image_speed = 0;
	sprite_index = spr_player_jump;
	if(sign(vspd)) {
		image_index = 1;
	}
	else {
		image_index = 0;
	}
}

if (isHiding) {
	sprite_index = spr_player_hide;
	image_speed = 0;
}
else if (isHacking) {
	sprite_index = spr_player_hack;
	image_speed = 1;	
}


// Sound managment

if (!isHacking) {
	audio_stop_sound(snd_hack);
}