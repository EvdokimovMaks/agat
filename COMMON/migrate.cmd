@echo off
set ConfigDir=..\config\
set ConfigSubDir=teach
set res=%TmpDir%tmp.res
call %ConfigDir%%ConfigSubDir%\sets.cmd
%CompilerPath% ExternalQuery\ExternalQuery.lot /c:"%ConfigDir%vip.cfg" /r:"%res%"
@echo ���������� sql-��楤��� ExecuteExternalQuery ��� �맮�� ���譨� ����ᮢ �� �����⨪�
@echo ����室��� ����� ��஫� ��� ���짮��⥫� sa sql-�ࢥ�
sqlcmd -S galsrv9 -U sa -d teach910 -i "./ExternalQuery/ExecuteExternalQuery.sql"
