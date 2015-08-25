table struct mt_NalogFin
(
  cSoprHoz  : Comp,
  cNalog    : Comp,
  Summa     : Double,
  SumVal    : Double,
  cVal      : Comp,
  KeyNalog  : s20,     
  Stavka    : Double

)
with index
(
  mt_NalogFin01 = cSoprHoz,
  mt_NalogFin02 =  cSoprHoz + cNalog + KeyNalog
);

