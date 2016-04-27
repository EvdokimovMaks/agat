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
(Типовая форма N Т-49)
#end
.set name='A3Ved49N_2004'
.p 43
.hide
.fields
 Pred
 OkpoName
 Podr
 MesN MesK GOD
 DataO:date
 Summ_prop1
 Summ_prop2 Сумма_руб Сумма_коп
 ДолжРук Рук_Пред
 ДолжБухг Глав_бухг
 _OtchDat _Dbeg _Dend
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
 ^
 ^^^^
 ^^^
 ^ ^
 ^^
 ^ ^^
 ^
 ^^^
!---------------------
^^^^^^^^^^
!---------------------
.{ V49Loop_A32004 CheckEnter
.fields
 Npp TabN Kateg Prof oklad:double
! Gr6 Gr7
! GrPrazd
 Gr6        :double
 Gr6_h      :double
 Gr7        :double
 Gr7_h      :double
 GrPrazd    :double
 GrPrazd_h  :double
 Gr8        :double
 Gr9        :double

 Gr10:double
 Gr11:double Gr12:double Gr13:double Gr14:double
 Gr16:double
 Gr22:double

 Column15  :double
 Column16  :double
 Column17  :double
 Column18  :double
 _PredDolg :double
 _PersDolg :double
 KViplate  :double
 FIO
.endfields
 ^^^^^^^^^^^^^^^^^^^^
 ^^^^^^^^
.}
.fields
 Итого_выплачено руб коп
 Месяц2 GOD2
.endfields
 ^^^
 ^^
.endform
