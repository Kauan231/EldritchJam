// Draw the player normally
draw_self();

// Draw a small circle at the foot position
var footX = x;
var footY = y; // bottom of sprite

// Debug circle
draw_set_color(c_red);
draw_circle(footX, footY, 4, false); // radius 4 pixels, not filled

// Optional: draw a tiny dot
draw_set_color(c_yellow);
draw_point(footX, footY);