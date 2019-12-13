//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.11 - Управление персоналом
// Сводный приказ о взыскании (2004 г.)
//------------------------------------------------------------------------------

#doc
Сводный приказ о взыскании (2004 г.)
#end
.form NFrmP_A_2004
.Hide
.Fields
Организация  ОКПО
TitleDocNrec : comp
sBarCode
номер_документа  дата_составления
motive
FortType
ContDocNrec : comp
PersNrec : comp
AppointNrec : comp
FIO
TabN
подразделение : WideString
должность
SumR
motiveLoop
PunisTypeLoop
FoundationLoop

Foundation

ДолжнРук
ФиоРук

.EndFields

^ ^ ^ ^ ^ ^
^ ^
.{ myPsnCyclePunisA_2004 CheckEnter
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
^
^ ^
.endform
