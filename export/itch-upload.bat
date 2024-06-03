@echo off
set /p ver="Version?: "
echo Uploading %ver%...
set user=yellowafterlife
set ext=gamemaker-window-commands
cmd /C itchio-butler push window_command_hook-for-GMS1.gmez %user%/%ext%:gms1 --userversion=%ver%
cmd /C itchio-butler push window_command_hook-for-GMS2.yymp %user%/%ext%:gms2 --userversion=%ver%
cmd /C itchio-butler push window_command_hook-for-GMS2.3+.yymps %user%/%ext%:gms2.3 --userversion=%ver%
cmd /C itchio-butler push window_command_hook_demo.yyz %user%/%ext%:gms2.3-demo --userversion=%ver%

pause