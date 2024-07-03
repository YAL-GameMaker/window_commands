#define window_command_hook_init_dll
/// window_command_hook_init_dll(?path_prefix)
var _path, _dir;
if (argument_count > 0) {
    _dir = argument[0];
} else _dir = "";

_path = _dir + "window_command_hook.dll";
global.f_window_command_hook_raw = external_define(_path, "window_command_hook_raw", dll_cdecl, ty_real, 2, ty_string, ty_real);
global.f_window_command_unhook_raw = external_define(_path, "window_command_unhook_raw", dll_cdecl, ty_real, 2, ty_string, ty_real);
global.f_window_command_check_raw = external_define(_path, "window_command_check_raw", dll_cdecl, ty_real, 2, ty_string, ty_real);
global.f_window_command_run_raw = external_define(_path, "window_command_run_raw", dll_cdecl, ty_real, 2, ty_string, ty_real);
global.f_window_command_get_active_raw = external_define(_path, "window_command_get_active_raw", dll_cdecl, ty_real, 2, ty_string, ty_real);
global.f_window_command_set_active_raw = external_define(_path, "window_command_set_active_raw", dll_cdecl, ty_real, 2, ty_string, ty_real);
global.f_window_get_background_redraw_raw = external_define(_path, "window_get_background_redraw_raw", dll_cdecl, ty_real, 2, ty_string, ty_real);
global.f_window_set_background_redraw_raw = external_define(_path, "window_set_background_redraw_raw", dll_cdecl, ty_real, 2, ty_string, ty_real);
global.f_window_get_topmost_raw = external_define(_path, "window_get_topmost_raw", dll_cdecl, ty_real, 2, ty_string, ty_real);
global.f_window_set_topmost_raw = external_define(_path, "window_set_topmost_raw", dll_cdecl, ty_real, 2, ty_string, ty_real);
global.f_window_get_taskbar_button_visible_raw = external_define(_path, "window_get_taskbar_button_visible_raw", dll_cdecl, ty_real, 2, ty_string, ty_real);
global.f_window_set_taskbar_button_visible_raw = external_define(_path, "window_set_taskbar_button_visible_raw", dll_cdecl, ty_real, 2, ty_string, ty_real);
global.f_window_get_clickthrough_raw = external_define(_path, "window_get_clickthrough_raw", dll_cdecl, ty_real, 2, ty_string, ty_real);
global.f_window_set_clickthrough_raw = external_define(_path, "window_set_clickthrough_raw", dll_cdecl, ty_real, 2, ty_string, ty_real);
global.f_window_get_noactivate_raw = external_define(_path, "window_get_noactivate_raw", dll_cdecl, ty_real, 2, ty_string, ty_real);
global.f_window_set_noactivate_raw = external_define(_path, "window_set_noactivate_raw", dll_cdecl, ty_real, 2, ty_string, ty_real);
global.f_window_set_visible_w_raw = external_define(_path, "window_set_visible_w_raw", dll_cdecl, ty_real, 2, ty_string, ty_real);
global.f_window_command_hook_gmkb_prepare = external_define(_path, "window_command_hook_gmkb_prepare", dll_cdecl, ty_real, 1, ty_real);
global.f_window_command_hook_gmkb_write_ptr = external_define(_path, "window_command_hook_gmkb_write_ptr", dll_cdecl, ty_real, 1, ty_real);
global.f_window_command_hook_gmkb_write_bool = external_define(_path, "window_command_hook_gmkb_write_bool", dll_cdecl, ty_real, 1, ty_real);
global.f_window_command_hook_gmkb_write_s32 = external_define(_path, "window_command_hook_gmkb_write_s32", dll_cdecl, ty_real, 1, ty_real);
window_command_hook_init();

#define window_command_hook
/// window_command_hook(command:int)->bool
var _buf; _buf = external_call(global.f_window_command_hook_gmkb_prepare, 12);
external_call(global.f_window_command_hook_gmkb_write_ptr, window_handle());
external_call(global.f_window_command_hook_gmkb_write_s32, argument0);
//*/
return external_call(global.f_window_command_hook_raw, "", 12);

#define window_command_unhook
/// window_command_unhook(command:int)->bool
var _buf; _buf = external_call(global.f_window_command_hook_gmkb_prepare, 12);
external_call(global.f_window_command_hook_gmkb_write_ptr, window_handle());
external_call(global.f_window_command_hook_gmkb_write_s32, argument0);
//*/
return external_call(global.f_window_command_unhook_raw, "", 12);

#define window_command_check
/// window_command_check(command:int)->bool
var _buf; _buf = external_call(global.f_window_command_hook_gmkb_prepare, 4);
external_call(global.f_window_command_hook_gmkb_write_s32, argument0);
return external_call(global.f_window_command_check_raw, "", 4);

#define window_command_run
/// window_command_run(wParam:int, lParam:int = 0)->int
var _buf; _buf = external_call(global.f_window_command_hook_gmkb_prepare, 17);
external_call(global.f_window_command_hook_gmkb_write_ptr, window_handle());
external_call(global.f_window_command_hook_gmkb_write_s32, argument[0]);
if (argument_count >= 2) {
    external_call(global.f_window_command_hook_gmkb_write_bool, true);
    external_call(global.f_window_command_hook_gmkb_write_s32, argument[1]);
} else external_call(global.f_window_command_hook_gmkb_write_bool, false);
//*/
return external_call(global.f_window_command_run_raw, "", 17);

#define window_command_get_active
/// window_command_get_active(command:int)->int
var _buf; _buf = external_call(global.f_window_command_hook_gmkb_prepare, 12);
external_call(global.f_window_command_hook_gmkb_write_ptr, window_handle());
external_call(global.f_window_command_hook_gmkb_write_s32, argument0);
//*/
return external_call(global.f_window_command_get_active_raw, "", 12);

