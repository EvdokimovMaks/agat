#doc
Каталог форм расчетов
#end
.autoForm 'PrintPayment'
.NameInList 'Каталог форм расчетов'
.list 'Каталог форм расчетов'
.Create view PrintPayment_main
(
  Params
)
as select
  if((KatPayment.wNalog and 1)<>0,'П','-')+
  if((KatPayment.wNalog and 2)<>0,'И','-')+
  if((KatPayment.wNalog and 4)<>0,'Б','-')+
  if((KatPayment.wNalog and 8)<>0,'Д','-')
  , KatPayment.*
from
  KatPayment(ReadOnly)
order by KatPayment.Name
;
.fields
  KatPayment.Name
  KatPayment.Code
!  if (KatPayment.wNalog=0,'Входит','Нет')
  Params
.endfields
──────────────────────────────┬───────────────┬───────────────
 Наименование                 │ Код           │Налог с продаж
──────────────────────────────┴───────────────┴───────────────
.{table 'PrintPayment_main.KatPayment' by KatPayment.Name
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ @~@@@@@@@@@@@@
.}
П - налог с продаж входит в учетную цену
И - к импортной/экспортной операции
Б - к бартерной операции
Д - не учитывать НДС
.endform
!--------------------------------------------------------------------