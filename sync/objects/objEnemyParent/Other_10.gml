audio_play_sound(dsound, 0, false);

global.screenshake = max(10, global.screenshake);

repeat (10)
	instance_create_depth(x, y, 0, objCluster);

instance_destroy();
