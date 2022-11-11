d3d_transform_set_rotation_x(0);
d3d_transform_add_translation(x, z, (y - 480) * 2.5 - 32);
draw_sprite_ext(sprite_index, -1, 0, 0, 12, 12, 0, global.color3, alpha);

