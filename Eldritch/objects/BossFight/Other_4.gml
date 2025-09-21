with (BackgroundMusic) {
    instance_destroy();
}

audio_stop_all(); 
audio_play_sound(BossMusic, 0, 1, 1, undefined, 1.0);
