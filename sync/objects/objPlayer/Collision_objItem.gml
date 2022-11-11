if (other.dmode) exit;
oldhp = global.hp;
if (other.image_single = 0) {
 if (global.hp < 3) {
  global.hp += 1;
  global.ibonus = 0;
 } else {
  if (global.ibonus = 0)
   show_flashstring(x, y - 24, "MAX!", 5);
  else
   show_flashstring(x, y - 24, "MAX! +" + string(global.ibonus), 5);   
  global.ibonus += 1;
 }
 audio_play_sound(sndPowerUp, 0, false);
 score += 100 + global.pscore + global.ibonus;
} else {
 if (invin = 0) {
  if (global.hp > 0) {
   global.screenshake = max(24, global.screenshake);
   invin = 120;
   global.hp -= 1;
   global.ibonus = 0;
   audio_play_sound(sndDamaged, 0, false);
   score += 100 + global.pscore;
  } else {
   if (global.ibonus = 0)
    show_flashstring(x, y - 24, "MIN!", 5);
   else
    show_flashstring(x, y - 24, "MIN! X" + string(global.ibonus + 1), 5);   
   global.ibonus += 1;
   score += 100 * (global.ibonus + 1) + global.pscore;
  }
 }
 audio_play_sound(sndPowerDown, 0, false);
}
if (oldhp != global.hp)
 show_flashstring(x, y - 24, string(global.hp) + "/3!", 5);
global.pscore += 3;
with (other)
 instance_destroy();

