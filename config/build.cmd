@echo off
set ConfigDir=%~dp0
set ConfigSubDir=%1
call %ConfigDir%%ConfigSubDir%\sets.cmd

set tmp=%TmpDir%tmp

set log=%TmpDir%Build.%2.log
rem if exist %log% del /F %log%

for /f "delims=" %%x in (version) do set Build=%%x

echo ###############################################################################
echo ��������� %2 � ����� %OutputResourceDir%\%~n2%Build%.res
rem %CompilerPath% %2 /c:"%ConfigDir%vip.cfg" /r:"%OutputResourceDir%\%~n2%Build%.res" > %log%

findstr �訡�� %log% > %tmp%

for /f "delims=" %%x in (%tmp%) do set call "findresult=%%x"

echo %findresult%
if not ["%findresult%"]=="" (
  echo ��������� �����襭� � �訡����:
  echo %tmp%
  echo ����� ���: %log%
) else (
  echo ��������� �����襭� �ᯥ譮
)

if exist leakage.log del /F leakage.log


