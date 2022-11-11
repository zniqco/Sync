d3d_set_projection_normal();
gpu_set_fog(1, global.background_color, 0, 1200);
gpu_set_ztestenable(false);
draw_set_alpha(0.5);
draw_set_color(make_color_hsv((global.color + 9) % 255, 96 * bsat, 255 * bval));
for (i = 0; i < 4; i += 1) {
 d3d_model_draw(dmodel, 320, 160, scroll - i * 400 - 100, -1);
}
d3d_transform_set_identity();
draw_set_color(make_color_hsv((global.color - 7) %  255, 192 * bsat, 255 * bval));
for (i = 0; i < 5; i += 1) {
 dy1 = i * 64 + 16;
 dy2 = i * 64 + 48;
 d3d_primitive_begin(pr_trianglefan);
 d3d_vertex(-60, dy1, 0);
 d3d_vertex(-60, dy1, -1600);
 d3d_vertex(-60, dy2, -1600); 
 d3d_vertex(-60, dy2, 0);
 d3d_primitive_end();
 d3d_primitive_begin(pr_trianglefan);
 d3d_vertex(700, dy1, 0);
 d3d_vertex(700, dy1, -1600);
 d3d_vertex(700, dy2, -1600); 
 d3d_vertex(700, dy2, 0);
 d3d_primitive_end();
}
gpu_set_ztestenable(true);
draw_set_alpha(1);

