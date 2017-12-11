@echo off

Set ConfigName=%1
if "%ConfigName%"=="" set /p ConfigName="Введите название конфигурации для определения папки FRM (test)"
if "%ConfigName%"=="" set ConfigName="test"

echo "Распаковка архивов с инклюдами (FRM)"
call "config\get-new-includes.cmd" %ConfigName%
echo "Генерация файла со списком инклюдов"
call config\gen-includes-file.cmd
echo "Обновление инклюдов завершено"
pause