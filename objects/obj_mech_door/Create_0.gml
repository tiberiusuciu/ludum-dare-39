/// @description Insert description here
// You can write your code in this editor

image_speed = 0;

if (!obj_player_stats.isExitLocked) {
	isOpened = true;
	image_index = 1;
	solid = false;
}
else {
	isOpened = false;
	image_index = 0;
	solid = true;
}