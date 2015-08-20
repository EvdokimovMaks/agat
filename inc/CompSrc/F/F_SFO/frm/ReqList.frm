//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.10 - Спецодежда
// Печать реестра требований на выдачу СФО
//------------------------------------------------------------------------------

#doc
Печать реестра требований на выдачу СФО.<br>
#end
.Set Name = 'ReqListProt'
.Hide
.Fields
// Реестр
  OrgName
  OrgOKPO
  rNum
  rDate : Date
  PodrTo
  MolTo
  MolToSh
  PodrFr
  MolFr
  MolFrSh

// Выданные предметы
  Npp : Longint
  CardN
  TabN
  PersName
  SFOName
  SFOKod
  EdName
  EdKod
  dExpl : Date
  Kol : Double
  Srok
.endFields
.{
  ^ ^
  ^ ^
  ^ ^ ^
  ^ ^ ^

.{ ListBySFO CheckEnter
  ^
  ^ ^ ^
  ^ ^
  ^ ^
  ^ ^ ^
.}
.}
.endForm
