@echo off
rem �८�ࠧ������ .xml � .pal
rem ����室��� 㪠���� ���� � �⫠����

if not defined ATLANTIS if exist ..\..\..\..\!Sborka\SETS.BAT call ..\..\..\..\!Sborka\SETS.BAT
if not defined ATLANTIS echo [x] �� ��।����� ��६����� ATLANTIS. �஢���� 䠩�: ..\..\..\..\!Sborka\SETS.BAT
if not defined ATLANTIS goto :EOF

set LayoutName=OldMenuLayout

%ATLANTIS%\exe\vip.exe /Windows.LayoutXML:%LayoutName%.xml /o:%~dp0 /t:%~dp0

%ATLANTIS%\exe\GetItem.exe %LayoutName%.res %LayoutName%.pal AppLayout _C(*)_F(*)

del *.log, *.res, *.dsk
