if (delayin = 0) {
 audio_play_sound(sndShot, 0, false);
 dx = x - global.hp * 3;
 dpow = (2 + global.hp * 0.3) / (global.hp + 1);
 ddir = 270 + global.hp * 1.5;
 for (i = 0; i < global.hp + 1; i += 1) {
  inst = instance_create_depth(dx + i * 6, y - 4, 0, objMissile);
  inst.speed = -28;
  inst.direction = ddir - i * 3;
  inst.pow = dpow;
 }
 delayin = 3;
}

