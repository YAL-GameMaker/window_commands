function window_command_toggle(argument0, argument1) {
	var cmd = argument1;
	var val = !window_command_get_active(cmd);
	window_command_set_active(cmd, val);
	var txt; if (val) txt = "en"; else txt = "dis";
	trace(argument0 + " is now " + txt + "abled.");



}
