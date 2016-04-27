/*
  ╔═════════════════════════════════════════════════════════════════════╗
  ║      Н Т О  "T O P   S O F T",  А О   "Н О В Ы Й   А Т Л А Н Т"     ║
  ║      Проект    : ГАЛАКТИКА  (с) 2000                                ║
  ║      Система   : Управление персоналом                              ║
  ║      Версия    : 5.8, 7.1                                           ║
  ║      Разработал: Антонович А.К.     11/03/2004                      ║
  ║      Назначение: Назначение единовременных выплат РД 20             ║
  ║      Изменения :                                                    ║
  ╚═════════════════════════════════════════════════════════════════════╝
*/

#doc
Назначение единовременных выплат РД 20
#end
.form NformRD20
.Hide
.Fields
Организация
ОКПО
TitleDocNrec : comp
PersNrec : comp
AppointNrec : comp
номер_документа
дата_составления

FIO
FIO_VP
TabN
подразделение
должность

NameRaise
SumPRaise
SumVRaise
SimvolV
SummaRaise
DateRaise
FoundRaise

Reason
Found

Prim

ДолжнРук
ФиоРук

.EndFields
Организация                   ^
ОКПО                          ^
TitleDocNrec : comp           ^
PersNrec : comp               ^
AppointNrec : comp            ^
номер_документа               ^
дата_составления              ^

FIO                           ^
FIO_VP                        ^
TabN                          ^
подразделение                 ^
должность                     ^

NameRaise                     ^
.if NAttrP
  SumPRaise                   ^
.end
.if NAttrV
  SumVRaise                   ^
  SimvolV                     ^
.end
.if NAttr
  SummaRaise                  ^
.end
DateRaise                     ^
FoundRaise                    ^

Reason                        ^
Found                         ^

Prim                          ^

ДолжнРук                      ^
ФиоРук                        ^
.endform