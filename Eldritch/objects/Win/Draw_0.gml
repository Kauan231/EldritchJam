// Draw Event
draw_set_color(c_white);
draw_set_font(fnt_big);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Creepy Lovecraftian message
var msg = "THE WORLD BREATHES...\n\nAND YET YOU SURVIVE...\n\nBut for how long?";
draw_text(display_get_gui_width()/2, display_get_gui_height()/2, msg);

// Optional: add fading effect
draw_set_alpha(0.5 + 0.5 * sin(current_time/1000));
