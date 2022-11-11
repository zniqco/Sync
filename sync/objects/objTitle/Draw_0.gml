gpu_set_ztestenable(false);
draw_set_color(global.color2);
d3d_transform_set_rotation_x(90);
d3d_transform_add_translation(global.spx, -20, -216 - zdep / 4);
draw_text_transformed(4, -32, string(highscore_value(1)), 8, 4, 0);
draw_text_transformed(2, -15, "HIGH-SCORE", 4, 2, 0);
d3d_transform_set_rotation_y(lengthdir_x(8, rots * 0.9));
d3d_transform_add_rotation_z(lengthdir_y(16, rots * 0.9));
d3d_transform_add_translation(320, 160, zdep);
draw_set_color(global.color1);
draw_text_transformed(15, -36, "SYNC", 30, 30, 0);
draw_text_transformed(2.5, 72, "2010 ZNIQ.CO / MUSIC BY JAP", 5, 5, 0);

draw_set_color(global.color2);

if (dvis)
 draw_text_transformed(4, 160, "PRESS ENTER KEY", 8, 8, 0);
draw_set_color(make_color_hsv((global.color - 216) % 255, 128, 192));
d3d_transform_set_identity();
gpu_set_ztestenable(true);

