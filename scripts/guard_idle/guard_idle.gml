// @description Guard is Idle
//collision_line()

if (instance_exists(obj_player)) {
	if (distance_to_object(obj_player) <= sight && !obj_player.isHiding) {
		state = guard_chase;
	}
}

