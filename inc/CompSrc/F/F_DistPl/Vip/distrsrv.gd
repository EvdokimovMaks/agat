#ifndef _DISTRSRV_GD
#define _DISTRSRV_GD

table struct  t_chek
(
  cUsl     : comp,
  SumFact  : double,
  dRSumFact: double,
  dSumma   : double,
  dCurSumma: double,
  dKoef    : double,
  dDelta   : double,
  cSopr    : comp,
  Cena     : double
)
with index
(
  t_chek00 = cSopr + cUsl,
  t_chek01 = cSopr + dDelta,
  t_chek02 = cUsl
);

table struct  t_SpSopr
(
  cSpSopr : comp,     // ссылка на SpSopr
  cSopr   : comp,     //ссылка на накладную
  Npp     : tNpp,     // номер по порядку
  PrMCUsl : word,     // признак ( МЦ / услуги )
  KolFact : double,   // кол-во всего
  Price   : double,   // стоимость
  Summa1  : double,   //
  Summa2  : double,
  Summa3  : double,
  Summa4  : double,
  Summa5  : double,
  SumNDS  : double
)
with index
(
  t_SpSopr00 = cSpSopr,
  t_SpSopr01 = Summa3,
  t_SpSopr02 = cSopr + Summa3,
  t_SpSopr03 = cSopr + Npp + Summa3
);

table struct  t_KatS
(
  cKatSopr :comp,      // ссылка на KatSopr
  Summa1  : double,    // сумма к оплате по  KatSopr
  Summa2  : double,
  Summa3  : double,
  Summa4  : double,
  Summa5  : double,
  pr      : word,      //0 - отриц. сумма накладной, 1 - полож. сумма накл.
  dat     : date,      // дата накладной
  prOpr    : word,     //0 - отриц. сумма накладной, 1 - полож. сумма накл, 2 без даты
  datOpr  : date       // дата оприходования
)
with index
(
  t_KatS00 = cKatSopr,
  t_KatS01 = pr + dat + cKatSopr,
  t_KatS02 = prOpr + datOpr + cKatSopr
);

table struct t_AktIdx
(
  cAktIdx : comp, // акт на индексацию
  cAktSp  : comp // индексируемая позиция
);

table struct t_dolg
(
  dat  : date,
  kolD : double,
  sumD : double,
  kolO : double,
  sumO : double,
  cSP  : comp
)
with index
(
  t_dolg00 = cSP
);

#end // _DISTRSRV_GD
