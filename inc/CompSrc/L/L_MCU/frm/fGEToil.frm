

#doc
Дополнительная информация МЦ
#end
.set name = 'capacity'
.hide
.fields
      KatPodr_Name:string
      KatMc_Name:string
      SpSkald_dCheck:date
      SpSklad_tCheck:time
      SpSklad_temper:double
      SpSklad_Density:double
      SpSklad_FIO:string
.endfields

.{
  ^ ^ ^ ^ ^ ^ ^
.}
.endform

#doc
Дополнительная информация МЦ
#end
.linkform 'capacity_01' prototype is capacity
.NameInList 'Дополнительная информация МЦ'
.DEFP PA4
.DEFO PORTRAIT
.PAPER PA4
.ORIENT PORTRAIT
.LL 80
.fields
      KatPodr_Name
      KatMc_Name
      SpSkald_dCheck
      SpSklad_tCheck
      SpSklad_temper
      SpSklad_Density
      SpSklad_FIO
.endfields

 Б                              Дополнительная информация МЦ.

 Й┌──────────────────┬───────────────────┬───────────┬─────┬───────────┬───────────┬──────────────────────┐
│Подразделение     │    Наименование   │   дата    │время│температура│ плотность │     примечание       │
├──────────────────┼───────────────────┼───────────┼─────┼───────────┼───────────┼──────────────────────┤
.{
│@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@│@@@@@│&&&&&&&.&&&│&&&&&.&&&&&│@@@@@@@@@@@@@@@@@@@@@@│
.}
└──────────────────┴───────────────────┴───────────┴─────┴───────────┴───────────┴──────────────────────┘ И
.endform
