@echo off
set ConfigDir=%~dp0
set ConfigSubDir=%2
call %ConfigDir%%ConfigSubDir%\sets.cmd
for /f "delims=" %%x in (version) do set Build=%%x
echo "%OutputResourceDir%/%~n1%Build%.res"
%CompilerPath% %1 /c:"%ConfigDir%vip.cfg" /r:"%OutputResourceDir%/%~n1%Build%.res"
