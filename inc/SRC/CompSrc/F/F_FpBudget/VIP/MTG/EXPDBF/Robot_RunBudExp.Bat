@echo //------------------------------------------------------------------------
@echo //                                                (c) ��௮��� �����⨪�
@echo // �����⨪� 9.10 - ����� "��ࠢ����� ��⮬"
@echo // ��⮭���� ����� ����䥩� : "��ᯮ�� ��⮢ � DBF" (���)
@echo //------------------------------------------------------------------------

@echo off
@call sets.bat
if '%TPU%'=='' goto NOVAR
start %TPU%\galnet.exe /galaxy.NowRun=Robot_RunBudExp /NUSK-

goto EXIT

:NOVAR
call novar.bat
:EXIT

