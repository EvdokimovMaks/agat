//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
//Галактика 7.1 - Контроллинг
//Отчет "Потребление ресурсов по норме на выпуск"
//------------------------------------------------------------------------------
.set name = 'RSentResource_Clon'
.nameinlist 'Базовая форма'
.hide
.fields
UserDateName
NamePeriod
NameBalas
NameResRash
NameRasx
NameKol
NameEiVal
NamePodr
Volume
EI
Sum
.endfields
^
^ ^
   .{.?stUslRash; ^.}
   .{.?stRasx; ^.}
   .{.?stNameKol; ^.}
   .{.?stEiVal; ^.}
.{
 ^^^ .{.?stSumKolRasx; ^.}
.}
.endform