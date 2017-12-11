@echo off
echo "Распаковка архивов с инклюдами (FRM)"
call "config\get-new-includes.cmd" prod
echo "Генерация файла со списком инклюдов"
call config\gen-includes-file.cmd
echo "Обновление инклюдов завершено"
pause