d3d_transform_set_translation(x, global.object_depth, (y - 480) * 2.5 - 32);
draw_set_color(global.color1);
draw_tcircle(0, 0, csiz, min(csiz, chei), 0);
d3d_transform_set_identity();
