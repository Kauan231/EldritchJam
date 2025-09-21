//DeleteExcessTurrets


// Step Event
if (shootBean) {
    var bossController = instance_find(BossController, 0);
    if (bossController != noone) {
        // store target position for drawing later
        targetX = bossController.x;
        targetY = bossController.y;
        isShooting = true; 
    }
	shootBean = false;
	countdown_timer = room_speed + 60;
	audio_play_sound(Laser, 1, false)
	bossController.drainHealth();
}

if(isShooting) {
	// Step Event
	countdown_timer--;

	if (countdown_timer < 0) {
		isShooting = false;
	}
}
