audio_play_sound(sndExplo5, 0, false);

global.screenshake = max(10, global.screenshake);

repeat (16)
	instance_create_depth(x + random_range(-10, 10), y, 0, objCluster);

instance_destroy();
