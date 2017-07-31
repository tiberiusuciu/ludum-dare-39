// @description Guard is Chasing

if (instance_exists(obj_player)) {
	if (distance_to_object(obj_player) <= sight && !obj_player.isHiding) {
		hspd = sign(obj_player.x - x) * runspd;
	}
	else {
		alarm[0] = room_speed * random_range(1, 4);
		hspd = 0;
		sight = 32 * blocks;
		state = guard_idle;
	}
}