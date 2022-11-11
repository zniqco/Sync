d3d_transform_set_rotation_y(angle);
d3d_transform_add_translation(x, global.object_depth, (y - 480) * 2.5 - 32);
if (icol = 0) {
 if (image_single = 0)
  dcol = global.color1l;
 else
  dcol = global.color3l;
} else {
 if (image_single = 0)
  dcol = global.color1;
 else
  dcol = global.color3;
}
draw_sprite_ext(sprite_index, -1, 0, 0, image_xscale, image_yscale, 0, dcol, image_alpha);

