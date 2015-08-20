/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Заработная плата                                          ║
 ║ Версия        : 5.50                                                      ║
 ║ Назначение    : Расчетно-платежная ведомость                              ║
 ║                 (Типовая форма N Т-49)                                    ║
 ║ Ответственный : Маслакова Татьяна Владимировна                            ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Расчетно-платежная ведомость
(Типовая форма № Т-49)
#end
.set name='Ved49N_2004'
.p 43
.hide
.fields
 Pred
 Podr
 MesN MesK GOD
 DataO:date
 Summ_prop1
 Summ_prop2 Сумма_руб Сумма_коп
 ДолжРук Рук_Пред
 ДолжБухг Глав_бухг
 День1 Месяц1 GOD1
!-----------------------------------
NameColumn8
NameColumn9
NameColumn10
NameColumn11
NameColumn12
NameColumn13

NameColumn15
NameColumn16
NameColumn17
NameColumn18
!-----------------------------------
.endfields
 ^
 ^
 ^^^^
 ^ ^
 ^^
 ^ ^^
 ^
 ^^^
!---------------------
^^^^^^^^^^
!---------------------
.{ FirstPartV49Loop2004 CheckEnter
.fields
 Npp TabN Kateg Prof oklad:double
!Gr6 Gr7
!GrPrazd
 Gr6       :double
 Gr6_h     :double
 Gr7       :double
 Gr7_h     :double
 GrPrazd   :double
 GrPrazd_h :double
 Gr8 Gr9 Gr10:double
 Gr11:double Gr12:double Gr13:double Gr14:double Gr15:double
 Gr16:double Gr17 Gr18 Gr19 Gr20 Gr21 Gr22:double Gr23
.endfields
 ^
 ^^^^^^^^^^^^^^^^^^^^^^^^^^
.}
.fields
 MonthRas YearRas
 .endfields
 ^^
.{ SecondPartV49Loop2004 CheckEnter
.fields
 Column15 :double
 Column16 :double
 Column17 :double
 Column18 :double
 _PredDolg:double
 _PersDolg:double
 KViplate:double
 FIO
 Kateg2
.endfields
 ^^^^^^^^^
.}
.fields
 Итого_выплачено руб коп
 Месяц2 GOD2
.endfields
 ^^^
 ^^
.endform
