//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
//Галактика 7.1 - Контроллинг
//Отчет "Рапределение расходов по комплексой статье"
//------------------------------------------------------------------------------
.set name = 'RashStZatrPodr'
.nameinlist 'Базовая форма'
.hide
.fields
TopRep
NameRep
NameStZatr
IstZatr
NamePeriod
NameBalas
NameVK
VidZatr
Valut
Xprint
Yprint
Zprint
KodPodr
NamDop
Sum
.endfields

^ 
^  
^
^
 .{.?stRPeriod; ^.}
 .{.?stRBalans; ^.}
 .{.?stRVarCalc; ^.}
 .{.?stRVidZatr; ^.}
 ^ 

.{
 ^  ^ .{.?stRZprint;^.}
.}
.{
 ^  .{.?stRNamDop; ^.}  .{.?stRSum; ^.}
.}
.endform
