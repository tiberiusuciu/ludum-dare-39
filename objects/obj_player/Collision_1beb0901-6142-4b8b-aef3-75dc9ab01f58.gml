/// @description Insert description here
// You can write your code in this editor

if (hack) {
	with (other) {
		if (other.hackingLeft < 0) {
			if (type == "Door") {
				device.isLocked = !device.isLocked;
				if (device.isLocked) {
					device.image_index = 0;
					device.solid = true;
				}
				else {
					device.image_index = 1;
				}
			}
			else if (type == "Light") {
				device.isOn = !device.isOn;
				if (device.isOn) {
					device.image_index = 0;
				}
				else {
					with (obj_guard) {
						sight = 32 * blocks / 2;
					}
					device.image_index = 1;
					device.alarm[0] = room_speed * random_range(1, 4);
				}
			}
			other.hackingLeft = 120 + random_range(-30, 30);
			obj_player_stats.totalScore += 20;
		}
		if (!other.isHacking) {
			audio_sound_pitch(snd_hack, random_range(.6, 1.2));
			audio_play_sound(snd_hack, 4, true);
		}
		other.isHacking = true;
	}
}