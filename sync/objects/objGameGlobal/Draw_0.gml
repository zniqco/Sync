gpu_set_ztestenable(false);
draw_set_color(global.color2);
d3d_transform_set_rotation_x(90);
d3d_transform_add_translation(global.spx, -20, -160);
draw_text_transformed(4, -32, string(score), 8, 4, 0);
draw_text_transformed(2, -15, "+" + string(global.pscore), 4, 2, 0);
d3d_transform_set_rotation_x(-90);
d3d_transform_add_translation(global.spx, 320, -160);
if (bhpvis) {
 draw_text_transformed(1, 48, hlc[global.hp] + "BOSS" + hrc[global.hp], 2, 1, 0);
 d3d_transform_set_translation(global.spx, 39, -128);
 draw_sprite_ext(sprBossGauge, 0, 0, 0, 4 * bhpscl, 4, 0, global.color2, 1);
 draw_sprite_ext(sprBossGauge, 1, 0, 0, 4 * (bhpval / bhpmax) * bhpscl, 4, 0, global.color2, 1);
} else {
 draw_text_transformed(1, 48, hlc[global.hp] + string(eenum) + enumcap + hrc[global.hp], 2, 1, 0);
}
d3d_transform_set_identity();
gpu_set_ztestenable(true);

