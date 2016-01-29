//-----------------------------------------------------------------------------------
//                                                           (c) корпорация ГАЛАКТИКА
// Галактика 5.5 - Касса
// Отчет о документах по приказам на командировку
//-----------------------------------------------------------------------------------

#doc
Отчет о документах по приказам на командировку.
#end
.set name='PrikRep'
.hide
.fields
! Поля приказа
  dDoc : date
  NoDoc
! Поля спецификации приказа
  Mesto
  PrikazName
  KolDay
  KolDayStr
  dStart : date
  FIO
  Chin
! Поля аванс
  AvansNoDok
  AvansSumPlat
  SimvValAvans
! Поля Расходных документов
  TipRashDoc
  RKONoDok
  RKOSumPlat
! Поля Приходных документов
  TipPrichDoc
  PKONoDok
  PKOSumPlat
! Итого
  AvansDolg
! Поля Расходных документов неучтенные при первом проходе
  TipRashDoc1
  RKONoDok1
  RKOSumPlat1
  SimvValRKO
! Итого по проплатам
  AllAvans
  AllRKO
  AllPKO
  AllDolg
! Итого по отчету
  AllRKOPrikaz
  AllAvansPrikaz
  AllPKOPrikaz
  AllDolgPrikaz
.endfields
.{
  dDoc             ^
  NoDoc            ^
.{ PrikRepSPC CheckEnter
! цикл по сотрудникам в командировке
  Mesto            ^
  PrikazName       ^
  KolDay           ^
  KolDayStr        ^
  dStart           ^
  FIO              ^
  Chin             ^
.{ PrikRepAvansCPrime CheckEnter
! цикл по аванасовым отчетом
  AvansNoDok         ^
  AvansSumPlat       ^
  SimvValAvans       ^
.{ PrikRepRKOCPrime CheckEnter
! цикл по Расходным документам по конкретной позиции
  TipRashDoc         ^
  RKONoDok           ^
  RKOSumPlat         ^
.}
.{ PrikRepPKOCPrime CheckEnter
  TipPrichDoc        ^
  PKONoDok           ^
  PKOSumPlat         ^
.}
  AvansDolg          ^
.}
.{ PrikRepRKOCSec CheckEnter
  TipRashDoc1        ^
  RKONoDok1          ^
  RKOSumPlat1        ^
  SimvValRKO         ^
.}
 AllAvans            ^
 AllRKO              ^
 AllPKO              ^
 AllDolg             ^
.}
 AllRKOPrikaz        ^
 AllAvansPrikaz      ^
 AllPKOPrikaz        ^
 AllDolgPrikaz       ^
.}
.endform

.linkform 'PrikRep01' prototype is 'PrikRep'
.nameinlist 'Отчет о документах по приказам на командировку'
.fields
CommonFormHeader
NoDoc dDoc 
FIO Chin
Mesto 
KolDay + ' ' + KolDayStr
dStart
PrikazName
AvansNoDok AvansSumPlat SimvValAvans
TipRashDoc RKONoDok RKOSumPlat SimvValAvans
TipPrichDoc PKONoDok PKOSumPlat SimvValAvans
AvansDolg SimvValAvans
TipRashDoc1 RKONoDok1 RKOSumPlat1  SimvValRKO
AllRKO AllAvans AllPKO AllDolg
AllRKOPrikaz  AllAvansPrikaz AllPKOPrikaz AllDolgPrikaz
.endfields
^
.{
 И                      Отчет о суммах
по приказу на командировку №  Б@~@@@@@@@@@@@@ Б от  Б@@@@@@@@@@@ Б
.{ PrikRepSPC CheckEnter

   Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
   Командировать в Б @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
   Срок командировки: Б @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ c @@@@@@@@@@@@@@@ Б
   Цель командировки: Б @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б

┌────────────────────────────────┬───────────────────────────────────────────────────────────┐
│           Выдано               │                           Сдано                           │
├────────────────────────────────┼───────────────────────────┬───────────────────────────────┤
│      Расходные документы       │     Авансовые отчеты      │      Приходные документы      │
└────────────────────────────────┴───────────────────────────┴───────────────────────────────┘
.{ PrikRepAvansCPrime CheckEnter
                                   БN@@@@@@@ &'&&&&&&&&&.&& @@@ Б
.{ PrikRepRKOCPrime CheckEnter
  Б@@@@ №@@@@@@@ &'&&&&&&&&&.&& @@@ Б
.}

.{ PrikRepPKOCPrime CheckEnter
                                                               Б@@@@ №@@@@@@@ &'&&&&&&&&.&& @@@ Б
.}
   ГДолг по авансовому отчету      &'&&&&&&&&&&&&&&.&& @@@ Г
.}
.{ PrikRepRKOCSec CheckEnter
  Б@@@@ №@@@@@@@ &'&&&&&&&&&.&& @@@ Б
.}
──────────────────────────────────────────────────────────────────────────────────────────────
 ГИтого     &'&&&&&&&&&&&&&&.&&         &'&&&&&&&&&&&&&&.&&             &'&&&&&&&&&&&&&&.&& Г
 ГИтоговый долг по сотр.  &'&&&&&&&&&&&&&&.&& Г
.}
──────────────────────────────────────────────────────────────────────────────────────────────
 ГИтого по приказу
    Расходные документы &'&&&&&&&&&&&&&&.&&
    Авансовые отчеты    &'&&&&&&&&&&&&&&.&&
    Приходные документы &'&&&&&&&&&&&&&&.&&
    Долг                &'&&&&&&&&&&&&&&.&& Л
 А.}
.endform
