#doc
Каталог единиц подвижного состава
#end
.AutoForm 'PrintMoveCellOne'
.NameInList 'Каталог единиц подвижного состава'
.list 'Каталог форм расчетов'
.Create view PrintMoveCellOne_main
as select
  MoveCell.*
from
   MoveCell
 , GrMovCel
where ((MoveCell.cGrMovCel == GrMovCel.NRec))
order by MoveCell.Name
;

.fields
  MoveCell.Name
  MoveCell.Code
  GrMovCel.Name
.endfields
             Каталог единиц подвижного состава
──────────────────────────────────────────┬─────────────────────┬─────────────────────
 Наименование                             │ Код                 │ Группа
──────────────────────────────────────────┴─────────────────────┴─────────────────────
.{table 'PrintMoveCellOne_main.MoveCell' by MoveCell.Name
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@
.}
.endform