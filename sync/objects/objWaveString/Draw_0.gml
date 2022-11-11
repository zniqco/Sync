d3d_set_projection_flat();
//d3d_transform_add_translation(0, 0, -160);
gpu_set_ztestenable(false);
dx = global.spx - (twid * scale / 2) - scale / 2;
for (i = 0; i < tlen; i += 1) {
 if (dch[i] >= 0) {
  draw_sprite_ext(sprFont, dch[i], dx, 128 + lengthdir_y(scale * 1.5, rots + i * 47) - scale / 2, scale, scale, 0, global.color2, alpha);
 }
 dx += dwid[i] * scale;
}
gpu_set_ztestenable(true);
d3d_set_projection_normal();

/* */
/*  */
