// Create Event
bossLife = 100;
bossMaxLife = 100;
instancesOfTurrets = 0;
global.winScreenTriggered = false;

function drainHealth() {
	bossLife = bossLife - 10;
}