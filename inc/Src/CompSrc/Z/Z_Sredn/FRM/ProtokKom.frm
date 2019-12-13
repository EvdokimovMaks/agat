/*
 г===========================================================================¬
 ¦                     (c)корпорация ГАЛАКТИКА                               ¦
 ¦ Проект        : ГАЛАКТИКА                                                 ¦
 ¦ Система       : Заработная плата                                          ¦
 ¦ Версия        : 8.10                                                      ¦
 ¦ Назначение    : Протокол заседания комиссии по назначению пособий         ¦
 L===========================================================================-
*/

#doc
Протокол заседания комиссии по назначению пособий 
#end
.set name= 'Protokol'
.hide
.fields
  NomProtok
  DayForm
  MonthForm
  YearForm
  Organizacia
  PredsedKom
  ChlenKom1
  ChlenKom2
  ChlenKom3
  sDocumentBase
!
  NONLIST1
  fio1
  datn1
  datk1
  sReasonName_1
!
  NONLIST2
  fio2
  datn2_1
  datk2_1
  ProcentPos_1
  datn2_2
  datk2_2
  ProcentPos_2
!
.endfields
!
   NomProtok ^
   DayForm ^
   MonthForm ^
   YearForm ^
   Organizacia ^
   PredsedKom ^
   ChlenKom1 ^
   ChlenKom2 ^
   ChlenKom3 ^
   sDocumentBase ^
!
.{ Protocol_BLisNet CheckEnter
   NONLIST1 ^
   fio1 ^
   datn1 ^
   datk1 ^
   sReasonName_1 ^
.}
!
.{ Protocol_Resolution CheckEnter
   NONLIST2 ^
   fio2 ^
   datn2_1 ^
   datk2_1 ^
   ProcentPos_1 ^
   datn2_2 ^
   datk2_2 ^
   ProcentPos_2 ^
.}
.endform
 
