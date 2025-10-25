// --- Update idle animation ---

// Vertical movement (floating)
angle_y += speed_y;
y = origin_y + sin(angle_y) * amplitude_y;

// Rotation (subtle sway)
angle_rot += speed_angle;
image_angle = origin_angle + sin(angle_rot) * amplitude_angle;

x = x + sin(angle_y * 0.5) * x_offset;