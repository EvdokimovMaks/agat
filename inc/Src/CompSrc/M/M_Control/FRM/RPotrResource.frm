//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
//Галактика 7.1 - Контроллинг
//Отчет "Свод затрат на производство"
//------------------------------------------------------------------------------
.set name = 'RPotrResource'
.nameinlist 'Базовая форма'
.hide
.fields
DataTimeUserStr
NamePeriod
NameBalas
NameFiltrMC
NameFiltrUsl
NamePotr
NameRes
NameEi
Kol
Sum
SumEi
Kol_Podr
Sum_Podr
.endfields
^ ^ ^ ^ ^
     .{.?stPodrPotr; ^.}
     .{.?stKolSumPodrPotr; .}
.{
 ^^^^^ .{.?stKolSumTek; ^ ^.}
.}
.endform