@echo off
set ConfigDir=%~dp0
set ConfigSubDir=%1
call %ConfigDir%%ConfigSubDir%\sets.cmd
for /f "delims=" %%x in (version) do set Build=%%x
%CompilerPath% %2 /c:"%ConfigDir%vip.cfg" /r:"%OutputResourceDir%\%~n2%Build%.res"
if exist leakage.log del /F leakage.log
