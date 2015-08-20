//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 8.1 - Логистика
// Отчет о наличии МЦ с целевым учетом старым и базовая форма с новым
//******************************************************************************

#doc
Остатки матценностей по складским разрезам
и в разрезе объектов строительства (целевого назначения)
#end
.set name = 'SeeSalMcObj'
.hide
#include format.frn
.fields
 fDate Kol_Pr1
 fType MCnrec fMC fEd fObj fkau1 fkau2 fkau3 fkau4 fkau5 fkau6 fkau7 fkau8 fkau9
 fPodr fMOL fParty
 fKol:Double EdIzm  fPrice:Double sumMC:Double   fPriceV:Double vSumMC:Double fVal

 sum:double  vSum:double sVal

.endfields
^ ^
.{
^  ^^^^^^^^^^^^^^^^  ^^ ^^ ^^ ^
.}
^ ^ ^
.endform
