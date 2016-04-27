/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 2001 ชฎเฏฎเ ๆจ๏ €€’€                         บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : ฎญโเฎซซจญฃ                                               บ
 บ ฅเแจ๏        : 7.1                                                       บ
 บ  งญ ็ฅญจฅ    : ฅ็ โ์ ฏเฎจงขฎคแโขฅญญฎฃฎ ฎโ็ฅโ                            บ
 บ โขฅโแโขฅญญ๋ฉ : ฅคขฅค์ .. (MEDVED)                                     บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name = 'RepHead'
.nameinlist ' งฎข ๏ ไฎเฌ '
.hide
.fields
  nRecRepHead
  TitleRep
	strFiltr
  NmVidPodr NmPodr  KauPodr nRecPodr
  Smena
  NumSmen
  NmPeriod nRecPeriod DateBeg DateEnd

  NmTypeRes

  nRecRepMove wKauDvRes cKauDvRes
  NNDvRes
  NmDvRes
  NmAnalitik nRecMnAnal
  NmParty    nRecParty
  NmEdI      nRecEI
  NmDopEI    nRecDopEi
  NmValut    nRecKlVal
  BegSaldo BegSum    BegSaldo2
  InCom    InSum     InCom2
  PotrCom  PotrSum   PotrCom2
  SpisCom  SpisSum   SpisCom2
  ProdCom  ProdSum   ProdCom2
  ProdComN ProdSumN  ProdComN2
  ProdNZP
  SentCom  SentSum   SentCom2
  RetCom   RetSum    RetCom2
  ShipCom  ShipSum   ShipCom2
  SaleCom  SaleSum   SaleCom2
  LostCom  LostSum   LostCom2
  EndSaldo EndSum    EndSaldo2

  nRecRepProd  wKauProd cKauProd
  NNProd
  NmProd
  NmAnalitikProd cMnAnalProd
  NmPartyProd     nRecPartyProd
  NmEdiProd       nRecEiProd
  NmDopEiProd     nRecDeiProd
  NmValutProd     nRecValutProd
  VidProd
  NmTechMarsh     nRecTM
  NmSpecif        nRecSpecif
  FactAmount      FactAmount2
  WeightMC1
  NormAmount      NormAmount2
  PriceProd
  NmStZatr        nRecStZatrProd
  NmKaElem        nRecKaElemProd

  NmOU             nRecOU
  nRecRepProdOU    wKauProdOu cKauProdOu
  NNProdOU
  NmProdOU
  NmAnalitikProdOU cMnAnalProdOU
  NmPartyProdOU    nRecPartyProdOU
  NmEdiProdOU      nRecEiProdOU
  NmDopEiProdOU    nRecDeiProdOU
  NmValutProdOU    nRecValutProdOU
  VidProdOU
  NmTechMarshOU    nRecTMOU
  NmSpecifOU       nRecSpecifOU
  FactAmountOU     FactAmount2OU
  WeightMC2
  NormAmountOU     NormAmount2OU
  PriceProdOU
  NmStZatrOU       nRecStZatrProdOU
  NmKaElemOU       nRecKaElemProdOU

  nRecRepMove_Rasx wKau_Rasx cKau_Rasx
  NNResCost
  NmResCost
  NmPartyResCost     nRecParty_Rasx
  NmAnalitikResCost  nRecMnAnal_Rasx
  NmValutCost        nRecValut_Rasx
  PriceCost
  nRecProd_Rasx NNProdCost NmProdCost
  NmPartyProdCost
  NmEdiCost
  NmDopEiCost
  BegSaldoCost BegSumCost     BegSaldoCost2
  PotrComCost  PotrSumCost    PotrComCost2
  SpisComCost  SpisSumCost    SpisComCost2
  WeightMC3
  SpisComNCost PriceSpisCost  SpisComNCost2
  EndSaldoCost EndSumCost     EndSaldoCost2
  NmNaznCost   nRecNazn_Rasx
  NmBudjCost   nRecBudj_Rasx
  NmStZatrCost nRecStZatr_Rasx
  WklInSebCost

  nRecRepMove_RasxSP wKau_RasxSP cKau_RasxSP  
  NNResCostSP
  NmResCostSP
  NmPartyResCostSP     nRecParty_RasxSP
  NmAnalitikResCostSP  nRecMnAnal_RasxSP
  NmValutCostSP        nRecValut_RasxSP
  PriceCostSP
  Itog_BegSaldo_1 Itog_BegSum      Itog_BegSaldo_2
  Itog_PotrCom_1  Itog_PotrSum     Itog_PotrCom_2
  Itog_SpisCom_1  Itog_SpisSum     Itog_SpisCom_2
  Itog_SpisComN_1 Itog_SpisComNSum Itog_SpisComN_2
  Itog_EndSaldo_1 Itog_EndSum      Itog_EndSaldo_2
  nRecProd_RasxSP NNProdCostSP NmProdCostSP
  NmPartyProdCostSP
  NmEdiCostSP
  NmDopEiCostSP
  BegSaldoCostSP BegSumCostSP     BegSaldoCost2SP
  PotrComCostSP  PotrSumCostSP    PotrComCost2SP
  SpisComCostSP  SpisSumCostSP    SpisComCost2SP
  WeightMC3SP
  SpisComNCostSP PriceSpisCostSP  SpisComNCost2SP
  EndSaldoCostSP EndSumCostSP     EndSaldoCost2SP
  NmNaznCostSP   nRecNazn_RasxSP
  NmBudjCostSP   nRecBudj_RasxSP
  NmStZatrCostSP nRecStZatr_RasxSP
  WklInSebCostSP
  ItogCostBegSaldo_1 ItogCostBegSum      ItogCostBegSaldo_2
  ItogCostPotrCom_1  ItogCostPotrSum     ItogCostPotrCom_2
  ItogCostSpisCom_1  ItogCostSpisSum     ItogCostSpisCom_2
  ItogCostSpisComN_1 ItogCostSpisComNSum ItogCostSpisComN_2
  ItogCostEndSaldo_1 ItogCostEndSum      ItogCostEndSaldo_2

  NmOperate
  NmTypeResLink
  nRecRepLink
  NNResLink
  NmResLink
  NmAnalitikLink nRecAnalitikLink
  NmPartyLink    nRecpartyLink
  NmEdiLink      nRecEiLink
  NmDopEiLink    nRecDopEiLink
  NmValutLink    nRecValutLink
  NmPodrLink     wKauPodrLink cKauPodrLink
  AmountLink SummaLink AmountLink2
  NmAnalitikNazn nRecAnalitikNazn
  NmAnalitikOtgr nRecAnalitikOtgr

  nRecRepSale  wKauOtgr cKauOtgr
  NNResOtgr
  NmResOtgr
  NmAnalitekResOtgr   nRecAnalitOtgr
  NmPartyResOtgr      nRecPartyOtgr
  NmEdiSale           nRecEiOtgr
  NmValutSale         nRecValutOtgr
  NmdopEiSale         nRecDopEiOtgr
  BegSaldoSale    BegSumSale     BegSaldoSale2
  ShipComSale     ShipSumSale    ShipComSale2
  SaleComSale     SaleSumSale    SaleComSale2
  LostComSale     LostSumSale    LostComSale2
  EndSaldoSale    EndSumSale     EndSaldoSale2
  DocumComSale    DocumSumSale
  TakeSumSale

  NmOperateOpOtgr
  NmTypeResOpOtgr
  nRecRepOpOtgr
  NNResOpOtgr
  NmResOpOtgr        wKauResOpOtgr cKauOpResOtgr
  NmAnalitikOpOtgr   nRecAnalitikOpOtgr
  NmPartyOpOtgr      nRecPartyOpOtgr
  NmEdiOpOtgr        nRecEiOpOtgr
  NmDopEiOpOtgr      nRecDeiOpOtgr
  NmValutOpOtgr      nRecValutOpotgr
  NmPodrOpOtgr       wKauPodrOpOtgr cKauPodrOpOtgr
  AmountOpOtgr SummaOpOtgr AmountOpOtgr2
  NmAnalitikNaznOpOtgr nRecAnalitikNaznOpOtgr

  NmCatalogs      nRecMoveWork nRecCatalogs
  EiTime
  NmValutWork     nRecValutWork
  NormTime
  FactTime
  NormOplata
  FactOplata
  NNProdWork
  NmProdWork      nRecRepProdWork  wKauProdWork cKauProdWork
  NmPartyWork     nRecPartyWork
  TarSetka
  Rascenka
  SistOpl
  Razrjad
  NormTimeWork
  FactTimeWork
  NormOplataWork
  FactOplataWork
  NmNaznWork      nRecNaznWork
  NmStZatrWork    nRecStZatrWork
  NmKaElemWork    nRecKaElemWork
  NmBudjWork      nRecBudj
  WklInSebest
