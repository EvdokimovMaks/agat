//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 8.1 - Логистика
// Отфактуровка отпуска МЦ
//
//******************************************************************************

#doc
  Отфактуровка отпуска МЦ
#end

.form 'soprc45f'
.hide
.fields
  Katparty_Name

  MTabOtchet_TDocStr1
  MTabOtchet_Descr1
  MTabOtchet_dSopr1
  MTabOtchet_nSopr1
  MTabOtchet_KatOrgName1
  MTabOtchet_summa1
  MTabOtchet_valut1
  MTabOtchet_Skl1
  MTabOtchet_Mol1

// Накладная на отпуск МЦ
  MTabOtchet_TDocStr2
  MTabOtchet_Descr2
  MTabOtchet_dSopr2
  MTabOtchet_nSopr2
  MTabOtchet_KatOrgName2
  MTabOtchet_summa2
  MTabOtchet_valut2
  MTabOtchet_Skl2
  MTabOtchet_Mol2

// Накладная на внутреннее перемещение
  MTabOtchet_TDocStr3
  MTabOtchet_Descr3
  MTabOtchet_dSopr3
  MTabOtchet_nSopr3
  MTabOtchet_KatOrgName3
  MTabOtchet_summa3
  MTabOtchet_valut3
  MTabOtchet_Skl3
  MTabOtchet_Mol3

// Акт на списание МЦ со склада
  MTabOtchet_TDocStr4
  MTabOtchet_Descr4
  MTabOtchet_dSopr4
  MTabOtchet_nSopr4
  MTabOtchet_KatOrgName4
  MTabOtchet_summa4
  MTabOtchet_valut4
  MTabOtchet_Skl4
  MTabOtchet_Mol4

// Накладная на отпуск в производство
  MTabOtchet_TDocStr5
  MTabOtchet_Descr5
  MTabOtchet_dSopr5
  MTabOtchet_nSopr5
  MTabOtchet_KatOrgName5
  MTabOtchet_summa5
  MTabOtchet_valut5
  MTabOtchet_Skl5
  MTabOtchet_Mol5

// Акт на списание МЦ из производства
  MTabOtchet_TDocStr6
  MTabOtchet_Descr6
  MTabOtchet_dSopr6
  MTabOtchet_nSopr6
  MTabOtchet_KatOrgName6
  MTabOtchet_summa6
  MTabOtchet_valut6
  MTabOtchet_Skl6
  MTabOtchet_Mol6

// Акт передачи оборудования в монтаж
  MTabOtchet_TDocStr7
  MTabOtchet_Descr7
  MTabOtchet_dSopr7
  MTabOtchet_nSopr7
  MTabOtchet_KatOrgName7
  MTabOtchet_summa7
  MTabOtchet_valut7
  MTabOtchet_Skl7
  MTabOtchet_Mol7

// Акт передачи материалов на строительство
  MTabOtchet_TDocStr8
  MTabOtchet_Descr8
  MTabOtchet_dSopr8
  MTabOtchet_nSopr8
  MTabOtchet_KatOrgName8
  MTabOtchet_summa8
  MTabOtchet_valut8
  MTabOtchet_Skl8
  MTabOtchet_Mol8

// Ведомость оборудования, монтаж которого начат
  MTabOtchet_TDocStr9
  MTabOtchet_Descr9
  MTabOtchet_dSopr9
  MTabOtchet_nSopr9
  MTabOtchet_KatOrgName9
  MTabOtchet_summa9
  MTabOtchet_valut9
  MTabOtchet_Skl9
  MTabOtchet_Mol9

// Реестр смонтированного оборудования
  MTabOtchet_TDocStr10
  MTabOtchet_Descr10
  MTabOtchet_dSopr10
  MTabOtchet_nSopr10
  MTabOtchet_KatOrgName10
  MTabOtchet_summa10
  MTabOtchet_valut10
  MTabOtchet_Skl10
  MTabOtchet_Mol10

// Отчет по форме М-29
  MTabOtchet_TDocStr11
  MTabOtchet_Descr11
  MTabOtchet_dSopr11
  MTabOtchet_nSopr11
  MTabOtchet_KatOrgName11
  MTabOtchet_summa11
  MTabOtchet_valut11
  MTabOtchet_Skl11
  MTabOtchet_Mol11

