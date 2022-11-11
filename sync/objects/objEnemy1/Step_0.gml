if (speed > 6)
	speed = 6;

if (y > global.py)
	exit;

pd = point_direction(x, y, global.px, global.py);
direction += angle_difference(pd, direction) / 10;
