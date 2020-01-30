@echo off
rem Преобразование .xml в .pal
rem Необходимо указать путь к Атлантису

set Atlantis=E:\ATL\5.5.11\
set XMLName=RU_Splash.xml
set PalName=RU_Splash.pal

%ATLANTIS%\exe\vip.exe /Windows.SplashLayoutXML:%XMLName% /o:%~dp0 /t:%~dp0

%ATLANTIS%\exe\GetItem.exe Splash.res %PalName% SplashLayout SPLASH_C(*)_F(*)

del *.log, *.res, *.dsk
