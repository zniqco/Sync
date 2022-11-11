gpu_set_ztestenable(false);
draw_set_color(make_color_hsv(global.color - 216, 255, 224));
d3d_transform_set_rotation_y(lengthdir_x(10, rots * 0.9));
d3d_transform_add_rotation_z(lengthdir_y(10, rots * 0.9));
d3d_transform_add_translation(320, 160, zdep);
draw_sprite_ext(sprLogo, 0, 0, 0, 0.7, 0.7, 0, 0, alpha);
d3d_transform_set_identity();
gpu_set_ztestenable(true);

