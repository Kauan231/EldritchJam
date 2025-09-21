// Create Event
bossLife = 100;
leversActive = [false, false, false, false];

// Activate lever
function activateLever(leverId) {
    leversActive[leverId - 1] = true; // leverId starts at 1
}
