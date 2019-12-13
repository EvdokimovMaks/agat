@echo //------------------------------------------------------------------------
@echo //                                                (c) корпорация Галактика
@echo // Галактика 9.10 - модуль "Управление бюджетом"
@echo // Автономный запуск интерфейса : "Экспорт бюджетов в DBF" (МТГ)
@echo //------------------------------------------------------------------------

@echo off
@call sets.bat
if '%TPU%'=='' goto NOVAR
start %TPU%\galnet.exe /galaxy.NowRun=Robot_RunBudExp /NUSK-

goto EXIT

:NOVAR
call novar.bat
:EXIT

