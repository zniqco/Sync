rots += 3;

if (bhpvis = 1) {
 if (instance_exists(bid)) {
  bhpscl += (1 - bhpscl) / 4;
  bhpval += (bid.hp - bhpval) / 5;
 } else {
  bhpscl -= bhpscl / 3;
  if (bhpscl < 0.05) {
   bhpvis = 0;
   bhpscl = 0;
  }
 }
}

if (!instance_exists(objPlayer)) {
 global.tbang = 0;
 alarm[0] = -1;
 alarm[1] = -1;
 with (objMissile)
  used = 1;
 with (objEnemyParent) {
  gravity = 0;
  speed -= speed / 12;
 }
 with (objBack)
  scrollspeed -= scrollspeed / 12;
}

