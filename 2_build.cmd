@echo Off

SetLocal EnableDelayedExpansion

Set ConfigName=%1
if "%ConfigName%"=="" set /p ConfigName="������ �������� ���䨣��樨 ��� �������樨 (test)"
if "%ConfigName%"=="" set ConfigName="test"

Set Version=%2
if "%Version%"=="" (
	cd common
	FOR /F "tokens=1 delims=." %%i IN (version) DO (
		set /A NewVersion="%%i+1" 
		set DefaultVersion=!NewVersion!.0.0
	)
	cd ..
	set /p Version="������ ����� ᮧ�������� ������� 䠩��� (!DefaultVersion!): "
)
if "%Version%"=="" set Version=%DefaultVersion%

call :compile common "��������� �ommon (��饨ᯮ��㥬� �㭪樮���)"
call :compile alter "��������� alter (���������樨)"
call :compile barcode "��������� barcode (���媮��஢����)"
call :compile basedoc "��������� basedoc (���㬥��� �᭮�����)"
call :compile budget "��������� budget (��ࠡ�⪨ �� ��⠬)"
call :compile buh "��������� buh (��ࠡ�⪨ ��壠���᪮�� ������)"
call :compile businesstrip "��������� BusinessTrip (�������஢��)"
call :compile cws "��������� cws (᢮��� �����)"
call :compile dogovor "��������� Dogovor (��ࠡ�⪨ �� ������ࠬ)"
call :compile globalerp "��������� GlobalERP (��⥣��� � GLOBAL)"
call :compile mnf "��������� mnf (��ࠡ�⪨ ������ �ந�����⢥����� �����஢����)"
call :compile planomto "��������� planomto (��ࠡ�⪨ ����)"
call :compile pws "��������� pws (ᤥ��� �����)"
call :compile regrade "��������� regrade (���� �� ��������)"
call :compile report_dsql "��������� report_dsql (DSQL-�����)"
call :compile rkm "��������� RKM (��ࠡ�⪨ �� ���)"
call :compile templan "��������� TemPlan (�������)"
call :compile zar "��������� Zar (��ࠡ�⪨ �� ��௫��)"

echo "��������� �����襭�"
pause
exit /B

:compile 
echo ===============================================================================
echo %2
echo ===============================================================================
cd %1
echo %Version%>version
call "build-%ConfigName%"
cd ..
exit /B
