#doc
Отчет по консигнатору
#end

.set name = 'RepCons'
.hide
.fields

  nRec
  OrgName
  NoDoc
  dDoc
  Boss
  MainBuh

  SP_nRec
  nRecMC
  NPP
  NameMC
  Kol         : double
  PriceOtp    : double
  SumOtp      : double
  PriceProd   : double
  SumProd     : double
  Pribl       : double

  ItogSumOtp  : double
  ItogSumProd : double
  ItogPribl   : double

.endfields

  nRec     ^
  OrgName  ^
  NoDoc    ^
  dDoc     ^
  Boss     ^
  MainBuh  ^

.{

  SP_nRec  ^
  nRecMC   ^
  NPP      ^
  NameMC   ^
  Kol      ^
  PriceOtp ^
  SumOtp   ^
  PriceProd^
  SumProd  ^
  Pribl    ^
.}
 
  ItogSumOtp   ^
  ItogSumProd  ^
  ItogPribl    ^

.endform
