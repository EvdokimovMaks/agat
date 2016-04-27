.form WorkingTimeBalance
.hide
.uniqueconsts
.fields
  НачалоПериода
  ОкончаниеПериода
  ПорядокГруппировки: integer

  НаименованиеУровняГруппировки1
  УровеньГруппировки1: integer

  НаименованиеУровняГруппировки2
  УровеньГруппировки2: integer

  ДнейОтработано: longint
  ЧасовОтработано: double
  ДнейВыходных: longint
  СреднесписочнаяЧисленность: double
  Наличие: longint

  ДнейОчередногоОтпуска: longint
  ДнейУчебногоОтпуска: longint
  ДнейПростоев: longint
  ДнейБолезни: longint
  ДнейРазрешенныхЗакономНеявок: longint
  ДнейОтпускаПоКолдоговору: longint
  ДнейРазрешенныхАдминистрациейНеявок: longint
  ДнейПрогулов: longint
  ДнейПрочихНеявок: longint
.endfields
^ ^ ^
.{ ReportBody checkenter
.if GroupingHeader
^ ^
.else
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.end
.}
.endform
