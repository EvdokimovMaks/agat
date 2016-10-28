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
NameRes_Bold
NameEi_Bold
Kol_Bold
Sum_Bold
SumEi_Bold
Kol_Podr_Bold
Sum_Podr_Bold
.endfields
^ ^ ^ ^ ^
     .{.?stPodrPotr; ^.}
     .{.?stKolSumPodrPotr; .}
.{

.if boPrintStat_Rpotr
 ^^^^^ .{.?stKolSumTek; ^ ^.}
.else
 ^^^^^ .{.?stKolSumTek_Bold; ^ ^.}
.end

.}
.endform
