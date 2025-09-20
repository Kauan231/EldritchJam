// Step Event
countdown_timer--;

if (countdown_timer < 0) {
    if (global.numberOfEntities < turretLimit) {
        instance_create_layer(x, y, "Instances", EnergyOrb);
        global.numberOfEntities += 1;
    }

    // Reset with random offset
    countdown_timer = irandom_range(room_speed div 2, room_speed * 2);
}
