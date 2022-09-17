/// @author YellowAfterlife

#include "stdafx.h"
#include "tiny_set.h"

bool window_command_direct;
bool window_background_redraw;
//HWND window_command_hwnd;
tiny_set<WPARAM> window_commands_hooked;
tiny_set<WPARAM> window_commands_caught;
tiny_set<WPARAM> window_commands_blocked;

WNDPROC window_command_proc_base;
LRESULT window_command_proc_hook(HWND hwnd, UINT msg, WPARAM wp, LPARAM lp) {
    //printf("msg=%d\n", msg); fflush(stdout);
    switch (msg) {
        case WM_ERASEBKGND:
            if (!window_background_redraw) return TRUE;
            break;
        case WM_SYSCOMMAND:
            if (window_command_direct) break;
            auto cmd = wp & ~15;
            if (window_commands_blocked.contains(cmd)) return TRUE;
            if (window_commands_hooked.contains(cmd)) {
                window_commands_caught.add(cmd);
                return TRUE;
            }
            break;
    }
    return CallWindowProc(window_command_proc_base, hwnd, msg, wp, lp);
}
void window_command_proc_ensure(HWND hwnd) {
    if (window_command_proc_base != nullptr) return;
    window_command_proc_base = (WNDPROC)SetWindowLongPtr(hwnd, GWLP_WNDPROC, (LONG_PTR)window_command_proc_hook);
}

#pragma region hooks
dllg bool window_command_hook(GAME_HWND hwnd, int command) {
    window_command_proc_ensure(hwnd);
    window_commands_hooked.add(command);
    return true;
}
dllg bool window_command_unhook(GAME_HWND hwnd, int command) {
    window_commands_hooked.remove(command);
    window_commands_caught.remove(command);
    return true;
}
dllg bool window_command_check(int command) {
    return window_commands_caught.remove(command);
}
#pragma endregion

#pragma region active
dllg int window_command_run(GAME_HWND hwnd, int wParam, int lParam = 0) {
    auto _direct = window_command_direct;
    window_command_direct = true;
    auto result = SendMessageW(hwnd, WM_SYSCOMMAND, wParam, lParam);
    window_command_direct = _direct;
    return result;
}
long window_command_long(WPARAM cmd) {
    switch (cmd) {
        case SC_SIZE: return WS_SIZEBOX;
        case SC_MINIMIZE: return WS_MINIMIZEBOX;
        case SC_MAXIMIZE: return WS_MAXIMIZEBOX;
        default: return -1;
    }
}
int window_command_acc_active(HWND hwnd, WPARAM wcmd, int _val) {
    auto get = _val < 0;
    auto set = _val > 0;
    switch (wcmd) {
        case SC_MOVE: case SC_SIZE: case SC_MOUSEMENU: {
            if (get) return window_commands_blocked.contains(wcmd);
            if (set) window_command_proc_ensure(hwnd);
            window_commands_blocked.set(wcmd, set);
            return 1;
        }; break;
        case SC_CLOSE: {
            auto menu = GetSystemMenu(hwnd, false);
            if (get) return (GetMenuState(menu, wcmd, MF_BYCOMMAND) & MF_GRAYED) == 0;
            if (EnableMenuItem(menu, wcmd, MF_BYCOMMAND | (set ? MF_ENABLED : MF_GRAYED)) < 0) return -1;
            return 1;
        }; break;
        default: {
            auto cl = window_command_long(wcmd);
            if (cl < 0) return -1;
            auto wl = GetWindowLong(hwnd, GWL_STYLE);
            if (get) return (wl & cl) == cl;
            if (set) wl |= cl; else wl &= ~cl;
            SetWindowLong(hwnd, GWL_STYLE, wl);
            return 1;
        }; break;
    }
}
dllg int window_command_get_active(GAME_HWND hwnd, int command) {
    return window_command_acc_active(hwnd, command, -1);
}
dllg int window_command_set_active(GAME_HWND hwnd, int command, bool value) {
    return window_command_acc_active(hwnd, command, value ? 1 : 0);
}
#pragma endregion

#pragma region misc
dllg bool window_get_background_redraw() {
    return window_background_redraw;
}
dllg bool window_set_background_redraw(GAME_HWND hwnd, bool enable) {
    window_command_proc_ensure(hwnd);
    return true;
}

dllg bool window_get_topmost(GAME_HWND hwnd) {
    return (GetWindowLong(hwnd, GWL_EXSTYLE) & WS_EX_TOPMOST) != 0;
}
dllg bool window_set_topmost(GAME_HWND hwnd, bool enable) {
    SetWindowPos(hwnd, enable ? HWND_TOPMOST : HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOMOVE | SWP_NOSIZE);
    return true;
}

dllg bool window_get_taskbar_button_visible(GAME_HWND hwnd) {
    return (GetWindowLong(hwnd, GWL_EXSTYLE) & WS_EX_TOOLWINDOW) == 0;
}
dllg bool window_set_taskbar_button_visible(GAME_HWND hwnd, bool show_button) {
    auto exStyle = GetWindowLong(hwnd, GWL_EXSTYLE);
    if (show_button) {
        exStyle &= ~WS_EX_TOOLWINDOW;
    } else exStyle |= WS_EX_TOOLWINDOW;
    SetWindowLong(hwnd, GWL_EXSTYLE, exStyle);
    return true;
}

dllg bool window_set_visible_w(GAME_HWND hwnd, bool visible) {
    ShowWindow(hwnd, visible ? SW_SHOW : SW_HIDE);
    return true;
}
#pragma endregion

static void init() {
	window_command_proc_base = nullptr;
    window_command_direct = false;
    window_background_redraw = false;
    window_commands_hooked.init();
    window_commands_caught.init();
    window_commands_blocked.init();
}
BOOL APIENTRY DllMain(HMODULE hModule, DWORD  ul_reason_for_call, LPVOID lpReserved) {
	if (ul_reason_for_call == DLL_PROCESS_ATTACH) init();
	return TRUE;
}
