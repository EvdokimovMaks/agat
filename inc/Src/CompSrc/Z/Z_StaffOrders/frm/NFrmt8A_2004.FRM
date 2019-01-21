//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.8 - Управление персоналом
// Форма Т-8a  Сводный приказ об увольнении (2004 г.)
//------------------------------------------------------------------------------

#doc
Форма Т-8a  Сводный приказ об увольнении
#end
.form Nfrmt8A_2004
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
ContractNmb
ContractDate
DisDate
Reason1
Reason2
Reason3
Reason
ReasonDelDop
ProfNmb
ДолжнРук
ФиоРук

dProf
nProf

.EndFields

^ ^ ^ ^ ^ ^
.{ myPsnCycle8A_2004 CheckEnter
^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^
.}
^ ^
^ ^
.endform
