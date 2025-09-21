// Draw the chest sprite
draw_self();

// --- Interaction prompt above player ---
if (isColliding && hasItem) {
	// --- Lore text on the left ---
	draw_set_font(fnt_big);        // Bigger font for lore
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);


	// Draw box behind the lore text for readability
	var loreX = 32;
	var loreY = 32;
	var loreWidth = 200;
	var loreHeight = 60;

	draw_set_color(c_black);
	draw_rectangle(loreX, loreY, loreX + loreWidth, loreY + loreHeight, false);

	// Draw the lore text itself
	draw_set_color(c_white);
	draw_text(loreX + 8, loreY + 8, loreMsg);
    
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
