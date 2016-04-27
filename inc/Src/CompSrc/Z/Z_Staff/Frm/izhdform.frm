/*
  ╔═════════════════════════════════════════════════════════════════════╗
  ║      Н Т О  "T O P   S O F T",  А О   "Н О В Ы Й   А Т Л А Н Т"     ║
  ║           Проект "КАДРЫ" (с) 1999                                   ║
  ║      Версия : 5.80                                                  ║
  ║      Разработал:  Герасимович А.А.                                  ║
  ║      Назначение: Форма по льготникам                                ║
  ║      Параметры:                                                     ║
  ║      Изменения:                                                     ║
  ╚═════════════════════════════════════════════════════════════════════╝
*/

#doc
Форма по льготникам
#end
.form IzhdForm
.hide
.fields
  указанная_дата_месяц указанная_дата_год
//  тип_отчета // True - формирование по подразделению, False - все
  подразделение
  сотрудник кол_льготников
   льготник тип_льготника дата_окончания_льгот
.endfields
^ ^
.{department_name_Cycle CheckEnter
  ^
.{person_name_Cycle CheckEnter
  ^ ^
.{izhd_Cycle CheckEnter
  ^ ^ ^
.}
.}
.}
.endform

.linkform "Льготники" prototype is IzhdForm
.var
   iPsnNmb   : Integer
   iIzhdNmb  : Integer
   sPsnInfo  : String
   sIzhdNmb  : String
   dCreating : Date ;
   sRepTitle : String ;
   iIzhdSum  : Integer ;
.endvar
.fields
  sRepTitle
  dCreating
  подразделение
  iPsnNmb:'p:r' sPsnInfo
  sIzhdNmb:'p:r' льготник тип_льготника дата_окончания_льгот
  iIzhdSum
.endfields
.begin
 sRepTitle := 'В '+указанная_дата_месяц+' '+указанная_дата_год+' ГОДА' ;
 iIzhdSum := 0 ;
end.


                        ОТЧЕТ ПО ЛЬГОТНИКАМ, У КОТОРЫХ
                        @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                         ИСТЕКАЕТ СРОК ДЕЙСТВИЯ ЛЬГОТ

.begin
  dCreating := Cur_Date ;
end.
  Состояние на @@@@@@@@@@

 ┌───────┬─────────────────────────────────┬───────────────┬──────────┐
 │ N п/п │               ФИО               │ Тип льготника │   Дата   │
 │       │                                 │               │ окончания│
 │       │                                 │               │   льгот  │
 └───────┴─────────────────────────────────┴───────────────┴──────────┘
.{department_name_Cycle CheckEnter

  Подразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin  iPsnNmb := 0 ; end.
.{person_name_Cycle CheckEnter
.begin
  iPsnNmb := iPsnNmb + 1 ;
  sPsnInfo := сотрудник + ' (всего льготников: '+ кол_льготников + ')' ;
end.
 @@@. @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin  iIzhdNmb := 0 ; end.
.{izhd_Cycle CheckEnter
.begin
  iIzhdNmb := iIzhdNmb + 1 ;
  iIzhdSum := iIzhdSum + 1 ;
  sIzhdNmb := String(iPsnNmb)+'.'+String(iIzhdNmb) ;
 end.
   @@@@@. @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@@@
.}
.}
.}
 ─────────────────────────────────────────────────────────────────────

   Всего: @@@@@@@@@@@@@
.endform