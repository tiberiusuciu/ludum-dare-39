if (instance_exists(obj_player)) {
	if (distance_to_object(obj_player) <= sight && obj_player.hspd > 3) {
		isSleeping = false;
		state = guard_chase;
	}
}