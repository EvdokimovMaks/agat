//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.11 - Управление персоналом
// Форма Т-11a  Сводный приказ о награждении (2004 г.)
//------------------------------------------------------------------------------

#doc
Форма Т-11a  Сводный приказ о награждении (2004 г.)
#end
.form Nfrmt11A_2004
.Hide
.Fields
Организация
ОКПО
TitleDocNrec : comp
sBarCode
номер_документа
дата_составления
motive
FortType
!.{ myPsnCycle11 CheckEnter
ContDocNrec : comp
PersNrec : comp
AppointNrec : comp
FIO
FIO_2
FIO_3
FIO_VP
FIO_5
FIO_6
TabN
подразделение : WideString
должность
razr
SumR
znak
motiveLoop
FortTypeLoop
FoundationLoop
!.}
Foundation
ДолжнРук
ФиоРук

.EndFields

Организация                  ^
ОКПО                         ^
TitleDocNrec : comp          ^
sBarCode		     ^
номер_документа              ^
дата_составления             ^
motive                       ^
FortType                     ^
.{ myPsnCycle11A_2004 CheckEnter
ContDocNrec : comp           ^
PersNrec : comp              ^
AppointNrec : comp           ^
FIO                          ^
FIO_2                        ^
FIO_3                        ^
FIO_VP                       ^
FIO_5                        ^
FIO_6                        ^
TabN                         ^
подразделение : WideString   ^
должность                    ^
razr                         ^
SumR                         ^
znak                         ^
motiveLoop                   ^
FortTypeLoop                 ^
FoundationLoop               ^
.}
Foundation                   ^
ДолжнРук                     ^
ФиоРук                       ^
.endform
