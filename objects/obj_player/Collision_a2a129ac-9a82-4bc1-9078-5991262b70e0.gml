/// @description Insert description here
// You can write your code in this editor

if (hack) {
	if (hackingLeft < 0) {
		switch (other.type) {
			case "Vault":
				obj_player_stats.safeIsLocked = false;
				with (obj_lightbulb) {
					isOn = false;
					image_index = 1;
				}
			break;
			case "Door":
				obj_player_stats.isExitLocked = false;
			break;
		}
		other.image_index = 1;
		hackingLeft = 120 + random_range(-30, 30);
		obj_player_stats.totalScore += 100;
	}
	if (!isHacking) {
		audio_sound_pitch(snd_hack, random_range(.6, 1.2));
		audio_play_sound(snd_hack, 4, true);
	}
	isHacking = true;
}