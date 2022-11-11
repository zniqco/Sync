if (!instance_exists(objPlayer)) {
	alarm[2] = -1;
	event_perform(ev_alarm, 2);
}
