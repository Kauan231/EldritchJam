// Step Event

// If the lever is pressed and cooldown is over
if (countdown_timer <= 0) {
	if(isLeverActive == false) {
		audio_play_sound(LeverSound, 1, false);
	}
	isLeverActive = true;
}


