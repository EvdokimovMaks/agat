#doc
Каталог групп единиц подвижного состава
#end
.AutoForm 'PrintGrMoveCell'
.NameInList 'Каталог групп единиц подвижного состава'
.list 'Каталог форм расчетов'
.Create view PrintGrMoveCell_main
as select
  GrMovCel.*
from
   GrMovCel
order by GrMovCel.Name
;
.fields
  GrMovCel.Name
  GrMovCel.Code
.endfields
             Каталог групп единиц подвижного состава
──────────────────────────────────────────┬─────────────────────
 Наименование                             │ Код
──────────────────────────────────────────┴─────────────────────
.{table 'PrintGrMoveCell_main.GrMovCel' by GrMovCel.Name
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@
.}
.endform