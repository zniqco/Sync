d3d_transform_set_rotation_x(-90);
d3d_transform_add_translation(x, global.object_depth, (y - 480) * 2.5 - 32);
draw_sprite_ext(sprite_index, -1, 0, 0, image_xscale, image_yscale, direction + 90, global.color1, image_alpha);

