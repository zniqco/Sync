if (dmode) exit;
if (other.used = 0) {
 audio_play_sound(sndHit, 0, false);
 hp -= other.pow;
 other.used = 1;
 flash = 1;
 
 if (hp <= 0) {
  if (global.pscore > 0)
   show_flashstring(x, y, "+" + string(global.pscore), 5);
  score += exscore + global.pscore;
  global.pscore += expscore;
  with (objGameGlobal) {
   alarm[0] = -1;
   alarm[1] = 30;
   with (objEnemyParent)
    dmode = 1;
   with (objEnemyMissile)
    dmode = 1;
  }
  event_user(0);
  exit;
 }
 score += 1;
}

