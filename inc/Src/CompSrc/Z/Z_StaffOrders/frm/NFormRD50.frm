//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.8 - Управление персоналом
// Изменение оклада РД 50
//------------------------------------------------------------------------------

#doc
Изменение оклада РД 50
#end
.form NformRD50
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
VidOpl
TaxRate
Koef
WorkStations
WorkRegime

Found
Reason

PassportsSer
PassportsNmb
PassportsGivenDate
PassportsGivenBy

ContractNmb
ContractDate

ADDRProp
ADDRReg
FIOSokr

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
VidOpl                        ^
TaxRate                       ^
Koef                          ^
WorkStations                  ^
WorkRegime                    ^

Found                         ^
Reason                        ^

PassportsSer                  ^
PassportsNmb                  ^
PassportsGivenDate            ^
PassportsGivenBy              ^

ADDRProp                      ^
ADDRReg                       ^
FIOSokr                       ^

ContractNmb                   ^
ContractDate                  ^

ДолжнРук                      ^
ФиоРук                        ^
.endform
