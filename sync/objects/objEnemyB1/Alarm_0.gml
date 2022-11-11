if (dmode = 0 && instance_exists(objPlayer)) {
 inst = instance_create_depth(x, y, 0, objEnemyMissile);
 inst.vspeed = 3.5;
 alarm[0] = 24 + irandom(20);
}

