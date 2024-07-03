@echo off

del /Q "window_command_hook (for GM8.x).zip"
cmd /C 7z a "window_command_hook (for GM8.x).zip" window_command_hook.dll window_command_hook.cpp window_command_hook.gml window_command_hook_constants.txt window_command_hook.html

pause