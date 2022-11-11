if (instance_exists(objTitle) || instance_exists(objPlayer)) {
 if (scrollspeed < 17)
  scrollspeed += 1;
 else
  scrollspeed = 17;
}

bred += (tbred - bred) / 25;
bgreen += (tbgreen - bgreen) / 25;
bblue += (tbblue - bblue) / 25;
bsat += (tbsat - bsat) / 25;
bval += (tbval - bval) / 25;

global.color1 = make_color_hsv((global.color + 77) % 255, 128 * bsat, 224 * bval);
global.color2 = make_color_hsv((global.color + 128) % 255, 255 * bsat, 224 * bval);
global.color3 = make_color_hsv((global.color + 193) % 255, 128 * bsat, 224 * bval);
global.color1l = make_color_hsv((global.color + 205) % 255, 64 * bsat, 112 + 112 * bval);
global.color2l = make_color_hsv(global.color % 255, 128 * bsat, 112 + 112 * bval);
global.color3l = make_color_hsv((global.color + 66) % 255, 64 * bsat, 112 + 112 * bval);

global.color += 1;
if (global.color > 255)
 global.color -= 255;

global.background_color = make_color_rgb(bred, bgreen, bblue);

global.screenshake -= global.screenshake / 14;

if (global.screenshake < 0.1) {
 global.screenshake = 0;
} else {
 global.ssx = random(global.screenshake * 2) - global.screenshake;
 global.ssy = random(global.screenshake * 2) - global.screenshake;
}

global.bang += (global.tbang - global.bang) / 5;

scroll += scrollspeed;

if (scroll > 200)
 scroll -= 400;

