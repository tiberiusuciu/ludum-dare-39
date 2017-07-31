/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player)) {
	if (distance_to_object(obj_player) <= range) {
		if (obj_player.interact) {
			if (!isLocked) {
				isOpened = !isOpened;
				solid = !solid;
				if (isOpened) {
					image_index = 2;
				}
				else {
					image_index = 1;
				}
			}
			audio_sound_pitch(snd_door, random_range(.6, 1.2));
			audio_play_sound(snd_door, 4, false);
		}
	}
}