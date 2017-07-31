// @description Guard is Roaming

if (instance_exists(obj_player)) {
	if (distance_to_object(obj_player) <= sight && !obj_player.isHiding) {
		state = guard_chase;
	}
}
	
hspd = sign(dstToWalk) * wlkspd * random_range(.5, 1.2);

if (abs(dstToWalk) > 5) {
	dstToWalk = max(abs(dstToWalk - hspd), 0) * sign(dstToWalk);
}
else {
	hspd = 0;
	dstToWalk = 0;
	state = guard_idle;
	alarm[0] = room_speed * random_range(1, 4);
} 