var player = instance_find(PlayerAction, 0);

if (player != noone && !player.isDead) {

    // --- Constants for positioning ---
    var barWidth  = 200; // Width of the full HP bar
    var barHeight = 20;  // Height of the bar
    var padding   = 16;  // Distance from the screen edge

    var barX = display_get_gui_width() - barWidth/2 - padding;
    var barY = padding + barHeight/2;

    // --- Ensure bossLife exists ---
    var currentHP = 0;
    if (variable_instance_exists(id, "bossLife")) {
        currentHP = clamp(bossLife, 0, bossMaxLife);
    }

    // --- Background bar (grey) ---
    draw_set_color(c_gray);
    draw_rectangle(barX - barWidth/2, barY - barHeight/2,
                   barX + barWidth/2, barY + barHeight/2, false);

    // --- HP foreground (red) ---
    var hpWidth = (currentHP / bossMaxLife) * barWidth;
    draw_set_color(c_red);
    draw_rectangle(barX - barWidth/2, barY - barHeight/2,
                   barX - barWidth/2 + hpWidth, barY + barHeight/2, false);

    // --- HP Text ---
    draw_set_font(fnt_big);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_text(barX, barY, string(currentHP) + " / " + string(bossMaxLife));
}

if (variable_instance_exists(id, "bossLife") && bossLife <= 0) {
    if (!global.winScreenTriggered) {
        global.winScreenTriggered = true;
		with(PlayerAction) {
			instance_destroy()
		}
        room_goto(WinningRoom); // Or create a Draw overlay in current room
    }
}
