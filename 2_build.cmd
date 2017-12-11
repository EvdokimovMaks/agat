@echo Off

SetLocal EnableDelayedExpansion

Set ConfigName=%1
if "%ConfigName%"=="" set /p ConfigName="Введите название конфигурации для компиляции (test)"
if "%ConfigName%"=="" set ConfigName="test"

Set Version=%2
if "%Version%"=="" (
	cd common
	FOR /F "tokens=1 delims=." %%i IN (version) DO (
		set /A NewVersion="%%i+1" 
		set DefaultVersion=!NewVersion!.0.0
	)
	cd ..
	set /p Version="Введите версию создаваемых ресурсных файлов (!DefaultVersion!): "
)
if "%Version%"=="" set Version=%DefaultVersion%

call :compile common "Компиляция Сommon (общеиспользуемый функционал)"
call :compile alter "Компиляция alter (докомпиляции)"
call :compile barcode "Компиляция barcode (штрихкодирование)"
call :compile basedoc "Компиляция basedoc (документы основания)"
call :compile budget "Компиляция budget (доработки по бюджетам)"
call :compile buh "Компиляция buh (доработки бухгалтерского контура)"
call :compile businesstrip "Компиляция BusinessTrip (командировки)"
call :compile cws "Компиляция cws (сводные наряды)"
call :compile dogovor "Компиляция Dogovor (доработки по договорам)"
call :compile globalerp "КомпиляцияGlobalERP (интеграция с GLOBAL)"
call :compile mnf "Компиляция mnf (доработки контура производственного планирования)"
call :compile planomto "Компиляция planomto (доработки ОМТО)"
call :compile pws "Компиляция pws (сдельные наряды)"
call :compile regrade "Компиляция regrade (акты на пересортицу)"
call :compile rkm "Компиляция RKM (доработки по РКМ)"
call :compile templan "Компиляция TemPlan (ТемПлан)"

echo "Компиляция завершена"
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