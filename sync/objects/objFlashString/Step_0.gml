offset_y += (-80 - offset_y) / 6;

if (offset_y < -60) {
	if (alpha > 0.06)
		alpha -= 0.06;
	else
		instance_destroy();
}
