/// @description Insert description here
// You can write your code in this editor
if (interact) {
	room_goto(other.nextRoom);
	audio_sound_pitch(snd_stairs, random_range(.6, 1.2));
	audio_play_sound(snd_stairs, 4, false);
}