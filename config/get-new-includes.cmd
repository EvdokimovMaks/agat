@echo off
set ConfigDir=%~dp0
set ConfigSubDir=%1
set Mode=%3
call %ConfigDir%%ConfigSubDir%\sets.cmd

rmdir /s /q "%ConfigDir%\..\inc\Src" 
"%ConfigDir%\7z\7z.exe" x "%FrmPath%\AllGal.FrmSrc.zip" -y -o"%ConfigDir%\..\inc" -aoa -bso0
"%ConfigDir%\7z\7z.exe" x "%FrmPath%\*.zip" -ax!AllGal.FrmSrc.zip -y -o"%ConfigDir%\..\inc" -aoa -bso0