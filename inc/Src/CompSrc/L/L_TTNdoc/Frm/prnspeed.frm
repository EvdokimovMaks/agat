#doc
Печать каталога типов скоростей
#end
.AutoForm 'PrintSpeed'
.NameInList 'Каталог типов скоростей'
.list 'Каталог типов скоростей'
.Create view PrintSpeed_main
as select
  KatSpeed.*
from
   KatSpeed
  ,KatEd
where
  ((
     KatSpeed.cEd == KatEd.NRec
  ))
order by KatSpeed.Name
;
.fields
  KatSpeed.Name
  KatSpeed.Code
  KatEd.Name
  KatSpeed.bSpeed
  KatSpeed.eSpeed
.endfields
────────────────────────────┬─────────────┬─────────┬──────────────────────
 Наименование               │ Код         │Единица  │      Скорость
                            │             │измерения├──────────┬───────────
                            │             │         │минимум   │максимум
────────────────────────────┴─────────────┴─────────┴──────────┴───────────
.{table 'PrintSpeed_main.KatSpeed' by KatSpeed.Name
@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@ @@@@@@@@ &&&'&&&.&&& &&&'&&&.&&&
.}
.endform
!--------------------------------------------------------------------