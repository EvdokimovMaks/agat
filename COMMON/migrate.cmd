@echo off
set ConfigDir=..\config\
set ConfigSubDir=teach
set res=%TmpDir%tmp.res
call %ConfigDir%%ConfigSubDir%\sets.cmd
%CompilerPath% ExternalQuery\ExternalQuery.lot /c:"%ConfigDir%vip.cfg" /r:"%res%"
@echo Обновление sql-процедуры ExecuteExternalQuery для вызова внешних запросов из Галактики
@echo Необходимо ввести пароль для пользователя sa sql-сервера
sqlcmd -S galsrv9 -U sa -d teach910 -i "./ExternalQuery/ExecuteExternalQuery.sql"
