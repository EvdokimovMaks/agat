@echo off
set ConfigDir=%~dp0
set ConfigSubDir=%1
call %ConfigDir%%ConfigSubDir%\sets.cmd
for /f "delims=" %%x in (version) do set Build=%%x

set Name=%2
if [%3] == [] (set Resource=%OutputResourceDir%\%~n1%Build%.res) else (set Resource=%3%~n2%Build%.res)
if [%4] == [] (set Priority=CP_USER) else (set Priority=%4)
if [%5] == [] (set System=galnet) else (set System=%5)

set tmp=%TmpDir%tmp.prj
set res=%TmpDir%tmp.res

if exist %tmp% del /F %tmp%
echo #remove component="%Name%"; >> %tmp%
%CompilerPath% %tmp% /c:"%ConfigDir%vip.cfg" /r:"%res%"

if exist %tmp% del /F %tmp%
echo #addcomponent name="%Name%", resource="%Resource%", priority=%Priority%, system="%System%", version="%Build%"; >> %tmp%
%CompilerPath% %tmp% /c:"%ConfigDir%vip.cfg" /r:"%res%"

if exist leakage.log del /F leakage.log
if exist %tmp% del /F %tmp%
if exist %res% del /F %res%
