/*
  ╔═════════════════════════════════════════════════════════════════════╗
  ║      Н Т О  "T O P   S O F T",  А О   "Н О В Ы Й   А Т Л А Н Т"     ║
  ║      Проект    : ГАЛАКТИКА  (с) 2000                                ║
  ║      Система   : Управление персоналом                              ║
  ║      Версия    : 5.8, 7.1                                           ║
  ║      Разработал: Антонович А.К.     11/03/2004                      ║
  ║      Назначение: Направление на обучение РД 37                      ║
  ║      Изменения :                                                    ║
  ╚═════════════════════════════════════════════════════════════════════╝
*/

#doc
Направление на обучение РД 37
#end
.form NformRD37
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
подразделение : WideString

BreakDocNmb
BreakDocDate

NameAcademy
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
.{ NformRD37_Tema_Cycle checkenter
FIO                           ^
FIO_VP                        ^
TabN                          ^
должность                     ^
подразделение : WideString    ^

BreakDocNmb                   ^
BreakDocDate                  ^

NameAcademy                   ^
DateBeg                       ^
DateEnd                       ^
Tema                          ^
Summa                         ^
TypeEduc                      ^
Speciality                    ^
ReasonEduc                    ^
.}
.{ NformRD37_PrimOutSide_Cycle checkenter
ReasonPrikaz                  ^
prim			      ^
.}

ДолжнРук                      ^
ФиоРук                        ^
.endform