// Рекламационная накладная от покупателя на возврат МЦ
  MTabOtchet_TDocStr12
  MTabOtchet_Descr12
  MTabOtchet_dSopr12
  MTabOtchet_nSopr12
  MTabOtchet_KatOrgName12
  MTabOtchet_summa12
  MTabOtchet_valut12
  MTabOtchet_Skl12
  MTabOtchet_Mol12

// Акт на перемещение между объектами
  MTabOtchet_TDocStr13
  MTabOtchet_Descr13
  MTabOtchet_dSopr13
  MTabOtchet_nSopr13
  MTabOtchet_KatOrgName13
  MTabOtchet_summa13
  MTabOtchet_valut13
  MTabOtchet_Skl13
  MTabOtchet_Mol13

// Накладная Склад-Спецоснастка
  MTabOtchet_TDocStr14
  MTabOtchet_Descr14
  MTabOtchet_dSopr14
  MTabOtchet_nSopr14
  MTabOtchet_KatOrgName14
  MTabOtchet_summa14
  MTabOtchet_valut14
  MTabOtchet_Skl14
  MTabOtchet_Mol14

// Акты выполненных ремонтов подрядным способом
  MTabOtchet_TDocStr17
  MTabOtchet_Descr17
  MTabOtchet_dSopr17
  MTabOtchet_nSopr17
  MTabOtchet_KatOrgName17
  MTabOtchet_summa17
  MTabOtchet_valut17
  MTabOtchet_Skl17
  MTabOtchet_Mol17

// Акты выполненных ремонтов собственными силами
  MTabOtchet_TDocStr18
  MTabOtchet_Descr18
  MTabOtchet_dSopr18
  MTabOtchet_nSopr18
  MTabOtchet_KatOrgName18
  MTabOtchet_summa18
  MTabOtchet_valut18
  MTabOtchet_Skl18
  MTabOtchet_Mol18

// Акты выполненных ремонтов на заказ
  MTabOtchet_TDocStr19
  MTabOtchet_Descr19
  MTabOtchet_dSopr19
  MTabOtchet_nSopr19
  MTabOtchet_KatOrgName19
  MTabOtchet_summa19
  MTabOtchet_valut19
  MTabOtchet_Skl19
  MTabOtchet_Mol19

// Накладная на передачу МЦ в ОС
  MTabOtchet_TDocStr20
  MTabOtchet_Descr20
  MTabOtchet_dSopr20
  MTabOtchet_nSopr20
  MTabOtchet_KatOrgName20
  MTabOtchet_summa20
  MTabOtchet_valut20
  MTabOtchet_Skl20
  MTabOtchet_Mol20

// Резервы по ДО
  MTabOtchet_TDocStr15
  MTabOtchet_Descr15
  MTabOtchet_dSopr15
  MTabOtchet_nSopr15
  MTabOtchet_KatOrgName15
  MTabOtchet_summa15
  MTabOtchet_valut15
  MTabOtchet_Skl15
  MTabOtchet_Mol15

// Резервы по НВП
  MTabOtchet_TDocStr16
  MTabOtchet_Descr16
  MTabOtchet_dSopr16
  MTabOtchet_nSopr16
  MTabOtchet_KatOrgName16
  MTabOtchet_summa16
  MTabOtchet_valut16
  MTabOtchet_Skl16
  MTabOtchet_Mol16

  FIO_user

.endfields

