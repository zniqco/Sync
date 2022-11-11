stg += 1;
eenum = 0;
dgan = 30;
renemy = 0;

global.prate += 0.1;

stgn = stg mod 6;
if (stgn > 2) {
 global.background_model_index = floor(stg / 6) mod 2;
} else {
 global.background_model_index = -1;
}

nstg = stg mod 10;

if (nstg = 0) {
 enemys = 1;
 cenemy[0] = objEnemy1;
 set_background(255, 255, 255, 1, 0.9);
} else if (nstg = 1) {
 enemys = 1;
 cenemy[0] = objEnemy2;
 set_background(128, 128, 128, 0.25, 0.25);
} else if (nstg = 2) {
 enemys = 2;
 cenemy[0] = objEnemy3;
 cenemy[1] = objEnemy1;
 set_background(0, 0, 0, 0.6, 0.6);
 drate = 1.3;
} else if (nstg = 3) {
 enemys = 1;
 cenemy[0] = objEnemy1;
 drate = 0.9;
 set_background(24, 48, 96, 0.15, 0.15);
} else if (nstg = 4) {
 enemys = 1;
 cenemy[0] = objEnemy4;
 set_background(0, 48, 96, 1, 1);
} else if (nstg = 5) {
 enemys = 2;
 cenemy[0] = objEnemy3;
 cenemy[1] = objEnemy2;
 drate = 0.9;
 set_background(0, 0, 0, 0.2, 0.25);
} else if (nstg = 6) {
 enemys = 2;
 cenemy[0] = objEnemy4;
 cenemy[1] = objEnemy2;
 drate = 0.9;
 set_background(255, 255, 255, 0, 0);
} else if (nstg = 7) {
 enemys = 3;
 cenemy[0] = objEnemy1;
 cenemy[1] = objEnemy2;
 cenemy[2] = objEnemy3;
 drate = 0.78;
 set_background(128, 0, 216, 1, 1);
} else if (nstg = 8) {
 enemys = 1;
 cenemy[0] = objEnemy1;
 drate = 0.5;
 set_background(0, 0, 0, 1, 1);
} else if (nstg = 9) {
 enemys = 0;
 cenemy[0] = objEnemyB1;
 set_background(192, 96, 64, 0.35, 0.35);
}

drate /= (floor(nstg / 11) / 2 + 1)

if (enemys = 0) { // show boss 
 alarm[3] = 60;
} else {
 alarm[0] = 60;
}

