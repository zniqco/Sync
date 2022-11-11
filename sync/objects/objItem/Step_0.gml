if (vspeed < 3)
 vspeed += 0.1;
angle += 5;
if (dmode)
 image_alpha -= 0.04;
if (y > 496 || image_alpha <= 0)
 instance_destroy();

