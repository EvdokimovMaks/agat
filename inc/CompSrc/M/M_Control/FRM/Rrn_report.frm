//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
//Галактика 7.1 - Контроллинг
//Отчет "Распределение ресурсов"
//------------------------------------------------------------------------------
.set name = 'Rrn_report'
.nameinlist 'Базовая форма'
.hide
.fields
DataTimeUserStr
Period
Number
Status
NameTitle
Title
DopFieldTitle
Res
PodrPotr
Obj
Kod
NameObj
Volume
EI
Norma
EIRes
Rasx
DopRasx
Itogo
VolumeIsp
LinkIsp
PotrIsp
SpisIsp
DopField
.endfields
^^^^
.{
^ ^
.}
 .{.?stDopFieldTitle1; ^.}
 .{.?stDopFieldTitle2;  .}
.{
^^^^^^^^^^^^^^^^ .{.?stDopField; ^.}
.}
.endform