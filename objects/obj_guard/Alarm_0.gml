/// @description Guard is about to roam

if (state != guard_sleep) {
	state = guard_roaming;

	dstToWalk = random_range(64, 128) * choose(-1, 1);
}
