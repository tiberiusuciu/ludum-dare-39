/// @description Insert description here
// You can write your code in this editor

switch (room) {

	case room03:
		if (forgotCordDialog) {
			var forgotDialog1 = "You realise you have forgotten your power cord!";
			var forgotDialog2 = "You better do the hacking quickly!";
			var forgotDialog3 = "If you want to get out of here safe and sound!";
			draw_text_color(50, view_hport[0]/3 - 40, forgotDialog1, c_white, c_white, c_white, c_white, 1);
			draw_text_color(50, view_hport[0]/3 - 20, forgotDialog2, c_white, c_white, c_white, c_white, 1);
			draw_text_color(50, view_hport[0]/3, forgotDialog3, c_white, c_white, c_white, c_white, 1);
		}
	break;
	case room01:
		if (sneakDialog) {
			var sneakText = "Toggle Sneak Mode with Z";
			draw_text_color(50, view_hport[0]/3 - 40, sneakText, c_white, c_white, c_white, c_white, 1);
		}
	break;
	
	case room02:
		if (hackDialog) {
			var hackText = "Hack Doors, Lights and more By Pressing E nearby outlets or computers";
			var hackText2 = "Also Press E To Interact with doors, stairs and more";
			draw_text_color(50, view_hport[0]/3 - 40, hackText, c_white, c_white, c_white, c_white, 1);
			draw_text_color(50, view_hport[0]/3 - 20, hackText2, c_white, c_white, c_white, c_white, 1);
		}
	break;
	
	case room04:
		if (hideDialog) {
			var hideText = "Hide by holding S Behind Objects that are in front of you.";
			var hideText2 = "in order to not be seen by guards!"
			draw_text_color(50, view_hport[0]/3 - 40, hideText, c_white, c_white, c_white, c_white, 1);
			draw_text_color(50, view_hport[0]/3 - 20, hideText2, c_white, c_white, c_white, c_white, 1);
		}
	break;

	case room10:
		draw_set_halign(fa_left);
		
		
		var scoreText = "Score: " + string(totalScore);
		var openedVault = "Opened Vault: " + string(!safeIsLocked * 500);
		var lootTakenText = "LootTaken: " + string(lootTaken * 1000);
		var separation = "--------------------------------------"
		var totalScoreToDisplay = "TOTAL SCORE: " + string(totalScore + !safeIsLocked * 500 + lootTaken * 1000);	
		draw_text_color(view_wport[0] / 3, view_hport[0]/3 - 40, scoreText, c_white, c_white, c_white, c_white, 1);
		draw_text_color(view_wport[0] / 3, view_hport[0]/3 - 20, openedVault, c_white, c_white, c_white, c_white, 1);
		draw_text_color(view_wport[0] / 3, view_hport[0]/3, lootTakenText, c_white, c_white, c_white, c_white, 1);
		draw_text_color(view_wport[0] / 3, view_hport[0]/3 + 20, separation, c_white, c_white, c_white, c_white, 1);
		draw_text_color(view_wport[0] / 3, view_hport[0]/3 + 40, totalScoreToDisplay, c_white, c_white, c_white, c_white, 1);
		
		
		var thanks = "Thank you for playing the enitirety of my game made for Ludum Dare #39 :^)"
		var credits = "Made by @SuciuTiberius - 2017"
		

		draw_set_halign(fa_center);
		draw_text_color(view_wport[0] / 2, view_hport[0]/3 + 100, thanks, c_white, c_white, c_white, c_white, 1);
		draw_text_color(view_wport[0] / 2, view_hport[0]/3 + 120, credits, c_white, c_white, c_white, c_white, 1);
		break;
}