!
!  (c) 1987 корпорация ГАЛАКТИКА
!
!  Проект        : ГАЛАКТИКА
!  Система       : Оперативный контур
!  Версия        : 5.50
!
!  Назначение    : печать списка дефицитов с поставщиками
!
!  Ответственный : Александр Валерьевич Крахотко
!
!  Параметры     : ЕСТЬ
!
!--------------------------------------------------------------------
!  Изменения :
!       Автор:                                         Дата:
!       Цель :
!
!--------------------------------------------------------------------
!
#doc
печать списка дефицитов с поставщиками
#end
.AutoForm 'PrintSupplier'
.NameInList 'Список дефицитов'
.list 'Список дефицитов'
.Create view PrintSupplier_main
as select
  Suppl.*,
  KatMC.*,
  KatOrg.*,
  SpSopr.*
from
  Suppl             (ReadOnly) ,
  KatMC             (ReadOnly) ,
  KatOrg            (ReadOnly) ,
  KatEd             (ReadOnly) ,
  KatOtpEd          (ReadOnly)
where
      ((
             Suppl.cOrg        == KatOrg.nRec
         and Suppl.cVal        == KatOtpEd.nRec
         and Suppl.cMC         == KatMC.nRec
         and KatMC.cED         == KatED.nRec
      ))
;
.fields
  KatMC.Name
  KatMC.BarKod
  KatOtpEd.Name
  Suppl.Kol
  Suppl.Price
  KatOrg.Name+if(length(trim(PrintSupplier_main.KatOrg.UNN))>0,', УНН:'+PrintSupplier_main.KatOrg.UNN ,'')
.endfields
──────────────────────────────┬───────────────┬─────────┬────────────────┬────────────────┬───────────────────────────────────────
 Наименование МЦ              │ Номенклатурный│ Единица │ Количество     │ Цена           │ Поставщик
                              │ номер         │измерения│дефицита (заказ)│ закупки        │
──────────────────────────────┴───────────────┴─────────┴────────────────┴────────────────┴───────────────────────────────────────
.{table 'PrintSupplier_main.SUPPL' by KatMC.Name,KatMC.BarKod,KatOrg.Name,KatOrg.UNN;
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@@ &#'&&&&&&&&&&.&& &#'&&&&&&&&&&.&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.endform
!
