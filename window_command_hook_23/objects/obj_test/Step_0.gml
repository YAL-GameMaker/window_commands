if (window_command_check(window_command_minimize)) trace("Minimize clicked.");
if (window_command_check(window_command_maximize)) trace("Maximize clicked.");
if (window_command_check(window_command_restore)) {
    trace("Restore clicked.");
    if (window_get_height() == 0) {
        // Restoring from minimized state
        window_command_run(window_command_restore);
    }
}
if (window_command_check(window_command_close)) trace("Close clicked.");
//
if (keyboard_check_pressed(ord("1"))) window_command_run(window_command_minimize);
if (keyboard_check_pressed(ord("2"))) window_command_run(window_command_maximize);
if (keyboard_check_pressed(ord("3"))) window_command_run(window_command_restore);
if (keyboard_check_pressed(ord("4"))) window_command_run(window_command_close);
//
if (keyboard_check_pressed(ord("Q"))) window_command_toggle("Maximize", window_command_minimize);
if (keyboard_check_pressed(ord("W"))) window_command_toggle("Minimize", window_command_maximize);
if (keyboard_check_pressed(ord("E"))) window_command_toggle("Move", window_command_move);
if (keyboard_check_pressed(ord("R"))) window_command_toggle("Close", window_command_close);
//
if (keyboard_check_pressed(ord("T"))) {
    var v = window_get_taskbar_button_visible()
    window_set_taskbar_button_visible(!v);
}
if (keyboard_check_pressed(ord("V"))) {
    window_set_visible_w(false);
    alarm[0] = 60;
}

