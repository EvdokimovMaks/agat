//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.8 - Управление персоналом
// Форма Т-1a  Сводный приказ о приеме на работу (2004 г.)
//------------------------------------------------------------------------------

#doc
Форма Т-1a  Сводный приказ о приеме на работу (2004 г.)
#end
.form Nfrmt1A_2004
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
подразделение
должность
tarif

topKoef

contract_date
contract_nmb
дата_с
дата_по
test

FIOZam
FIOZam_RP

FIOLeader
FIOLeader_RP

PostLeader
PostLeader_RP

DopInfoMemo

contract_begin
contract_end

ДолжнРук
ФиоРук

.EndFields

^ ^ ^ ^ ^ ^
.{ myPsnCycle1A2004 CheckEnter
^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^
^ ^
^ ^ ^ ^
^
^ ^
.}
^ ^

.endform
