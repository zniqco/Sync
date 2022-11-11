csiz += cpush;
cpush += (0.25 - cpush) / 5;
chei -= chei / 8;

if (csiz > 80) {
	if (calp > 0.08)
		calp -= 0.08;
	else
		instance_destroy();
}
