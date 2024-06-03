draw_set_font(fnt_test);
draw_set_color(c_white);

// handle hooked commands:
if (window_command_check(window_command_minimize)) trace("Minimize clicked.");
if (window_command_check(window_command_maximize)) trace("Maximize clicked.");
if (window_command_check(window_command_restore)) {
    trace("Restore clicked.");
    if (window_get_height() == 0) {
        // Restoring from minimized state
        window_command_run(window_command_restore);
    }
}
if (window_command_check(window_command_close)) {
	trace("Close clicked.");
	if (show_question("Really quit?")) {
		window_command_run(window_command_close);
	}
}

var _xstart = 4;
var _ystart = 4;
var _x = _xstart, _y = _ystart;
var _sx = 200;
var _sy = string_height("Q");

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // 

draw_text(_x, _y, "Trigger");
_y += _sy;

draw_text(_x, _y, "[F1] Minimize");
if (keyboard_check_pressed(vk_f1)) {
	window_command_run(window_command_minimize);
}
_y += _sy;

draw_text(_x, _y, "[F2] Maximize");
if (keyboard_check_pressed(vk_f2)) {
	window_command_run(window_command_maximize);
}
_y += _sy;

draw_text(_x, _y, "[F3] Restore");
if (keyboard_check_pressed(vk_f3)) {
	window_command_run(window_command_restore);
}
_y += _sy;

draw_text(_x, _y, "[F4] Close");
if (keyboard_check_pressed(vk_f4)) {
	window_command_run(window_command_close);
}
_y += _sy;

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // 

_x += _sx;
_y = _ystart;

var _active;
draw_text(_x, _y, "Toggle:");
_y += _sy;

_active = window_command_get_active(window_command_minimize);
draw_text(_x, _y, "[1] Minimize (" + string(_active) + ")");
if (keyboard_check_pressed(ord("1"))) {
	window_command_set_active(window_command_minimize, !_active);
}
_y += _sy;

_active = window_command_get_active(window_command_maximize);
draw_text(_x, _y, "[2] Maximize (" + string(_active) + ")");
if (keyboard_check_pressed(ord("2"))) {
	window_command_set_active(window_command_maximize, !_active);
}
_y += _sy;

_active = window_command_get_active(window_command_move);
draw_text(_x, _y, "[3] Move (" + string(_active) + ")");
if (keyboard_check_pressed(ord("3"))) {
	window_command_set_active(window_command_move, !_active);
}
_y += _sy;

_active = window_command_get_active(window_command_close);
draw_text(_x, _y, "[4] Close (" + string(_active) + ")");
if (keyboard_check_pressed(ord("4"))) {
	window_command_set_active(window_command_close, !_active);
}
_y += _sy;

_active = window_get_topmost();
draw_text(_x, _y, "[5] Top-most (" + string(_active) + ")");
if (keyboard_check_pressed(ord("5"))) {
	window_set_topmost(!_active);
}
_y += _sy;

/*_active = window_get_taskbar_button_visible();
draw_text(_x, _y, "[6] Taskbar button (" + string(_active) + ")");
if (keyboard_check_pressed(ord("6"))) {
	window_set_taskbar_button_visible(!_active);
}
_y += _sy;*/

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // 

_x += _sx;
_y = _ystart;
var _delay = room_speed * 5;

draw_text(_x, _y, "For 5s:");
_y += _sy;

draw_text(_x, _y, "[Q] Hide window");
if (keyboard_check_pressed(ord("Q"))) {
	window_set_visible_w(false);
	reset_visibility = _delay;
}
if (reset_visibility > 0) {
	reset_visibility -= 1;
	if (reset_visibility <= 0) {
		window_set_visible_w(true);
	}
}
_y += _sy;

draw_text(_x, _y, "[W] Click-through");
if (keyboard_check_pressed(ord("W"))) {
	window_set_clickthrough(true);
	trace("Try clicking on the window now");
	reset_clickthrough = _delay;
}
if (reset_clickthrough > 0) {
	reset_clickthrough -= 1;
	if (reset_clickthrough <= 0) {
		trace("You may click on the window again");
		window_set_clickthrough(false);
	}
}
_y += _sy;

draw_text(_x, _y, "[E] No focus");
if (keyboard_check_pressed(ord("E"))) {
	window_set_noactivate(true);
	trace("Try clicking on another window and then back");
	reset_activation = _delay;
}
if (reset_activation > 0) {
	reset_activation -= 1;
	if (reset_activation <= 0) {
		trace("You may focus this window again");
		window_set_noactivate(false);
	}
}
_y += _sy;

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // 

_x = _xstart;
_y = room_height - _ystart;
for (var i = 0; i < ds_list_size(global.log); i++) {
	var _str = global.log[|i];
	_y -= string_height(_str);
	draw_text(_x, _y, _str);
}
