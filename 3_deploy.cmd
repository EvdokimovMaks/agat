@echo Off

Set ConfigName=%1
if "%ConfigName%"=="" set /p ConfigName="Введите название конфигурации для подключения (test)"
if "%ConfigName%"=="" set ConfigName="test"

call :deploy common "Подключение Сommon (общеиспользуемый функционал)"
call :deploy alter "Подключение alter (докомпиляции)"
call :deploy barcode "Подключение barcode (штрихкодирование)"
call :deploy basedoc "Подключение basedoc (документы основания)"
call :deploy budget "Подключение budget (доработки по бюджетам)"
call :deploy buh "Подключение buh (доработки бухгалтерского контура)"
call :deploy businesstrip "Подключение BusinessTrip (командировки)"
call :deploy cws "Подключение cws (сводные наряды)"
call :deploy dogovor "Подключение Dogovor (доработки по договорам)"
call :deploy globalerp "ПодключениеGlobalERP (интеграция с GLOBAL)"
call :deploy mnf "Подключение mnf (доработки контура производственного планирования)"
call :deploy planomto "Подключение planomto (доработки ОМТО)"
call :deploy pws "Подключение pws (сдельные наряды)"
call :deploy regrade "Подключение regrade (акты на пересортицу)"
call :deploy rkm "Подключение RKM (доработки по РКМ)"
call :deploy templan "Подключение TemPlan (ТемПлан)"

echo "Подключение завершено"
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
