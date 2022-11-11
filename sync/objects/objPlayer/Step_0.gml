if (invin > 0) {
 ivis -= 1;
 if (ivis <= 0) {
  visible = !visible;
  ivis = 2;
 }
 invin -= 1;
} else {
 visible = 1;
 invin = 0;
}

kl = keyboard_check(vk_left);
kr = keyboard_check(vk_right);
if (kl)
 hspd -= 1.6;
if (kr)
 hspd += 1.6;
if (!(kl ^ kr)) {
 if (abs(hspd) <= 1.6)
  hspd = 0;
 else
  hspd -= sign(hspd) * 1.6;
}
if (abs(hspd) > 12)
 hspd = 12 * sign(hspd);

tx = x + hspd;

angle += ((kr - kl) * 10 - angle) / 10;
global.tbang = -angle / 50;

if (tx < 0) {
 tx = 0;
 hspd = 0;
} else if (tx > 640) {
 tx = 640;
 hspd = 0;
}

x = tx;
global.spx = x;

if (delayin > 0)
 delayin -= 1;
if (pushin)
 event_user(0);

