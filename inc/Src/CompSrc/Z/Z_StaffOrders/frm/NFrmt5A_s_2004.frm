//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.8 - Управление персоналом
// Форма Т-5a  Сводный приказ о переводе (2004 г.)
//------------------------------------------------------------------------------

#doc
Форма Т-5a  Сводный приказ о переводе (2004 г.)
#end
.form Nfrmt5A_S_2004
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
TabNSovm
подразделение : WideString
должность
tarif

topKoef

дата_с
дата_по
contract_date
contract_nmb
depart2 : WideString
post2
contract_begin
contract_end
ДолжнРук
ФиоРук

.EndFields

^ ^ ^ ^ ^ ^
.{ myPsnCycle5a_s_2004 CheckEnter
^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^
^ ^
.}
^ ^
.endform
