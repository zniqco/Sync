d3d_transform_set_translation(x, global.object_depth, (y - 480) * 2.5 - 32);
if (flash) {
 draw_sprite_ext(sprite_index, -1, 0, 0, image_xscale, image_yscale, 0, global.color3l, image_alpha * 0.7);
 flash = 0;
} else {
 draw_sprite_ext(sprite_index, -1, 0, 0, image_xscale, image_yscale, 0, global.color3, image_alpha);
}

