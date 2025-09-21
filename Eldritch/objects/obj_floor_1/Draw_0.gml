draw_self();

// --- Interaction prompt above player ---
if (isColliding) {
    var px = PlayerAction.x;
	var py = PlayerAction.y;

	// Use a smaller font for the prompt
	draw_set_font(fnt_small);  // Replace fnt_small with your small font
	var msg = "Press 'E' to interact";

	var tw = string_width(msg);
	var th = string_height(msg);

	// Background box for the prompt
	draw_set_color(c_black);
	draw_rectangle(px + 48, py - 20, px + 48 + tw + 4, py - 20 + th + 4, false);

	// Draw the prompt text
	draw_set_color(c_lime);
	draw_text(px + 50, py - 16, msg);
}