/*
  ╔═════════════════════════════════════════════════════════════════════╗
  ║      Н Т О  "T O P   S O F T",  А О   "Н О В Ы Й   А Т Л А Н Т"     ║
  ║      Проект    : ГАЛАКТИКА  (с) 2000                                ║
  ║      Система   : Управление персоналом                              ║
  ║      Версия    : 5.8, 7.1                                           ║
  ║      Разработал: Антонович А.К.     11/03/2004                      ║
  ║      Назначение: Перенос сроков обучения РД 36                      ║
  ║      Изменения :                                                    ║
  ╚═════════════════════════════════════════════════════════════════════╝
*/

#doc
Перенос сроков обучения РД 36
#end
.form NformRD36
.Hide
.Fields
Организация
ОКПО
TitleDocNrec : comp
sBarCode
PersNrec : comp
AppointNrec : comp
ContDocNrec : comp
номер_документа
дата_составления

FIO
FIO_VP
TabN
должность
подразделение

BreakDocNmb
BreakDocDate

NameAcademy
OldDateBeg
OldDateEnd
DateBeg
DateEnd
Tema
Summa
TypeEduc
Speciality
ReasonEduc
ReasonPrikaz
prim

ДолжнРук
ФиоРук

.EndFields
Организация                   ^
ОКПО                          ^
TitleDocNrec : comp           ^
sBarCode		      ^
PersNrec : comp               ^
AppointNrec : comp            ^
ContDocNrec : comp            ^
номер_документа               ^
дата_составления              ^
.{ NformRD36_Tema_Cycle checkenter
FIO                           ^
FIO_VP                        ^
TabN                          ^
должность                     ^
подразделение                 ^

BreakDocNmb                   ^
BreakDocDate                  ^

NameAcademy                   ^
OldDateBeg                    ^
OldDateEnd                    ^
DateBeg                       ^
DateEnd                       ^
Tema                          ^
Summa                         ^
TypeEduc                      ^
Speciality                    ^
ReasonEduc                    ^
.}
.{ NformRD36_PrimOutSide_Cycle checkenter
ReasonPrikaz                  ^
prim			      ^
.}

ДолжнРук                      ^
ФиоРук                        ^
.endform
