
#doc
Отчет о расхождении цен
#end
.set name = 'DiffPrice'
.hide
.fields
  Num
  Dt
  Summ1
  Summ2
  McName
  McPrice1
  McPrice2
.endfields
^ ^
^ ^
.{
^ ^ ^
.}
.endform

! =============================================================================
#doc
Отчет о расхождении цен
#end
.linkform 'DiffPrice_1' prototype is 'DiffPrice'
.nameinlist 'Отчет о расхождении цен'
.fields
  Num
  Dt
  Summ1
  Summ2
  McName
  McPrice1
  McPrice2
.endfields
Номер документа: ^
Дата документа:  ^
Сумма по документу до    ^
Сумма по документу после ^

Наименование МЦ                                   Цена до       Цена после
.{
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &&&&&&&&&&.&&    &&&&&&&&&&.&&
.}
.endform
