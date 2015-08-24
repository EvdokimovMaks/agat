@echo off
set ConfigDir=%~dp0
set ConfigSubDir=%1
call %ConfigDir%%ConfigSubDir%\sets.cmd

set tmp=%TmpDir%tmp

set log=%TmpDir%Build.%2.log
rem if exist %log% del /F %log%

for /f "delims=" %%x in (version) do set Build=%%x

echo ###############################################################################
echo Компиляция %2 в ресурс %OutputResourceDir%\%~n2%Build%.res
rem %CompilerPath% %2 /c:"%ConfigDir%vip.cfg" /r:"%OutputResourceDir%\%~n2%Build%.res" > %log%

findstr Ошибка %log% > %tmp%

for /f "delims=" %%x in (%tmp%) do set call "findresult=%%x"

echo %findresult%
if not ["%findresult%"]=="" (
  echo Компиляция завершена с ошибками:
  echo %tmp%
  echo Полный лог: %log%
) else (
  echo Компиляция завершена успешно
)

if exist leakage.log del /F leakage.log


