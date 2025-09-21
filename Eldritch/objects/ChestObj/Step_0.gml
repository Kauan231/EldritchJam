if (!place_meeting(x, y, PlayerAction)) {
    isColliding = false;
}

if (isColliding && inst == noone && hasItem) {
    inst = instance_create_layer(x -16, y - 32, "Instances", itemToInstantiate);
}

if (isColliding && inst != noone) {
    inst.targetX = x - 16;
    inst.targetY = y - 64;
}

if (isColliding == false && inst != noone) {
    inst.targetX = x - 16;
    inst.targetY = y - 32;
	
	if(inst.x == x - 16 && inst.y == y - 32) {
		 instance_destroy(inst.id)
		 inst = noone;
	}
}


if (isColliding == false) {
    playedSound = false;
}

if(isColliding && playedSound == false){
	audio_play_sound(ChestOpen, 1, false);
	playedSound = true;
}

