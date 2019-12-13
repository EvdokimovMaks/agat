//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.8 - Управление персоналом
// Индивидуальная форма по РПД 72
//------------------------------------------------------------------------------

#doc
Индивидуальная форма по РПД 72
#end
.form NformRD72
.Hide
.Fields
NRecTitleDoc : comp
sBarCode


Org
ОКПО

N_DOC
DATA

FIO
TabN
Doljnost
workFrom
workTo
workTime
uslovnieOboznachenija

rukDoljnost
rukFio

osnovanie
primechanie

.EndFields

 ^ ^ ^ ^ ^ ^
.{ NformRD72Cycle CheckEnter

^ ^ ^ ^ ^ ^ ^
.}
^ ^ ^ ^
.Endform
