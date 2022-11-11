d3d_transform_set_translation(x, global.object_depth + offset_y, (y - 480) * 2.5 - 32);
draw_set_color(global.color2);
draw_set_alpha(alpha);
draw_text_transformed(0, 0, caption, scale, scale, 0);
draw_set_alpha(1);
