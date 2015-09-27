const
  FldTypePersons  = 0;
  FldTypePost     = 1;
  FldTypeKatstroy = 2;
  FldTypeMnfoper  = 3;
  FldTypeItem     = 4;
end;

table struct tValFields(
  nRec      : comp,
  GroupIndex: byte,
  FieldIndex: byte,
  FieldTitle: string[80],
  cCostItem : comp
) with index (
  i00 = nRec (Unique, Surrogate),
  i01 = GroupIndex + FieldIndex
);

table struct tRow (
  nRec     : comp,
  cPerson  : comp,
  cPost    : comp,
  cKatStroy: comp,
  cKatMarsh: comp,
  cMarshSp : comp,
  sBase    : string,
  cParent  : comp,
  Sort     : word,
  cSpMnPlan: comp,
  Level    : integer
) with index (
  i01 = nRec (unique, surrogate),
  i02 = cParent + Sort,
  i03 = Level,
  i04 = cSpMnPlan
);

table struct tVal (
  nRec      : comp,
  cRow      : comp,
  cValField : comp,
  cValSpMnP : comp,
  Value     : double,
  Distribute: double
) with index (
  i01 = nRec (unique, surrogate),
  i03 = cRow + cValField,
  i04 = cValSpMnP
);

table struct td (
  ccostitem: comp,
  cperson: comp,
  summa: double
) with index (
  i01 = cperson + ccostitem
);

type ttRow   = record as table tRow;
type ttRow_p = record as table tRow with x$position;
type ttVal   = record as table tVal;
type ttVal_p = record as table tVal with x$position;
