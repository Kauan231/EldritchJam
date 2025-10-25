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


// --- Update idle animation ---

// Vertical movement (floating)
angle_y += speed_y;
y = origin_y + sin(angle_y) * amplitude_y;

// Rotation (subtle sway)
angle_rot += speed_angle;
image_angle = origin_angle + sin(angle_rot) * amplitude_angle;

x = x + sin(angle_y * 0.5) * x_offset;