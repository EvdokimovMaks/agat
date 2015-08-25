/*
  ╔═════════════════════════════════════════════════════════════════════╗
  ║      Н Т О  "T O P   S O F T"                                       ║
  ║           Проект "КАДРЫ" (с) 1999                                   ║
  ║      Версия : 5.70                                                  ║
  ║      Разработал:  Герасимович А.А.                                  ║
  ║      Назначение: Пересчет льгот для родственников сотрудников       ║
  ║                  вывод результатов                                  ║
  ╚═════════════════════════════════════════════════════════════════════╝
*/

#doc
Пересчет льгот для родственников сотрудников
вывод результатов
#end
.form CalcLgotForm
.hide
.fields
  тип_работы
  сотрудник
   указ_льготников нужн_льготников
   указ_детей_вдовы нужн_детей_вдовы
    родственник тип_льготника
    было_льгот была_дата
    стало_льгот стала_дата
.endfields
^
.{ LgotPersonCycle CheckEnter
  ^
.if LgotDependants
 ^ ^
.end
.if VdovaChildren
 ^ ^
.end
.{ LgotLinkedPsnCycle CheckEnter
  ^ ^
  ^ ^
  ^ ^
.}
.}
.endform

.linkform "Результаты изменений по льготникам" prototype is CalcLgotForm
.var
   iPsnNmb   : Integer
   iIzhdNmb  : Integer
   sPsnInfo  : String
   sIzhdNmb  : String
   sIzhdInfo : String
   sOldName, sNewName : String
   sLCOldName, sLCNewName : String
.endvar
.fields

  iPsnNmb:'p:r' sPsnInfo
   sLCOldName указ_льготников sLCNewName нужн_льготников
   sLCOldName указ_детей_вдовы sLCNewName нужн_детей_вдовы
   sIzhdNmb:'p:r' sIzhdInfo
    sOldName было_льгот была_дата
    sNewName стало_льгот стала_дата

.endfields

.{ ?INTERNAL;(LongInt(тип_работы) = 1);
                   БРЕЗУЛЬТАТЫ КОРРЕКТИРОВКИ ДАННЫX ОБ ИЖДИВЕНЦАX Б
.}
.{ ?INTERNAL;(LongInt(тип_работы) = 0);
                     БРЕЗУЛЬТАТЫ ПРОВЕРКИ ДАННЫX ОБ ИЖДИВЕНЦАX Б
.}

.begin iPsnNmb := 0 ; end.
.{ LgotPersonCycle CheckEnter
.begin
  iPsnNmb := iPsnNmb + 1 ;
  sPsnInfo := 'Сотрудник ' + сотрудник ;
  if (LongInt(тип_работы) = 1)
   begin
    sOldName := 'Было :' ;
    sNewName := 'Стало:' ;
    sLCOldName := 'было указано' ;
    sLCNewName := 'установлено'
   end
  else
   begin
    sOldName := 'Есть :' ;
    sNewName := 'Нужно:' ;
    sLCOldName := 'указано' ;
    sLCNewName := 'реально'
   end
end.
 @@@. @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin
 iIzhdNmb := 0 ;
end.
.if LgotDependants
      (^ иждивенцев: ^, ^: ^)
.end
.if VdovaChildren
      (^ детей вдовы/вдовца/одинокого опекуна: ^, ^: ^)
.end
.{ LgotLinkedPsnCycle CheckEnter
.begin
  iIzhdNmb := iIzhdNmb + 1 ;
  sIzhdNmb := String(iPsnNmb)+'.'+String(iIzhdNmb) ;
  sIzhdInfo := родственник + ' (' + тип_льготника + ')' ;
 end.
   @@@@@. @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
           Г@@@@@@ Г   ММОТ в льготе: &&&&, дата окончания: @@@@@@@@@@
           Г@@@@@@ Г   ММОТ в льготе: &&&&, дата окончания: @@@@@@@@@@
.}
.}
.endform