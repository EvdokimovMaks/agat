//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Спецодежда
// Печать формы М-11 из требования на выдачу СФО
//------------------------------------------------------------------------------

#doc
Печать формы М-11 из Требования на выдачу СФО.<br>
#end

.Set Name = 'ReqSFO_M11'
.Hide
.Fields
 // Шапка формы
   MyOrgName: String  MyOrgOKPO : String
   dNumber  : String  KolDoc: Boolean dDate : Date
   TabN : String  CardN : String
   PersName : String  PersShort : String
   PodrFrom : String  PodrTo : String
   MOLFrom  : String  MOLFromShort : String
   MolTo : String     MolToShort : String
   TiDkDoc : word     DocNRec : Comp

// Строки спецификации - они же группы СФО или предметы, выданные по группе
   lKod  : String  lName  : String  Ed : String  KodEd : String
   SklNum: String  InvNum : String  PasNum : String
   Price : Double  SumIzn : Double  otpKol : Word  trbKol : Word
.endFields
.{
   ^ ^
   ^ ^ ^
   ^ ^ ^ ^
   ^ ^
   ^ ^
   ^ ^
   ^ ^
.{
   ^ ^ ^ ^  ^ ^ ^  ^ ^ ^ ^
.}
.}
.endForm

//-------------------------------------------------------------------------

.LinkFORM ReqSFO_M11_01 Prototype Is ReqSFO_M11
.NameInList 'Требование-накладная. Форма № M-11'
.Group 'Россия'
.f "MBPM_11.OUT"
.DEFP PA4
.P 40
.PAPER PA4
.ORIENT PORTRAIT
.LL 80
.Var
  Tire : String
  CurP, Counter : Word
  PrintPic : Boolean
  TotSum : Double
.EndVar
.Fields
 CommonFormHeader
 dNumber  Tire  CurP
 MyOrgName
 MyOrgOKPO
 DateToStr(dDate, 'DD/MM/YYYY')
 PodrFrom
 PodrTo
 MOLFrom
 PersName + ' (таб. №' + TabN + ')'
 MOLFrom

 lName  lKod  KodEd  Ed  trbKol  otpKol  Price
 Price * otpKol - if (wGetTune('Fin.MBP.OstStoim') = 0, 0, SumIzn)
 SklNum

 '' MolFromShort '' PersShort
 '' MolFromShort '' PersShort
.endFields
.{
#include MBP_M11R.frn
.{?Internal;(KolDoc = True);
.Fields
  'true' : 's'
.endFields
^
.}
.}
.endForm

//-------------------------------------------------------------------------

.LinkFORM ReqSFO_M11_02 Prototype Is ReqSFO_M11
.Group 'Прочие'
.NameInList 'Требование-накладная. Форма № M-11'
.f "LMoveMBP.OUT"
.Defo Landscape
.p 54
.var
  Count : Integer
  TotSum : Double
.endvar
.Fields
 CommonFormHeader
 MyOrgName
 dNumber
 DateToStr(dDate, 'DD/MM/YYYY')
 PersName + ' (таб. №' + TabN + ')'
 MOLFrom

 lName  lKod  KodEd  Ed  trbKol  otpKol  Price
 Price * otpKol - if (wGetTune('Fin.MBP.OstStoim') = 0, 0, SumIzn)
 InvNum  PasNum  SklNum

 TotSum  DoubleToStr(Count, '\m4')  DoubleToStr(TotSum, '\2p\m4')

 if (Pos('ноль', DoubleToStr(TotSum, '\2p5')) <> 0, '=',
   DoubleToStr(TotSum, '\2p88'))

 ''
 '/' + MolFromShort + '/'
 '/' + PersShort + '/'
.endFields
.{
#include MBP_M11P.frn
.{?Internal;(KolDoc = True);
.Fields
  'true' : 's'
.endFields
^
.}
.}
.endForm

//-------------------------------------------------------------------------
