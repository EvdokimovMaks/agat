//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 8.1 - Логистика
// Пакетный пересчет сумм НДЕ в накладных/актов по курсам на дату платежа
//******************************************************************************

/*Const
  lnPlatDoc   = 40;
  lnDateOplat = 15;
  lnSummaVal  = 19;
  lnValSymbol = 7;
  lnSummaNDE  = 19;
  lnCurseVal  = 11;
end;
*/
Table STRUCT TmpProtRSBP
(
  NRec      : tNRec
, Npp       : tNpp
, PlatDoc   : string              "Платежный документ или наименование"
, DateOplat : string[15] "Дата оплаты"
, SummaVal  : string[19]  "Сумма в валюте"
, ValSymbol : string[7] "Символ"
, SummaNDE  : string[19]  "Сумма в НДЕ, строка"
, doSummaNDE: TSumma              "Сумма в НДЕ"
, CurseVal  : string[11]  "Курс валюты"
, wItog     : word                "1 - долг, 2 - итог"
)
with index
(
  TmpProtRSBP01 = NRec + wItog
, TmpProtRSBP02 = Npp
);


Table STRUCT TmpSpSoprRSBP
(
  NRec     : tNRec
, SumDolg  : tSumma
, Summa    : tSumma
)
with index
(
  TmpSpSoprRSBP01 = NRec
);

