// Draw Event
if (spriteToDisplay != Floor && doorOpened == false) {
    // Only draw if we have a sprite and door is closed
    draw_sprite(spriteToDisplay, 0, x, y);
} 
// else do nothing (don’t draw anything)
