show_wavestring("READY?", 8);

audio_sound_gain(sndBGM, 1, 0);
audio_play_sound(sndBGM, 100, true);

if (global.is_first_session) {
	global.is_first_session = false;	
} else {
	var position = choose(0, 15.562, 25.946, 38.921, 54.485);

	if (position > 0)
		audio_sound_set_track_position(sndBGM, position);
}

rots = random(360); 

score = 0;
global.pscore = 0;
global.ibonus = 0;

global.px = 320;
global.py = 464;
instance_create_depth(global.px, global.py, 0, objPlayer);

bhpvis = 0;
bhpval = 0;
bhpscl = 0;

stg = 0;
enemys = 1;
cenemy[0] = objEnemy1;
renemy = 0;
drate = 1;
maxenum = 24;
eenum = 0;
alarm[0] = 150;

ic[0] = 0;
ic[1] = 0; // item count

hlc[0] = "";
hlc[1] = "< ";
hlc[2] = "< < ";
hlc[3] = "< < < ";
hrc[0] = "";
hrc[1] = " >";
hrc[2] = " > >";
hrc[3] = " > > >";

global.prate = 2.5; // plus item random rate. 1/2.5

enumcap = "/" + string(maxenum);

