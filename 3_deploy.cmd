@echo Off

Set ConfigName=%1
if "%ConfigName%"=="" set /p ConfigName="������ �������� ���䨣��樨 ��� ������祭�� (test)"
if "%ConfigName%"=="" set ConfigName="test"

call :deploy common "������祭�� �ommon (��饨ᯮ��㥬� �㭪樮���)"
call :deploy alter "������祭�� alter (���������樨)"
call :deploy barcode "������祭�� barcode (���媮��஢����)"
call :deploy basedoc "������祭�� basedoc (���㬥��� �᭮�����)"
call :deploy budget "������祭�� budget (��ࠡ�⪨ �� ��⠬)"
call :deploy buh "������祭�� buh (��ࠡ�⪨ ��壠���᪮�� ������)"
call :deploy businesstrip "������祭�� BusinessTrip (�������஢��)"
call :deploy cws "������祭�� cws (᢮��� �����)"
call :deploy dogovor "������祭�� Dogovor (��ࠡ�⪨ �� ������ࠬ)"
call :deploy globalerp "������祭��GlobalERP (��⥣��� � GLOBAL)"
call :deploy mnf "������祭�� mnf (��ࠡ�⪨ ������ �ந�����⢥����� �����஢����)"
call :deploy planomto "������祭�� planomto (��ࠡ�⪨ ����)"
call :deploy pws "������祭�� pws (ᤥ��� �����)"
call :deploy regrade "������祭�� regrade (���� �� ��������)"
call :deploy rkm "������祭�� RKM (��ࠡ�⪨ �� ���)"
call :deploy templan "������祭�� TemPlan (�������)"

echo "������祭�� �����襭�"
pause
exit /B

:deploy
echo ===============================================================================
echo %2
echo ===============================================================================
cd %1
rem call "deploy-%ConfigName%"
cd ..
exit /B
