table struct pws (
  Nrec: comp,
  MnplanNrec: comp,
  Number: string[20],
  Name: string[80],
  PeriodNrec: comp,
  PodrNrec: comp,
  StartDate: date,
  EndDate: date
) with index (
  i01 = Nrec (unique, surrogate),
  i02 = MnplanNrec
);

table struct pwsPerson (
  Nrec            : comp,
  SpmnplanNrec    : comp,
  pwsNrec         : comp,
  PersonNrec      : comp,
  PersonName      : string,
  PersonCode      : string,
  LSchetNrec      : comp,
  PayModel        : word,
  Grade           : word,
  WorkMode        : word,
  BalanceHoursPlan: double,
  BalanceHoursFact: double,
  WorkedHoursFull : double,
  SalaryPlan      : double,
  SalaryFact      : double,
  RatePercent     : double,
  PaymentValue    : double,
  HazardPayValue  : double,
  QualifPayValue  : double,
  BonusPercent    : double,
  BonusValue      : double,
  BonusHzrdPercent: double,
  BonusHzrdValue  : double,
  BonusOtherValue : double
) with index (
  i01 = Nrec (unique, surrogate),
  i02 = pwsNrec + personName
);

table struct pwsWork (
  Nrec            : comp,
  SpmnplNrec      : comp,
  ValspmnpNrec    : comp,
  pwsPersonNrec   : comp,
  Number          : string,
  JobCreationDate : date,
  JobFinishDate   : date,
  Kind            : word,
  KatstroyNrec    : comp,
  KatmarshNrec    : comp,
  KatmarshName    : string,
  KatmarshCode    : string,
  MarshSpNrec     : comp,
  MarshSpName     : string,
  MarshSpCode     : string,
  Grade           : byte,
  Qty             : double,
  PieceHours      : double,
  PrepareHours    : double,
  StdHours        : double,
  FullHours       : double,
  AvgHours        : double,
  Koeff           : double,
  Price           : double,
  Tarif           : double,
  PaymentValue    : double,
  HazardPayPercent: double,
  HazardPayValue  : double,
  QualifPayPercent: double,
  QualifPayValue  : double
) with index (
  i01 = Nrec (unique, surrogate),
  i02 = pwsPersonNrec + Nrec
);

table struct tSums (
  pwsPersonNrec: comp,
  FullHours: double,
  ClearHours: double,
  HazardHours: double,
  PaymentValue: double,
  HazardPayValue: double,
  QualifPayValue: double
) with index (
  i01 = pwsPersonNrec (unique)
);

const
  ATTRNAM_PREPTIME  =  00010000000003A9h;
end;
