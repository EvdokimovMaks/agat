//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
//Галактика 7.1 - Контроллинг
//Отчет "Свод затрат на производство"
//------------------------------------------------------------------------------
.set name = 'RSvodProiz'
.nameinlist 'Базовая форма'
.hide
.fields
DataTimeUserStr
NamePeriod
NameBalas
NameNastr
NameStZatrTek
NamePodr
KodPodr
Sum
.endfields
^ ^ ^ ^
   .{.?stStZatrPr; ^.}
.{
 ^^ .{.?stRSumPr; ^.}
.}
.endform