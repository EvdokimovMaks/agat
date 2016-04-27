table struct tImpSdNar (
  KatpodrCode : string[20],
  KatpodrNrec : comp,
  KatstroyCode: string[20],
  KatstroyNrec: comp,
  CostitemCode: string[20],
  CostitemNrec: comp,
  SubgroupCode: string[20],
  SubgroupNrec: comp,
  CategoryCode: string[20],
  CategoryNrec: comp,
  Value       : double
) with index (
  i01 = KatpodrCode + KatstroyCode + CostitemCode + SubgroupCode + CategoryCode
);
