@echo off

Set ConfigName=%1
if "%ConfigName%"=="" set /p ConfigName="������ �������� ���䨣��樨 ��� ��।������ ����� FRM (test)"
if "%ConfigName%"=="" set ConfigName="test"

rem echo "��ᯠ����� ��娢�� � ������ (FRM)"
rem call "config\get-new-includes.cmd" %ConfigName%
echo "������� 䠩�� � ᯨ᪮� �����"
call config\gen-includes-file.cmd
echo "���������� ����� �����襭�"
pause
