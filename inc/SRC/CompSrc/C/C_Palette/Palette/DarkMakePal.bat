@echo off
rem Преобразование .xml в .pal
rem Необходимо указать путь к Атлантису

if not defined ATLANTIS if exist ..\..\..\..\!Sborka\SETS.BAT call ..\..\..\..\!Sborka\SETS.BAT
if not defined ATLANTIS echo [x] Не определена переменная ATLANTIS. Проверьте файл: ..\..\..\..\!Sborka\SETS.BAT
if not defined ATLANTIS goto :EOF

set LayoutName=DarkLayout

%ATLANTIS%\exe\vip.exe /Windows.LayoutXML:%LayoutName%.xml /o:%~dp0 /t:%~dp0

%ATLANTIS%\exe\GetItem.exe %LayoutName%.res %LayoutName%.pal AppLayout _C(*)_F(*)

del *.log, *.res, *.dsk
