@echo off
set ConfigDir=%~dp0
set ConfigSubDir=%1
set Mode=%3
call %ConfigDir%%ConfigSubDir%\sets.cmd

set tmp=%TmpDir%tmp
set log=%TmpDir%Build.%2.log
if exist %log% del /F %log%

for /f "delims=" %%x in (version) do set Build=%%x

echo 컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo 뒶НŒ湞⑨ %2 � 誓率褻 %OutputResourceDir%\%~n2%Build%.res

if "%mode%"=="quiet" (
  %CompilerPath% %2 /c:"%ConfigDir%vip.cfg" /r:"%OutputResourceDir%\%~n2%Build%.res" > %log%
) else (
  %CompilerPath% %2 /c:"%ConfigDir%vip.cfg" /r:"%OutputResourceDir%\%~n2%Build%.res" | %ConfigDir%wtee %log%
  echo.
  echo.
  echo 컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
)

findstr 롨Æ첓 %log% > %tmp%

for /f "delims=" %%x in (%tmp%) do if not %%x == "" goto :error
goto :success

:error
  echo.
  echo 뒶НŒ湞⑨ %2 쭬´殲�췅 � �鼇―젹�:
  echo.
  findstr 롨Æ첓 %log%
  echo.
  echo 룼キ硫 ギ�: %log%
  echo.
  goto :end

:success
  echo.
  echo 뒶НŒ湞⑨ %2 쭬´殲�췅 信�θ��
  echo.

:end
  call %ConfigDir%clear.cmd
