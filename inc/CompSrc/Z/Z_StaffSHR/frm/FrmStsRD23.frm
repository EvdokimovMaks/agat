/*
  ╔═════════════════════════════════════════════════════════════════════╗
  ║      Н Т О  "T O P   S O F T",  А О   "Н О В Ы Й   А Т Л А Н Т"     ║
  ║      Проект    : ГАЛАКТИКА  (с) 2000                                ║
  ║      Система   : Управление персоналом                              ║
  ║      Версия    : 5.8, 7.1                                           ║
  ║      Разработал: Антонович А.К.     11/03/2004                      ║
  ║      Назначение: Групповой приказ по ШР                             ║
  ║      Изменения :                                                    ║
  ╚═════════════════════════════════════════════════════════════════════╝
*/

#doc
Групповой приказ по ШР
#end
.form FormStsRD23
.Hide
.Fields
Организация
ОКПО
номер_документа
дата_составления

!.{StsRD23_Cycle1  CheckEnter
Dept
LongDept
Post
HWorkStations
dHist
SisOpl
NaiTar
wCategory
HTaxRate
SimvolV
koeff
HMinTaxRate
HMaxTaxRate
NRejim
cWorkCond
SBottom
!.}

ДолжнРук
ФиоРук

.EndFields
Организация                   ^
ОКПО                          ^
номер_документа               ^
дата_составления              ^

.{StsRD23_Cycle1  CheckEnter
Dept                          ^
LongDept                      ^
Post                          ^
HWorkStations                 ^
dHist                         ^
SisOpl                        ^
NaiTar                        ^
wCategory                     ^
HTaxRate                      ^
SimvolV                       ^
koeff                         ^
HMinTaxRate                   ^
HMaxTaxRate                   ^
NRejim                        ^
cWorkCond                     ^
SBottom                       ^
.}

ДолжнРук                      ^
ФиоРук                        ^
.endform