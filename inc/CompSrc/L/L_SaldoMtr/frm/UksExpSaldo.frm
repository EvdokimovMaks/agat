//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Целевой учет запасов
// Экспорт наличия МЦ по объектам строительства в Excel
//------------------------------------------------------------------------------

#doc
Экспорт наличия МЦ по объектам строительства в Excel
#end
.Set Name = 'UksExpSaldo'
.Hide
.Fields
  dSaldo sFilter
  cObj cMc cPod cMol cPar cEd
  sObjName:string sObjCode:string sMcName:string sMcCode:string
  sPod:string sMol:string sPar:string sGesn:string sEd:string fKol fPrc fSum
  fTotal
.EndFields
  ^^
.{
  ^^^^^^
  ^^^^^^^^^^^^
.}
  ^
.EndForm
