#doc
Печать каталога методов определения массы
#end
.AutoForm 'PrintMassa'
.NameInList 'Каталог методов определения массы'
.list 'Каталог методов определения массы'
.Create view PrintMassa_main
as select
  MetMassa.*
from
  MetMassa
order by MetMassa.Name
;
.fields
  MetMassa.Name
  MetMassa.Code
  MetMassa.Precision
.endfields
──────────────────────────────┬───────────────┬───────────────
 Наименование                 │ Код           │Точность
──────────────────────────────┴───────────────┴───────────────
.{table 'PrintMassa_main.MetMassa' by MetMassa.Name
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ &&&&&&&&.&&&&&
.}
.endform
!--------------------------------------------------------------------