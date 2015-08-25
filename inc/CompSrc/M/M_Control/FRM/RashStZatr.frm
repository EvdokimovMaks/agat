//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
//Галактика 7.1 - Контроллинг
//Отчет "Расшифровка комплексной статьи"
//------------------------------------------------------------------------------
.set name = 'RashStZatr'
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

NameStZatrTek
Sum
.endfields

^
^
^
^
 .{.?stPRPeriod; ^.}
 .{.?stPRBalans; ^.}
 .{.?stPRVarCalc; ^.}
 .{.?stPRVidZatr; ^.}
 ^ 
.{
^  .{.?stPRSum; ^.}
.}
.endform
