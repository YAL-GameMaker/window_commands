global.log = ds_list_create();
window_command_hook(window_command_minimize);
window_command_hook(window_command_maximize);
window_command_hook(window_command_restore);
window_command_hook(window_command_close);
reset_clickthrough = 0;
reset_visibility = 0;
reset_activation = 0;
//window_set_showborder(false);
