table struct mt_EventUpd
(
  cPlatDoc : comp,
  TiDk     : word,
  wMtdUpd  : word
)
with index
(
  mt_EventUpd01 = cPlatDoc,
  mt_EventUpd02 = cPlatDoc + TiDk,
  mt_EventUpd03 = cPlatDoc + TiDk + wMtdUpd
);

