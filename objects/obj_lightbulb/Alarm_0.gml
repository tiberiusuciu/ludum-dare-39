/// @description Insert description here
// You can write your code in this editor



if (!isOn) {
	isOn = true
	image_index = 0;
	audio_sound_pitch(snd_light, random_range(.6, 1.2));
	audio_play_sound(snd_light, 4, false);
}