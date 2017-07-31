/// @description Insert description here
// You can write your code in this editor

obj_player_stats.playerHealth++;
instance_destroy(other);
audio_sound_pitch(snd_battery, random_range(.6, 1.2));
audio_play_sound(snd_battery, 4, false);