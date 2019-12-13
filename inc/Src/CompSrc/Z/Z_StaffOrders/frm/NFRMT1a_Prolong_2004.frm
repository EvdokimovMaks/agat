//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.8 - Управление персоналом
// Приказ о продлении контракта (групповой, 2004 г.)
//------------------------------------------------------------------------------

#doc
Приказ о продлении контракта (групповой, 2004 г.)
#end
.form Nfrmt1A_p_2004
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
FIO_DP
TabN
TabNSovm
подразделение : WideString
должность
tarif

topKoef

contract_date
contract_nmb
дата_с
дата_по
test

ДолжнРук
ФиоРук

.EndFields

^ ^ ^ ^ ^ ^
.{ myPsnCycle_p_2004 CheckEnter
^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^
.}
^ ^

.endform
