if (y > 80 && y < 320 && dmode = 0 && instance_exists(objPlayer)) {
 inst = instance_create_depth(x, y, 0, objEnemyMissile);
 inst.vspeed = 5.5;
}
alarm[0] = random(25) + 40;

