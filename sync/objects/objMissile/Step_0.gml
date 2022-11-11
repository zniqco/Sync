if (used) {
 speed -= speed / 3;
 image_alpha -= 0.1;
}
if (image_alpha < 0 || y < 48)
 instance_destroy();

