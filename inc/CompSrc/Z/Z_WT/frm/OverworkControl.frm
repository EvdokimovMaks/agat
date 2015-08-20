.form OverworkControl
.hide
.uniqueconsts
.fields
  ОтчетныйГод: word
  ОтчетныйМесяц: string

  КодВидаОплаты: longint
  НаименованиеВидаОплаты: string

  НаименованиеПодразделения: string

  ЛицевойСчет: comp
  ТабельныйНомерРаботника: string
  Работник: string
  НачалоПериода: date
  ОкончаниеПериода: date
  СверхурочныхЧасов: double
  СписокДоплат: string
.endfields
^ ^
.{ SpecialPayKinds checkenter
^ ^
.}
.{ ReportBody checkenter
.if GroupingHeader
^
.else
^ ^ ^ ^ ^ ^ ^
.end
.}
.endform

//------------------------------------------------------------------------------
.linkform OverworkControl_Link1 prototype OverworkControl
.nameinlist 'Контроль сверхурочных работ'
.var
  LastPersonalAccount: comp
.endvar
.fields
  CommonFormHeader
  'за ' + ОтчетныйМесяц + ' ' + string(ОтчетныйГод) + ' г.'

  string(КодВидаОплаты) + ', ' + НаименованиеВидаОплаты

  НаименованиеПодразделения

  if(LastPersonalAccount <> ЛицевойСчет, ТабельныйНомерРаботника + ', ' + Работник, '')
  НачалоПериода
  ОкончаниеПериода
  СверхурочныхЧасов
  СписокДоплат
.endfields
.[h
^
.]h
                               БКонтроль сверхурочных работ Б
                              @~@@@@@@@@@@@@@@@@@@@@@@@@@

Специальные виды оплат
.{ OverworkControl_SpecialPayKinds checkenter
  ^
.}
.{ OverworkControl_ReportBody checkenter
.if OverworkControl_GroupingHeader
.begin LastPersonalAccount := 0 end.


 Б^ Б
   БРаботник                            С          По             Часов Примечания
  ----------------------------------- ---------- ---------- --------- -------------------- Б
.else
.{?internal;(LastPersonalAccount > 0) and (LastPersonalAccount <> ЛицевойСчет)

.}
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ &&&&&&.&& @@@@@@@@@@@@@@@@@@@@
.begin LastPersonalAccount := ЛицевойСчет end.
.end
.}
.endform
