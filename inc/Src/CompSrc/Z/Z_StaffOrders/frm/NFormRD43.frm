/*
  ╔═════════════════════════════════════════════════════════════════════╗
  ║      Н Т О  "T O P   S O F T",  А О   "Н О В Ы Й   А Т Л А Н Т"     ║
  ║      Проект    : ГАЛАКТИКА  (с) 2000                                ║
  ║      Система   : Управление персоналом                              ║
  ║      Версия    : 5.8, 7.1                                           ║
  ║      Разработал: Антонович А.К.     11/03/2004                      ║
  ║      Назначение: Проведение аттестации и создание комиссии РД 43    ║
  ║      Изменения :                                                    ║
  ╚═════════════════════════════════════════════════════════════════════╝
*/

#doc
Проведение аттестации и создание комиссии РД 43
#end
.form NformRD43
.Hide
.Fields
Организация
ОКПО
номер_документа
дата_составления

TitleDocNrec : comp

Title1
Dummy
Title2

!.{RD43_Cycle1  CheckEnter
PersNrec : comp
AppointNrec : comp

Role
FIO
должность
!.}

Body

ДолжнРук
ФиоРук

.EndFields
Организация                   ^
ОКПО                          ^
номер_документа               ^
дата_составления              ^
TitleDocNrec : comp           ^

.{RD43_CycleT1  CheckEnter
Title1                        ^
.}
                              ^
.{RD43_CycleT2  CheckEnter
Title2                        ^
.}

.{RD43_Cycle1  CheckEnter
PersNrec : comp               ^
AppointNrec : comp            ^
Role                          ^
FIO                           ^
должность                     ^
.}
.{RD43_CycleT3  CheckEnter
Body                          ^
.}
ДолжнРук                      ^
ФиоРук                        ^
.endform
