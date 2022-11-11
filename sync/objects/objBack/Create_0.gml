global.background_color = $ffffff;
global.background_model_index = -1;

gpu_set_fog(1, global.background_color, 0, 1200);

bred = 255;
bgreen = 255;
bblue = 255;
bsat = 0;
bval = 1;
tbred = 255;
tbgreen = 255;
tbblue = 255;
tbsat = 0;
tbval = 1;

global.screenshake = 0;
global.spx = 320;
global.ssx = 0;
global.ssy = 0;
global.tbang = 0;
global.bang = 0;

global.color = 0;
global.color1 = $ffffff;
global.color2 = $ffffff;
global.color3 = $ffffff;

scroll = 0;

scrollspeed = 17;

// course model
bdetail = 8;
brange = 216;
dangle = 180 / bdetail;
for (i = 0; i <= bdetail; i += 1) {
 lx[i] = lengthdir_x(brange, i * dangle + 90) - 380;
 ly[i] = lengthdir_y(brange, i * dangle + 90);
 rx[i] = lengthdir_x(brange, i * dangle - 90) + 380;
 ry[i] = lengthdir_y(brange, i * dangle - 90);
}
dmodel = d3d_model_create();
drz1 = 0;
drz2 = -200;

d3d_model_primitive_begin(dmodel, pr_trianglelist);

for (j = 0; j < bdetail; j += 1) {
 d3d_model_vertex(dmodel, lx[j], ly[j], drz1);
 d3d_model_vertex(dmodel, lx[j], ly[j], drz2);
 d3d_model_vertex(dmodel, lx[j + 1], ly[j + 1], drz2);
 d3d_model_vertex(dmodel, lx[j], ly[j], drz1);
 d3d_model_vertex(dmodel, lx[j + 1], ly[j + 1], drz1);
 d3d_model_vertex(dmodel, lx[j + 1], ly[j + 1], drz2);
 
 d3d_model_vertex(dmodel, rx[j], ry[j], drz1);
 d3d_model_vertex(dmodel, rx[j], ry[j], drz2);
 d3d_model_vertex(dmodel, rx[j + 1], ry[j + 1], drz2);
 d3d_model_vertex(dmodel, rx[j], ry[j], drz1);
 d3d_model_vertex(dmodel, rx[j + 1], ry[j + 1], drz1);
 d3d_model_vertex(dmodel, rx[j + 1], ry[j + 1], drz2);
}

d3d_model_vertex(dmodel, -380, -brange, drz1);
d3d_model_vertex(dmodel, -380, -brange, drz2);
d3d_model_vertex(dmodel, 380, -brange, drz2);
d3d_model_vertex(dmodel, -380, -brange, drz1);
d3d_model_vertex(dmodel, 380, -brange, drz1);
d3d_model_vertex(dmodel, 380, -brange, drz2);

d3d_model_vertex(dmodel, -380, brange, drz1);
d3d_model_vertex(dmodel, -380, brange, drz2);
d3d_model_vertex(dmodel, 380, brange, drz2);
d3d_model_vertex(dmodel, -380, brange, drz1);
d3d_model_vertex(dmodel, 380, brange, drz1);
d3d_model_vertex(dmodel, 380, brange, drz2);
d3d_model_primitive_end(dmodel);

alarm[0] = 1;

