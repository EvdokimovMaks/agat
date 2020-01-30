//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Управление персоналом
// Изменение разряда/категории RD 62
//------------------------------------------------------------------------------

#doc
Изменение разряда/категории RD 62
#end
.form NformRD62
.Hide
.Fields
Организация
ОКПО
TitleDocNrec : comp
sBarCode
PersNrec : comp
AppointNrec : comp
номер_документа
дата_составления

FIO
FIO_VP
TabN
подразделение
должность : WideString

DateBeg
DateEnd

WorkRegime
WorkRegime2
FlagsAH_WorkRegime

Found
Reason

ДолжнРук
ФиоРук

.EndFields
Организация                   ^
ОКПО                          ^
TitleDocNrec : comp           ^
sBarCode		      ^
PersNrec : comp               ^
AppointNrec : comp            ^
номер_документа               ^
дата_составления              ^

FIO                           ^
FIO_VP                        ^
TabN                          ^
подразделение : WideString    ^
должность                     ^

DateBeg                       ^
DateEnd                       ^

WorkRegime                    ^
WorkRegime2                   ^
FlagsAH_WorkRegime            ^

Found                         ^
Reason                        ^

ДолжнРук                      ^
ФиоРук                        ^
.endform
