if (zmode < 2) {
 rots += 3;
 global.spx += (320 - global.spx) / 20;
 global.bang = lengthdir_y(0.25, rots * 0.7);
}

if (zmode = 0) {
 zdep += (-216 - zdep) / 8;
} else {
 zdep += zgrv;
 zgrv += 0.1 + zgrv / 8;
 alpha -= 0.025;
 if (zdep > 64 && zmode = 1) {
  inst = instance_create_depth(0, 0, -1, objTitle);
  inst.rots = rots;
  zmode = 2;
 }
 if (zdep > 128) {
  instance_destroy();
 }
}

