with (BackgroundMusic) {
    instance_destroy();
}

with (BossMusic) {
    instance_destroy();
}


audio_stop_all(); 
audio_play_sound(Ambience, 0, 1, 1, undefined, 1.0);
