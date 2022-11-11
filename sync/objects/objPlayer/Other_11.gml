if (global.hp > 0) {
 global.screenshake = max(24, global.screenshake);
 global.hp -= 1;
 with (other)
  event_user(0);
 invin = 120;
} else {
 global.screenshake = max(24, global.screenshake);
 instance_create_depth(x, y - 16, 0, objPlayerExplo);
 instance_destroy();
 audio_stop_sound(sndBGM);
 show_wavestring("SEE YOU NEXT TIME!", 6);
 highscore_add("", score);
 with (objGameGlobal)
  alarm[2] = 180;
}
audio_play_sound(sndDamaged, 0, false);