.endfields

.{
^
^
^
^ ^ ^ ^
^ ^
^ ^ ^ ^

.{ SheetMoveCycle CheckEnter
.{ TypeMoveCycle CheckEnter
^
.{ RepMoveCycle CheckEnter
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ 
.}
.}
.}

.{ SheetProdCycle CheckEnter
.if notSloj
.{ RepProdCycle CheckEnter
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.else
.{ RepProdOUCycle CheckEnter
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.end
.}

.{ SheetCostCycle CheckEnter
.{ ResCostCycle CheckEnter
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.{ RasxCostCycle CheckEnter
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}
.}

.{ SheetCostSPCycle CheckEnter
.{ ResCostSPCycle CheckEnter
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^  ^ ^ ^ ^ ^  ^ ^ ^ ^ ^  ^ ^ ^ ^ ^
.{ RasxCostSPCycle CheckEnter
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}
.{ ItogCostSpCycle CheckEnter
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ 
.}
.}

.{ SheetLinkCycle CheckEnter
.{ OperateCycle CheckEnter
^
.{ TypeResLinkCycle CheckEnter
^
.{ RepLinkCycle CheckEnter
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}
.}
.}

.{ SheetOtgrCycle CheckEnter
.{ OtgrCycle CheckEnter
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}

.{ SheetOpOtgrCycle CheckEnter
.{ OpOtgrCycle CheckEnter
^
.{ TypeResOpOtgrCycle CheckEnter
^
.{ OpOtgrResCycle CheckEnter
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}
.}
.}

.{ SheetWorkCycle CheckEnter
.{ CatalogsCycle CheckEnter
^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.{ RepWorkCycle CheckEnter
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}
.}
.}
.endform

