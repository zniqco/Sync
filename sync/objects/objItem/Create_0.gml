dmode = 0;
vspeed = -2.5;
angle = 0;

image_alpha = 0.75;
image_xscale = 5;
image_yscale = 5;

if (random(global.prate) < 1)
 image_single = 0;
else 
 image_single = 1;

with (objGameGlobal) {
 lastitem = other.image_single;
 event_user(0);
}

alarm[0] = 2;
icol = 0;

