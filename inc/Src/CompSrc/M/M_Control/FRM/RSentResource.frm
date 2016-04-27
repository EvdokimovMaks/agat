//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
//Галактика 7.1 - Контроллинг
//Отчет "Распределение затрат по потребителям"
//------------------------------------------------------------------------------
.set name = 'RSentResource'
.nameinlist 'Базовая форма'
.hide
.fields
DataTimeUserStr
NameOth
NamePeriod
NameZatr
NameBalas
NameNastr
NameIzg
NameRes
NameKolSum
NameEi
NamePodr
Sum
.endfields
^ ^ ^ ^ ^ ^
.{
^
   .{.?stRes; ^.}
   .{.?stKolSum; ^.}
   .{.?stEi; ^.}
.{
 ^ .{.?stRSentSum; ^.}
.}
.}
.endform