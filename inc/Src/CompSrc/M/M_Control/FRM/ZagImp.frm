.Form 'frZagImportPOProtocol'
.NameInList 'Базовая форма'
.Fields
  ImportDate ImportTime
  ImportZagFile
.endfields

   ПРОТОКОЛ ИМПОРТА РАСXОДНО-РАСПРЕДЕЛИТЕЛЬНОЙ ЧАСТИ ПО ОТ ^ - ^

             Данные о заголовках согласно  ^

.{ Cycle_ByZag2
.Fields
  PO_Number
  Podr_Number Podr_Name
  Per_Beg Per_End
  PO_Name
.endfields
 Производственный отчет: ^
.if Present01
 Подразделение с кодом ^ - ^
.end
.if Present02
 На период с ^ по ^
.end
.if ErrorPresent02
 ^
.end

.}
.endform