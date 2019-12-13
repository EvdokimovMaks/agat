// Временная таблица для расчета сумм НДС элементов комплектной МЦ
table struct tmpNDSComp
(
  cSpDocs : Comp       "╧ючшЎш  ёяхЎшЇшърЎшш",
  Code    : String[20] "═юьхЁ яючшЎшш ёяхЎшЇшърЎшш",
  SumNDS  : Double     "╤єььр ═─╤"
)
with Index
(
  tmpNDSComp01 = Code,
  tmpNDSComp02 = cSpDocs
);
