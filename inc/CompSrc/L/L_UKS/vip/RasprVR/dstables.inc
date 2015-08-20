//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.1 - Управление капитальными вложениями и строительством
// Таблицы в памяти для распределения затрат по группам оборудования
//------------------------------------------------------------------------------

Const

  cwRasprByVidRab = 1; // Распределение по видам работ
  cwRasprByUsl    = 2; // Распределение доп. затрат

end;

//******************************************************************************

Table struct MTDSKatSopr
(
  cSopr    : comp
, wVidRasp : word
, cGroup   : comp
, Sort     : string[100]
, bProc    : boolean
, cPodr    : comp
)
With index
(
  MTDSKatSopr01 = wVidRasp + cGroup + Sort
, MTDSKatSopr02 = wVidRasp + cGroup + cSopr
, MTDSKatSopr03 = wVidRasp + cGroup + bProc
, MTDSKatSopr04 = wVidRasp + bProc
)
;

//******************************************************************************

Table struct MTDSSpSopr
(
  cSopr     : comp
, cSpSopr   : comp
, cMC       : comp
, cParty    : comp
, wVidRasp  : word
, cGroup    : comp
, cOborud   : comp
, sMCOborud : string
, Sort      : string[100]
, Price     : double
, PriceNDE  : double
, Kol       : double
, KolSel    : double
, KolSpis   : double
, bProc     : boolean
, cObjStroy : comp
)
With index
(
  MTDSSpSopr01 = wVidRasp + cGroup + cSopr + Sort
, MTDSSpSopr02 = wVidRasp + cGroup + cSopr + KolSel
, MTDSSpSopr03 = wVidRasp + bProc
, MTDSSpSopr04 = wVidRasp + cGroup + bProc
)
;

//******************************************************************************

Table struct MTDSSklOst
(
  cMC       : comp
, cPodr     : comp
, cMOL      : comp
, cParty    : comp
, wSP       : word
, wVidRasp  : word
, cGroup    : comp
, cOborud   : comp
, sMCOborud : string
, Sort      : string[100]
, Price     : double
, Kol       : double
, KolSel    : double
, KolSpis   : double
, bProc     : boolean
, cObjStroy : comp
, cStZatr   : comp
)
With index
(
  MTDSSklOst01 = wVidRasp + cGroup + Sort
, MTDSSklOst02 = wVidRasp + bProc
, MTDSSklOst03 = Kol
, MTDSSklOst04 = wVidRasp + cGroup + bProc
)
;
