/// @description Insert description here
// You can write your code in this editor

if (interact) {
	if (!obj_player_stats.safeIsLocked) {
		instance_destroy(other);
		obj_player_stats.lootTaken = true;
		audio_sound_pitch(snd_vault, random_range(.6, 1.2));
		audio_play_sound(snd_vault, 4, false);
	}
}