#define window_command_set_active
/// window_command_set_active(command:int, value:bool)->int
var _buf; _buf = external_call(global.f_window_command_hook_gmkb_prepare, 13);
external_call(global.f_window_command_hook_gmkb_write_ptr, window_handle());
external_call(global.f_window_command_hook_gmkb_write_s32, argument0);
external_call(global.f_window_command_hook_gmkb_write_bool, argument1);
//*/
return external_call(global.f_window_command_set_active_raw, "", 13);

#define window_get_background_redraw
/// window_get_background_redraw()->bool
var _buf; _buf = external_call(global.f_window_command_hook_gmkb_prepare, 1);
return external_call(global.f_window_get_background_redraw_raw, "", 1);

#define window_set_background_redraw
/// window_set_background_redraw(enable:bool)->bool
var _buf; _buf = external_call(global.f_window_command_hook_gmkb_prepare, 9);
external_call(global.f_window_command_hook_gmkb_write_ptr, window_handle());
external_call(global.f_window_command_hook_gmkb_write_bool, argument0);
//*/
return external_call(global.f_window_set_background_redraw_raw, "", 9);

#define window_get_topmost
/// window_get_topmost()->bool
var _buf; _buf = external_call(global.f_window_command_hook_gmkb_prepare, 8);
external_call(global.f_window_command_hook_gmkb_write_ptr, window_handle());
//*/
return external_call(global.f_window_get_topmost_raw, "", 8);

#define window_set_topmost
/// window_set_topmost(enable:bool)->bool
var _buf; _buf = external_call(global.f_window_command_hook_gmkb_prepare, 9);
external_call(global.f_window_command_hook_gmkb_write_ptr, window_handle());
external_call(global.f_window_command_hook_gmkb_write_bool, argument0);
//*/
return external_call(global.f_window_set_topmost_raw, "", 9);

#define window_get_taskbar_button_visible
/// window_get_taskbar_button_visible()->bool
var _buf; _buf = external_call(global.f_window_command_hook_gmkb_prepare, 8);
external_call(global.f_window_command_hook_gmkb_write_ptr, window_handle());
//*/
return external_call(global.f_window_get_taskbar_button_visible_raw, "", 8);

#define window_set_taskbar_button_visible
/// window_set_taskbar_button_visible(show_button:bool)->bool
var _buf; _buf = external_call(global.f_window_command_hook_gmkb_prepare, 9);
external_call(global.f_window_command_hook_gmkb_write_ptr, window_handle());
external_call(global.f_window_command_hook_gmkb_write_bool, argument0);
//*/
return external_call(global.f_window_set_taskbar_button_visible_raw, "", 9);

#define window_get_clickthrough
/// window_get_clickthrough()->bool
var _buf; _buf = external_call(global.f_window_command_hook_gmkb_prepare, 8);
external_call(global.f_window_command_hook_gmkb_write_ptr, window_handle());
//*/
return external_call(global.f_window_get_clickthrough_raw, "", 8);

#define window_set_clickthrough
/// window_set_clickthrough(enable_clickthrough:bool)->bool
var _buf; _buf = external_call(global.f_window_command_hook_gmkb_prepare, 9);
external_call(global.f_window_command_hook_gmkb_write_ptr, window_handle());
external_call(global.f_window_command_hook_gmkb_write_bool, argument0);
//*/
return external_call(global.f_window_set_clickthrough_raw, "", 9);

#define window_get_noactivate
/// window_get_noactivate()->bool
var _buf; _buf = external_call(global.f_window_command_hook_gmkb_prepare, 8);
external_call(global.f_window_command_hook_gmkb_write_ptr, window_handle());
//*/
return external_call(global.f_window_get_noactivate_raw, "", 8);

#define window_set_noactivate
/// window_set_noactivate(disable_activation:bool)->bool
var _buf; _buf = external_call(global.f_window_command_hook_gmkb_prepare, 9);
external_call(global.f_window_command_hook_gmkb_write_ptr, window_handle());
external_call(global.f_window_command_hook_gmkb_write_bool, argument0);
//*/
return external_call(global.f_window_set_noactivate_raw, "", 9);

#define window_set_visible_w
/// window_set_visible_w(visible:bool)->bool
var _buf; _buf = external_call(global.f_window_command_hook_gmkb_prepare, 9);
external_call(global.f_window_command_hook_gmkb_write_ptr, window_handle());
external_call(global.f_window_command_hook_gmkb_write_bool, argument0);
//*/
return external_call(global.f_window_set_visible_w_raw, "", 9);


#define window_command_hook_init
//#init window_command_hook_init
//#macro window_command_close    $F060
//#macro window_command_maximize $F030
//#macro window_command_minimize $F020
//#macro window_command_restore  $F120
//#macro window_command_resize   $F000
//#macro window_command_move     $F010

#define window_command_hook_prepare_buffer
/// (size:int)->buffer~
show_error("window_command_hook_prepare_buffer is unavailable because the following aren't present in this GameMaker version:
buffer_create
buffer_grow
buffer_get_size
buffer_resize
buffer_seek
buffer_seek_start
", true);
/*var _size = argument0;
gml_pragma("global", "global.__window_command_hook_buffer = undefined");
var _buf; _buf = global.__window_command_hook_buffer;
if (_buf == undefined) {
    _buf = buffer_create(_size, buffer_grow, 1);
    global.__window_command_hook_buffer = _buf;
} else if (buffer_get_size(_buf) < _size) {
    buffer_resize(_buf, _size);
}
buffer_seek(_buf, buffer_seek_start, 0);
return _buf;*/