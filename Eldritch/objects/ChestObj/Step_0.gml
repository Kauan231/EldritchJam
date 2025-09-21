if (!place_meeting(x, y, PlayerAction)) {
    isColliding = false;
}

if (isColliding && inst == noone && hasItem) {
    inst = instance_create_layer(x, y, "Instances", itemToInstantiate);
}

if (isColliding && inst != noone) {
    inst.targetX = x;
    inst.targetY = y - 32;
}

if (isColliding == false && inst != noone) {
    inst.targetX = x;
    inst.targetY = y;
	
	if(inst.x == x && inst.y == y) {
		 instance_destroy(inst.id)
		 inst = noone;
	}
}

