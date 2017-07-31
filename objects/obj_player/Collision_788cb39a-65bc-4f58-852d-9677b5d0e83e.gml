/// @description Insert description here
// You can write your code in this editor

if (!isHurt) {
	if (!isHiding && hideKey) {
		audio_sound_pitch(snd_hide, random_range(.6, 1.2));
		audio_play_sound(snd_hide, 4, false);
	}
	isHiding = hideKey;
}