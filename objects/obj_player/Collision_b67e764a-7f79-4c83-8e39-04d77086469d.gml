/// @description Insert description here
// You can write your code in this editor
show_debug_message("COLLISION")
show_debug_message("IS HIDING " + string(isHiding));
show_debug_message("guard_sleep" + string(other.state == guard_sleep))
if (!isHiding && !(other.state == guard_sleep) && !isHurt) {
	image_blend = make_color_rgb(220, 150, 150);
	vspd = jspd / 2;
	hspd = (sign(x - other.x)) * 8;
	isHurt = true;
	audio_sound_pitch(snd_hurt, random_range(.6, 1.2));
	audio_play_sound(snd_hurt, 4, false);
	alarm[0] = 20 + random_range(0, 10);
}