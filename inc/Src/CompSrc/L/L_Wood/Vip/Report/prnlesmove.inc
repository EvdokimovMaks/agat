// остатки по МЦ
Table Struct TmpNalT
(
  cMc  : comp   "Матценность"
, cPodr: comp   "Подразделение"
, NalT : double "Остаток"
)
with index
(
  TmpNalT01 = cMc + cPodr
)
;

// итоговые суммы по группе
Table Struct TmpGroupMove
(
  cGrPodr   : comp   "Группа подразделений"
, cGroupMC  : comp   "Группа МЦ"
, NameGr    : string
, NameGrPodr: string
, NameEd    : string
, KolBeg    : double "Количество на начало"
, KolIn     : double "Количество, приход"
, KolOut    : double "Количество, расход"
, KolEnd    : double "Количество на конец периода"
)
with index
(
  TmpGroupMove00 = cGrPodr + cGroupMC
, TmpGroupMove01 = NameGrPodr + NameGr
, TmpGroupMove02 = KolBeg + KolEnd
)
;

// итоговые суммы по назначениям
Table Struct TmpNaznaMove
(
  cNazna   : comp    "Назначение"
, Name     : string
, KolBeg   : double  "Количество на начало"
, KolIn    : double  "Количество, приход"
, KolOut   : double  "Количество, расход"
, KolEnd   : double  "Количество на конец периода"
, boPrih   : boolean "TRUE, если приход"
, boRash   : boolean "TRUE, если расход"
)
with index
(
  TmpNaznaMove00 = cNazna
, TmpNaznaMove01 = boPrih + Name
, TmpNaznaMove02 = boRash + Name
)
;

// суммы по матценности
Table Struct TmpMCMove
(
  cMc      : comp   "Матценность"
, cGroupMC : comp   "Группа МЦ"
, cNazna   : comp   "Назначение"
, cGrPodr  : comp   "Группа подразделений"
, KolBeg   : double "Количество на начало"
, KolIn    : double "Количество, приход"
, KolOut   : double "Количество, расход"
, KolEnd   : double "Количество на конец периода"
)
with index
(
  TmpMCMove00 = cGrPodr + cGroupMC + cMc + cNazna
, TmpMCMove01 = cMc + cGroupMC + cGrPodr
, TmpMCMove02 = cMc + cNazna + cGrPodr
)
;

// суммы по разрезу назначение/группа МЦ/вид деятельности
Table Struct TmpLesMove
(
  cNazna   : comp   "Назначение"
, cGroupMC : comp   "Группа МЦ"
, cGrPodr  : comp   "Группа подразделений"
, KolIn    : double "Количество, приход"
, KolOut   : double "Количество, расход"
)
with index
(
  TmpLesMove00 = cNazna  + cGrPodr + cGroupMC
, TmpLesMove01 = cGrPodr + cGroupMC + cNazna
)
;
