table struct mt_PlD
(
  isPick    : word,
  cSpStep   : comp,
  cPlDgDist : comp,
  NPlat : s20,
  dOpl  : date,
  SummaRasp : double,
  SummaOpl  : double,
  pckSumm   : double
)
with index
(
  mt_PLD01 = cSpStep,
  mt_PlD02 = isPick
);
