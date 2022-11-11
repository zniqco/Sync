d3d_set_projection_flat();
gpu_set_ztestenable(false);
draw_set_color(global.color2);
draw_set_alpha(alpha);
draw_text_transformed(global.spx + 2.5 + ascale / 2, 300 + push, caption, 4 + ascale, 4 + ascale, 0);
draw_set_alpha(1);
gpu_set_ztestenable(true);

