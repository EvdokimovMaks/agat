@echo off
echo "��ᯠ����� ��娢�� � ������ (FRM)"
call "config\get-new-includes.cmd" prod
echo "������� 䠩�� � ᯨ᪮� �����"
call config\gen-includes-file.cmd
echo "���������� ����� �����襭�"
pause