/*

 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,99 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : €ขโฎโเ ญแฏฎเโ                                             บ
 บ ฅเแจ๏        : 6.00                                                      บ
 บ  งญ ็ฅญจฅ    : โ็ฅโ ฎ คขจฆฅญจจ  ขโฎฌฎกจซ์ญฎฃฎ โฎฏซจข                    บ
 บ โขฅโแโขฅญญ๋ฉ : ซ cจช  ขฅซ ซ คจฌจเฎขจ็                                 บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name='MGSM_Rep'
.hide
.fields
  Filter

  raund
  NaimPred
  TipTC

  BegDate  EndDate

  LKg PutReg ItgNaim Valut

  NameItg
  BegBakItg BegPutItg
	PrihodMyItg PrihodStItg
	RasNormItg RasFactItg SdanoItg
  EndBakItg EndPutItg
  EkonomItg NeEkonomItg
  EkonomOpenItg NeEkonomOpenItg

  PriceBegBakItg PriceBegPutItg
  PricePrihodMyItg PricePrihodStItg
  PriceRasNormItg PriceRasFactItg PriceSdanoItg
  PriceEndBakItg PriceEndPutItg
  PriceEkonomItg PriceNeEkonomItg
  PriceEkonomOpenItg PriceNeEkonomOpenItg

!---------------------------

  AnalGroup
  Speed
  SpeedEN
  SpeedE
  SumProbegN
  SumProbeg
  SumTimeN
  SumTime
  SpeedRN
  SpeedR

!---------------------------

  _NameItg
  _BegBakItg _BegPutItg
	_PrihodMyItg _PrihodStItg
	_RasNormItg _RasFactItg _SdanoItg
  _EndBakItg _EndPutItg
  _EkonomItg _NeEkonomItg
  _EkonomOpenItg _NeEkonomOpenItg

  _PriceBegBakItg _PriceBegPutItg
  _PricePrihodMyItg _PricePrihodStItg
  _PriceRasNormItg _PriceRasFactItg _PriceSdanoItg
  _PriceEndBakItg _PriceEndPutItg
  _PriceEkonomItg _PriceNeEkonomItg
  _PriceEkonomOpenItg _PriceNeEkonomOpenItg

!---------------------------

  AnalItg

  BegBak BegPut
	PrihodMy PrihodSt
	RasNorm RasFact Sdano
	EndBak EndPut
  Ekonom NeEkonom
  EkonomOpen NeEkonomOpen

  PriceBegBak PriceBegPut
  PricePrihodMy PricePrihodSt
  PriceRasNorm PriceRasFact PriceSdano
  PriceEndBak PriceEndPut
  PriceEkonom PriceNeEkonom
  PriceEkonomOpen PriceNeEkonomOpen

  EndCalc EndDevi
	FirstDrv LastDrv

!---------------------------

.endfields


.{
^
.}

^ ^ ^ ^ ^
^ ^ ^ ^
.{
^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^
.}


.{ CheckEnter GroupAnalMGSM
^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.{ CheckEnter ShapeAnalMGSM
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^
.}
.{ CheckEnter TotalAnalMGSM
^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^
^ ^
^ ^
.}
.}
.endform
