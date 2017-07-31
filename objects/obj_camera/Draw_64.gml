/// @description Insert description here
// You can write your code in this editor

// draw_set_color(c_black);
// draw_rectangle(10, 10, 10 + 32, 10 + 194, false);

// draw_set_color(c_aqua);

// ADD SPRITES

var prevY = 14;

var healthText = "Health: " + string(obj_player_stats.playerHealth);

draw_text_color(view_wport[0] - 140, 14, healthText , c_white, c_white, c_white, c_white, 1);


if (instance_exists(obj_player_stats)) {
	
	if (obj_player_stats.forgotCordDialog) {
		var powerLeftText = "Remaining Power: " + string(obj_player_stats.laptopPower);
		draw_text_color(50, 14, powerLeftText , c_white, c_white, c_white, c_white, 1);
		for(var i = 20; i <= obj_player_stats.maxPower; i += 20) {
			if (i <= obj_player_stats.laptopPower) {
				draw_rectangle(14, prevY, 10 + 28, prevY + 20, true);
				prevY = prevY + 20 + 3;	
			}
		}
	}
	prevY = 14;
	for(var i = 0; i < obj_player_stats.playerHealth; i++) {
		draw_rectangle(view_wport[0] - 40, prevY, view_wport[0] - 16, prevY + 20, true);
		prevY = prevY + 20 + 3;	
	}
}