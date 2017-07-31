/// @description Movement


vspd += grav;

script_execute(state);

	
// Horizontal Collision
if (!place_free(x+hspd, y)) {
	while(place_free(x+sign(hspd), y)) {
		x += sign(hspd);
	}
	hspd = 0;
}

// Vertical Collision
if (!place_free(x, y + vspd)) {
	while(place_free(x, y+sign(vspd))) {
		y += sign(vspd);
	}
	vspd = 0;
}
	
// Animation

if (hspd != 0) {
	switch (state) {
		case guard_roaming: 
			image_xscale = sign(hspd);
			image_speed = 1;
			sprite_index = spr_guard_walk;
		break;
		case guard_chase:
			image_xscale = sign(hspd);
			image_speed = 2;
			sprite_index = spr_guard_chase;
		break;
		case guard_idle:
			image_speed = 0;
			sprite_index = spr_guard_idle;
		break;
	}
}
else if (state = guard_sleep) {
	image_speed = 1;
	sprite_index = spr_guard_sleep;
}
else {
	image_speed = 0;
	sprite_index = spr_guard_idle;
}

if (vspd != 0) {
	image_speed = 0;
	sprite_index = spr_guard_jump;
}

x += hspd;
y += vspd;