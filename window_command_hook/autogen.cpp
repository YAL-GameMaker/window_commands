#include "gml_ext.h"
extern bool window_command_hook(GAME_HWND hwnd, int command);
dllx double window_command_hook_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	GAME_HWND _arg_hwnd;
	_arg_hwnd = (GAME_HWND)_in.read<uint64_t>();
	int _arg_command;
	_arg_command = _in.read<int>();
	return window_command_hook(_arg_hwnd, _arg_command);
}

extern bool window_command_unhook(GAME_HWND hwnd, int command);
dllx double window_command_unhook_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	GAME_HWND _arg_hwnd;
	_arg_hwnd = (GAME_HWND)_in.read<uint64_t>();
	int _arg_command;
	_arg_command = _in.read<int>();
	return window_command_unhook(_arg_hwnd, _arg_command);
}

extern bool window_command_check(int command);
dllx double window_command_check_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	int _arg_command;
	_arg_command = _in.read<int>();
	return window_command_check(_arg_command);
}

extern int window_command_run(GAME_HWND hwnd, int wParam, int lParam);
dllx double window_command_run_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	GAME_HWND _arg_hwnd;
	_arg_hwnd = (GAME_HWND)_in.read<uint64_t>();
	int _arg_wParam;
	_arg_wParam = _in.read<int>();
	int _arg_lParam;
	if (_in.read<bool>()) {
		_arg_lParam = _in.read<int>();
	} else _arg_lParam = 0;
	return window_command_run(_arg_hwnd, _arg_wParam, _arg_lParam);
}

extern int window_command_get_active(GAME_HWND hwnd, int command);
dllx double window_command_get_active_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	GAME_HWND _arg_hwnd;
	_arg_hwnd = (GAME_HWND)_in.read<uint64_t>();
	int _arg_command;
	_arg_command = _in.read<int>();
	return window_command_get_active(_arg_hwnd, _arg_command);
}

extern int window_command_set_active(GAME_HWND hwnd, int command, bool value);
dllx double window_command_set_active_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	GAME_HWND _arg_hwnd;
	_arg_hwnd = (GAME_HWND)_in.read<uint64_t>();
	int _arg_command;
	_arg_command = _in.read<int>();
	bool _arg_value;
	_arg_value = _in.read<bool>();
	return window_command_set_active(_arg_hwnd, _arg_command, _arg_value);
}

extern bool window_get_background_redraw();
dllx double window_get_background_redraw_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	return window_get_background_redraw();
}

extern bool window_set_background_redraw(GAME_HWND hwnd, bool enable);
dllx double window_set_background_redraw_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	GAME_HWND _arg_hwnd;
	_arg_hwnd = (GAME_HWND)_in.read<uint64_t>();
	bool _arg_enable;
	_arg_enable = _in.read<bool>();
	return window_set_background_redraw(_arg_hwnd, _arg_enable);
}

extern bool window_get_topmost(GAME_HWND hwnd);
dllx double window_get_topmost_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	GAME_HWND _arg_hwnd;
	_arg_hwnd = (GAME_HWND)_in.read<uint64_t>();
	return window_get_topmost(_arg_hwnd);
}

extern bool window_set_topmost(GAME_HWND hwnd, bool enable);
dllx double window_set_topmost_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	GAME_HWND _arg_hwnd;
	_arg_hwnd = (GAME_HWND)_in.read<uint64_t>();
	bool _arg_enable;
	_arg_enable = _in.read<bool>();
	return window_set_topmost(_arg_hwnd, _arg_enable);
}

extern bool window_get_taskbar_button_visible(GAME_HWND hwnd);
dllx double window_get_taskbar_button_visible_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	GAME_HWND _arg_hwnd;
	_arg_hwnd = (GAME_HWND)_in.read<uint64_t>();
	return window_get_taskbar_button_visible(_arg_hwnd);
}

extern bool window_set_taskbar_button_visible(GAME_HWND hwnd, bool show_button);
dllx double window_set_taskbar_button_visible_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	GAME_HWND _arg_hwnd;
	_arg_hwnd = (GAME_HWND)_in.read<uint64_t>();
	bool _arg_show_button;
	_arg_show_button = _in.read<bool>();
	return window_set_taskbar_button_visible(_arg_hwnd, _arg_show_button);
}

extern bool window_set_visible_w(GAME_HWND hwnd, bool visible);
dllx double window_set_visible_w_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	GAME_HWND _arg_hwnd;
	_arg_hwnd = (GAME_HWND)_in.read<uint64_t>();
	bool _arg_visible;
	_arg_visible = _in.read<bool>();
	return window_set_visible_w(_arg_hwnd, _arg_visible);
}

