/// @description Insert description here
// You can write your code in this editor

isHurt = false;
image_blend = c_white;
obj_player_stats.playerHealth--;
if (obj_player_stats.playerHealth <= 0) {
	game_restart();
}