.{
  Katparty_Name         ^

.{
  MTabOtchet_TDocStr1    ^
  MTabOtchet_Descr1      ^
  MTabOtchet_dSopr1      ^
  MTabOtchet_nSopr1      ^
  MTabOtchet_KatOrgName1 ^
  MTabOtchet_summa1      ^
  MTabOtchet_valut1      ^
  MTabOtchet_Skl1        ^
  MTabOtchet_Mol1        ^
.}

.if DocExists2
.{
  MTabOtchet_TDocStr2    ^
  MTabOtchet_Descr2      ^
  MTabOtchet_dSopr2      ^
  MTabOtchet_nSopr2      ^
  MTabOtchet_KatOrgName2 ^
  MTabOtchet_summa2      ^
  MTabOtchet_valut2      ^
  MTabOtchet_Skl2        ^
  MTabOtchet_Mol2        ^
.}
.else
.end

.if DocExists3
.{
  MTabOtchet_TDocStr3    ^
  MTabOtchet_Descr3      ^
  MTabOtchet_dSopr3      ^
  MTabOtchet_nSopr3      ^
  MTabOtchet_KatOrgName3 ^
  MTabOtchet_summa3      ^
  MTabOtchet_valut3      ^
  MTabOtchet_Skl3        ^
  MTabOtchet_Mol3        ^
.}
.else
.end

.if DocExists4
.{
  MTabOtchet_TDocStr4    ^
  MTabOtchet_Descr4      ^
  MTabOtchet_dSopr4      ^
  MTabOtchet_nSopr4      ^
  MTabOtchet_KatOrgName4 ^
  MTabOtchet_summa4      ^
  MTabOtchet_valut4      ^
  MTabOtchet_Skl4        ^
  MTabOtchet_Mol4        ^
.}
.else
.end

.if DocExists5
.{
  MTabOtchet_TDocStr5    ^
  MTabOtchet_Descr5      ^
  MTabOtchet_dSopr5      ^
  MTabOtchet_nSopr5      ^
  MTabOtchet_KatOrgName5 ^
  MTabOtchet_summa5      ^
  MTabOtchet_valut5      ^
  MTabOtchet_Skl5        ^
  MTabOtchet_Mol5        ^
.}
.else
.end

.if DocExists6
.{
  MTabOtchet_TDocStr6    ^
  MTabOtchet_Descr6      ^
  MTabOtchet_dSopr6      ^
  MTabOtchet_nSopr6      ^
  MTabOtchet_KatOrgName6 ^
  MTabOtchet_summa6      ^
  MTabOtchet_valut6      ^
  MTabOtchet_Skl6        ^
  MTabOtchet_Mol6        ^
.}
.else
.end

.if DocExists7
.{
  MTabOtchet_TDocStr7    ^
  MTabOtchet_Descr7      ^
  MTabOtchet_dSopr7      ^
  MTabOtchet_nSopr7      ^
  MTabOtchet_KatOrgName7 ^
  MTabOtchet_summa7      ^
  MTabOtchet_valut7      ^
  MTabOtchet_Skl7        ^
  MTabOtchet_Mol7        ^
.}
.else
.end

.if DocExists8
.{
  MTabOtchet_TDocStr8    ^
  MTabOtchet_Descr8      ^
  MTabOtchet_dSopr8      ^
  MTabOtchet_nSopr8      ^
  MTabOtchet_KatOrgName8 ^
  MTabOtchet_summa8      ^
  MTabOtchet_valut8      ^
  MTabOtchet_Skl8        ^
  MTabOtchet_Mol8        ^
.}
.else
.end

.if DocExists9
.{
  MTabOtchet_TDocStr9    ^
  MTabOtchet_Descr9      ^
  MTabOtchet_dSopr9      ^
  MTabOtchet_nSopr9      ^
  MTabOtchet_KatOrgName9 ^
  MTabOtchet_summa9      ^
  MTabOtchet_valut9      ^
  MTabOtchet_Skl9        ^
  MTabOtchet_Mol9        ^
.}
.else
.end

.if DocExists10
.{
  MTabOtchet_TDocStr10   ^
  MTabOtchet_Descr10     ^
  MTabOtchet_dSopr10     ^
  MTabOtchet_nSopr10     ^
  MTabOtchet_KatOrgName10^
  MTabOtchet_summa10     ^
  MTabOtchet_valut10     ^
  MTabOtchet_Skl10       ^
  MTabOtchet_Mol10       ^
.}
.else
.end

.if DocExists11
.{
  MTabOtchet_TDocStr11   ^
  MTabOtchet_Descr11     ^
  MTabOtchet_dSopr11     ^
  MTabOtchet_nSopr11     ^
  MTabOtchet_KatOrgName11^
  MTabOtchet_summa11     ^
  MTabOtchet_valut11     ^
  MTabOtchet_Skl11       ^
  MTabOtchet_Mol11       ^
.}
.else
.end

.if DocExists12
.{
  MTabOtchet_TDocStr12   ^
  MTabOtchet_Descr12     ^
  MTabOtchet_dSopr12     ^
  MTabOtchet_nSopr12     ^
  MTabOtchet_KatOrgName12^
  MTabOtchet_summa12     ^
  MTabOtchet_valut12     ^
  MTabOtchet_Skl12       ^
  MTabOtchet_Mol12       ^
.}
.else
.end

.if DocExists13
.{
  MTabOtchet_TDocStr13   ^
  MTabOtchet_Descr13     ^
  MTabOtchet_dSopr13     ^
  MTabOtchet_nSopr13     ^
  MTabOtchet_KatOrgName13^
  MTabOtchet_summa13     ^
  MTabOtchet_valut13     ^
  MTabOtchet_Skl13       ^
  MTabOtchet_Mol13       ^
.}
.else
.end

.if DocExists14
.{
  MTabOtchet_TDocStr14   ^
  MTabOtchet_Descr14     ^
  MTabOtchet_dSopr14     ^
  MTabOtchet_nSopr14     ^
  MTabOtchet_KatOrgName14^
  MTabOtchet_summa14     ^
  MTabOtchet_valut14     ^
  MTabOtchet_Skl14       ^
  MTabOtchet_Mol14       ^
.}
.else
.end

.if DocExists17
.{
  MTabOtchet_TDocStr17   ^
  MTabOtchet_Descr17     ^
  MTabOtchet_dSopr17     ^
  MTabOtchet_nSopr17     ^
  MTabOtchet_KatOrgName17^
  MTabOtchet_summa17     ^
  MTabOtchet_valut17     ^
  MTabOtchet_Skl17       ^
  MTabOtchet_Mol17       ^
.}
.else
.end

.if DocExists18
.{
  MTabOtchet_TDocStr18   ^
  MTabOtchet_Descr18     ^
  MTabOtchet_dSopr18     ^
  MTabOtchet_nSopr18     ^
  MTabOtchet_KatOrgName18^
  MTabOtchet_summa18     ^
  MTabOtchet_valut18     ^
  MTabOtchet_Skl18       ^
  MTabOtchet_Mol18       ^
.}
.else
.end

.if DocExists19
.{
  MTabOtchet_TDocStr19   ^
  MTabOtchet_Descr19     ^
  MTabOtchet_dSopr19     ^
  MTabOtchet_nSopr19     ^
  MTabOtchet_KatOrgName19^
  MTabOtchet_summa19     ^
  MTabOtchet_valut19     ^
  MTabOtchet_Skl19       ^
  MTabOtchet_Mol19       ^
.}
.else
.end

.if DocExists20
.{
  MTabOtchet_TDocStr20   ^
  MTabOtchet_Descr20     ^
  MTabOtchet_dSopr20     ^
  MTabOtchet_nSopr20     ^
  MTabOtchet_KatOrgName20^
  MTabOtchet_summa20     ^
  MTabOtchet_valut20     ^
  MTabOtchet_Skl20       ^
  MTabOtchet_Mol20       ^
.}
.else
.end

.if DocExists15
.{
  MTabOtchet_TDocStr15   ^
  MTabOtchet_Descr15     ^
  MTabOtchet_dSopr15     ^
  MTabOtchet_nSopr15     ^
  MTabOtchet_KatOrgName15^
  MTabOtchet_summa15     ^
  MTabOtchet_valut15     ^
  MTabOtchet_Skl15       ^
  MTabOtchet_Mol15       ^
.}
.else
.end

.if DocExists16
.{
  MTabOtchet_TDocStr16   ^
  MTabOtchet_Descr16     ^
  MTabOtchet_dSopr16     ^
  MTabOtchet_nSopr16     ^
  MTabOtchet_KatOrgName16^
  MTabOtchet_summa16     ^
  MTabOtchet_valut16     ^
  MTabOtchet_Skl16       ^
  MTabOtchet_Mol16       ^
.}
.else
.end

  FIO_user               ^
.}

.endform
