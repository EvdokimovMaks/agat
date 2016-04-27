/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,99 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Автотранспорт                                             ║
 ║ Версия        : 6.00                                                      ║
 ║ Назначение    : Карточка водителя по ГСМ                                  ║
 ║ Ответственный : Лисица Наталья Михайловна                                 ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name='Opl_rep'
.Group 'Avto'
.Group 'Rail'
.Group 'Var'
.Group 'Itog'
.Group 'DefOpl_All'
.Group 'DefOpl'
.hide
.fields
  Filter
  NaimPred BegDate  EndDate
  AnalGroup


  DatePL ExitDn ExitCh ReturnDn ReturnCh NPL PodrName GosNomer GarNomer
  FIODrive TabN
  Uch_Nrec :comp Nvidopl Dni Chas Summa 

  AnalItg
  ItgDni ItgChas ItgSumma  ItgKolPl 

.endfields


.{
^
.}
^ ^ ^
!.{ CheckEnter GroupAnalOpl      группировка
.{ CheckEnter GroupAnalOpl
^

!.{ CheckEnter ShapkaOpl         ! для повторения шапки
.{ CheckEnter ShapkaOpl
.}
!.{ CheckEnter DocAnalOpl      ! детальные строки
.{ CheckEnter DocAnalOpl
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ 
.}
!.{ CheckEnter TotalAnalOpl    !итого по уровню группировки
.{ CheckEnter TotalAnalOpl
Итого ^
^ ^ ^ ^ 
.}
.}
.endform

.linkform 'Opl_Rep_01' prototype is 'OPL_rep'
.NameInList 'Отчет о заработной плате водителей'
.Group 'avto'
.Group 'defopl'
!.hide
.fields
  Filter
  NaimPred BegDate  EndDate
  AnalGroup
  Nvidopl Dni Chas Summa
  AnalItg
  ItgDni ItgChas ItgSumma


.endfields


.{
^
.}
^
       Отчет о заработной плате водителей по путевым листам
    в диапазоне дат: c @@@@@@@@@@@@@@@@@@@@@ по  @@@@@@@@@@@@@@@@@@@@@
───────────────────────────────────┬────────┬──────────┬────────────────────
      Наименование                 │   Дни  │    Часы  │     Сумма
───────────────────────────────────┴────────┴──────────┴────────────────────
.{ CheckEnter GroupAnalOpl
^
.{ CheckEnter ShapkaOpl
.}
.{ CheckEnter DocAnalOpl
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &&&&&.&  &&&&&&&.&   &'&&&&&&&&&&&&&.&&
.}
.{ CheckEnter TotalAnalOpl
^
                                    &&&&&.&  &&&&&&&.&   &'&&&&&&&&&&&&&.&&
.}
.}
.endform
#ifDef Gal7_1
.linkform 'Opl_Rep_01_Rail' prototype is 'OPL_rep'
.NameInList 'Отчет о заработной плате '
.Group 'Var'
.Group 'Rail'
.Group 'DefOpl_All'
!.hide
.fields
  Filter
  NaimPred BegDate  EndDate
  AnalGroup
  Nvidopl Dni Chas Summa
  AnalItg
  ItgDni ItgChas ItgSumma


.endfields


.{
^
.}
^
       Отчет о заработной плате  по регистрационным  листам
 в диапазоне дат: c @@@@@@@@@@@@@@@@@@@@@ по  @@@@@@@@@@@@@@@@@@@@@
───────────────────────────────────┬─────────┬──────────┬────────────────────
      Наименование                 │   Дни   │    Часы  │       Сумма
───────────────────────────────────┴─────────┴──────────┴────────────────────
.{ CheckEnter GroupAnalOpl
^
.{ CheckEnter ShapkaOpl
.}
.{ CheckEnter DocAnalOpl
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &&&&&.&    &&&&&&.&  &'&&&&&&&&&&&&&.&&
.}
.{ CheckEnter TotalAnalOpl
^
                                    &&&&&.&    &&&&&&.&  &'&&&&&&&&&&&&&.&&
.}
.}
.endform
#end
.linkform 'Opl_Rep_04' prototype is 'OPL_rep'
.NameInList 'Итоговый отчет о заработной плате '
.Group 'Avto'
.Group 'Rail'
.Group 'Var'
.Group 'Itog'
.Group 'DefOpl_All'
.Group 'DefOpl'
!.hide
.fields
  Filter
  NaimPred BegDate  EndDate
  AnalGroup
  AnalItg
  ItgKolPl ItgDni ItgChas ItgSumma


.endfields


.{
^
.}
^
                   Отчет о заработной плате
    в диапазоне дат: c @@@@@@@@@@@@@@@@@@@@@ по  @@@@@@@@@@@@@@@@@@@@@
───────────────────────────────┬────────┬───────┬──────────┬──────────────────
      Наименование группы      │  кол-во│  Дни  │   Часы   │       Сумма
                               │  путев.│       │          │
───────────────────────────────┴────────┴───────┴──────────┴──────────────────
.{ CheckEnter GroupAnalOpl
^
.{ CheckEnter ShapkaOpl
.}
.{ CheckEnter DocAnalOpl
.}
.{ CheckEnter TotalAnalOpl
^
                                &&&&.&   &&&&&.& &&&&&&.&  &'&&&&&&&&&&&&&&.&&
.}
.}
.endform
