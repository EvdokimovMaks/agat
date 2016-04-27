
.form Check_ss
.uniqueconsts
.hide

.fields
 dDate
 SS_Dep
 SS_Post
 Pers_fio
 Pers_tabnmb
 Pers_Post
 SS_Tariff
 SS_Tariff_Date
 SS_PAYMODEL
 SS_TAXRATE
 SS_MinTAXRATE
 SS_MaxTAXRATE
 Pers_Tariff
 Pers_Tariff_Date
 Pers_PAYMODEL
 Pers_TAXRATE
.endfields

  ^
.{ CheckDep CheckEnter
  ^
  ^
.{ CheckCycle CheckEnter
  ^^^^^^^^^^^^^
.}
.}
.endform
/*
.form Check_ss
.hide
.defo landscape
.fields
 Pers_Dep
 Pers_Post
 Pers_fio
 Pers_tabnmb
 SS_Tariff
 SS_Tariff_Date
 SS_PAYMODEL
 SS_TAXRATE
 SS_MinTAXRATE
 SS_MaxTAXRATE
 Pers_Tariff
 Pers_Tariff_Date
 Pers_PAYMODEL
 Pers_TAXRATE
.endfields
.{ CheckDep CheckEnter
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@
.{ CheckCycle CheckEnter
 И@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@ @@@@@@@@@ @@@@@@ ^ ^ @@@@@@@@ @@@@@@@@ @@@@@@@@@ @@@@@ @@@@@@@
.}
.}
.endform

.linkform "Отчет" prototype is Check_ss
.defo landscape
.fields
 Pers_Dep
 Pers_Post
 Pers_fio
 Pers_tabnmb
 SS_Tariff
 SS_Tariff_Date
 SS_PAYMODEL
 SS_TAXRATE
 Pers_Tariff
 Pers_Tariff_Date
 Pers_PAYMODEL
 Pers_TAXRATE
.endfields
.[h
 И┌──────────────────────┬──────────┬────────────────────────────────────────────┬───────────────────────────────────────────┐ И
 И│Фамилия, Имя, Отчество│табельный │         по штатному расписанию             │              по назначению                │ И
 И│                      │номер     ├───────────────────────┬──────┬─────────────┼──────────────────────┬──────┬─────────────┤ И
 И│                      │          │        тариф          │форма │  оклад,     │      тариф           │форма │  оклад,     │ И
 И│                      │          │  (наименование,дата)  │оплаты│  ставка     │ (наименование,дата)  │оплаты│  ставка     │ И
.]h
.{ CheckDep CheckEnter
 И├──────────────────────┴──────────┴───────────────────────┴──────┴─────────────┴──────────────────────┴──────┴─────────────┤ И
 И│ Подразделение : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                         │ И
 И│ Ставка        : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                         │ И
 И├──────────────────────┬──────────┬───────────────────────┬──────┬─────────────┬──────────────────────┬──────┬─────────────┤ И
.{ CheckCycle CheckEnter
 И│@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@│@@@@@@@@@@@ @@@@@@@@@@@│@@@@@@│&'&&&&&&&&.&&│@@@@@@@@@@@ @@@@@@@@@@│@@@@@@│&'&&&&&&&&.&&│ И
.}
.}
.[f
 И└──────────────────────┴──────────┴───────────────────────┴──────┴─────────────┴──────────────────────┴──────┴─────────────┘ И
.]f
.endform*/
