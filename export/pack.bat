@echo off

if not exist "window_command_hook-for-GMS1" mkdir "window_command_hook-for-GMS1"
cmd /C copyre ..\window_command_hook.gmx\extensions\window_command_hook.extension.gmx window_command_hook-for-GMS1\window_command_hook.extension.gmx
cmd /C copyre ..\window_command_hook.gmx\extensions\window_command_hook window_command_hook-for-GMS1\window_command_hook
cmd /C copyre ..\window_command_hook.gmx\datafiles\window_command_hook.html window_command_hook-for-GMS1\window_command_hook\Assets\datafiles\window_command_hook.html
cd window_command_hook-for-GMS1
cmd /C 7z a window_command_hook-for-GMS1.7z *
move /Y window_command_hook-for-GMS1.7z ../window_command_hook-for-GMS1.gmez
cd ..

if not exist "window_command_hook-for-GMS2\extensions" mkdir "window_command_hook-for-GMS2\extensions"
if not exist "window_command_hook-for-GMS2\datafiles" mkdir "window_command_hook-for-GMS2\datafiles"
if not exist "window_command_hook-for-GMS2\datafiles_yy" mkdir "window_command_hook-for-GMS2\datafiles_yy"
cmd /C copyre ..\window_command_hook_yy\extensions\window_command_hook window_command_hook-for-GMS2\extensions\window_command_hook
cmd /C copyre ..\window_command_hook_yy\datafiles\window_command_hook.html window_command_hook-for-GMS2\datafiles\window_command_hook.html
cmd /C copyre ..\window_command_hook_yy\datafiles_yy\window_command_hook.html.yy window_command_hook-for-GMS2\datafiles_yy\window_command_hook.html.yy
cd window_command_hook-for-GMS2
cmd /C 7z a window_command_hook-for-GMS2.zip *
move /Y window_command_hook-for-GMS2.zip ../window_command_hook-for-GMS2.yymp
cd ..

if not exist "window_command_hook-for-GMS2.3+\extensions" mkdir "window_command_hook-for-GMS2.3+\extensions"
if not exist "window_command_hook-for-GMS2.3+\datafiles" mkdir "window_command_hook-for-GMS2.3+\datafiles"
cmd /C copyre ..\window_command_hook_23\extensions\window_command_hook window_command_hook-for-GMS2.3+\extensions\window_command_hook
cmd /C copyre ..\window_command_hook_23\datafiles\window_command_hook.html window_command_hook-for-GMS2.3+\datafiles\window_command_hook.html
cd window_command_hook-for-GMS2.3+
cmd /C 7z a window_command_hook-for-GMS2.3+.zip *
move /Y window_command_hook-for-GMS2.3+.zip ../window_command_hook-for-GMS2.3+.yymps
cd ..

pause