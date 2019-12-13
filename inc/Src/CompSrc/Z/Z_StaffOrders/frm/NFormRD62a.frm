//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Управление персоналом
// Изменение разряда/категории RD 62а
//------------------------------------------------------------------------------

#doc
Изменение разряда/категории RD 62а
#end
.form NformRD62a
.Hide
.Fields
Организация  ОКПО
TitleDocNrec : comp
sBarCode
номер_документа  дата_составления

ContDocNrec : comp
PersNrec : comp
AppointNrec : comp
FIO
FIO_VP
TabN
подразделение : WideString
должность

дата_с
дата_по

Rejim
Rejim2
FlagsAH_WorkRegime
Osn

ДолжнРук
ФиоРук

.EndFields

^ ^ ^ ^ ^ ^
.{ NformRD62aCycle CheckEnter
^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^
.}
^ ^
.endform
