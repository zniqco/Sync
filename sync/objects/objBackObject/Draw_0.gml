d3d_set_projection_normal();
gpu_set_blendmode(bm_add);
gpu_set_ztestenable(false);
d3d_transform_set_scaling(scale, scale, scale);
d3d_transform_add_rotation_z(angle);
d3d_transform_add_rotation_y(90);
d3d_transform_add_rotation_z(bangle);
d3d_transform_add_translation(x, z, (y - 480) * 2.5 - 32);
draw_set_alpha(alpha);
draw_set_color(global.color2);
d3d_model_draw(global.lmodel[mind], 0, 0, 0, -1);
draw_set_alpha(1);
gpu_set_ztestenable(true);
gpu_set_blendmode(bm_normal);

