//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
//Галактика 7.1 - Контроллинг
//Отчет "БУХ_1 Потребление ресурсов"
//------------------------------------------------------------------------------
.set name = 'RUseResource'
.nameinlist 'Базовая форма'
.hide
.fields
DataTimeUserStr
NameOth
NameNastr
NamePeriod
NameVK
NameBalas
NameZatr
NameIzg
Name_Per
NameRes
NameStZatr
NameKolSum
NameEi
NamePodr
Sum
.endfields
^ 
^ 
^ 

 .{.?Period_RUseResource; ^.}
 .{.?VarCalc_RUseResource; ^.}
 .{.?Balans_RUseResource; ^.}
 .{.?VidZatr_RUseResource; ^.}

.{
^
   .{.?PeriodName_RUseResource; ^.}
   .{.?RPotrResource_stRes; ^.}
   .{.?RPotrResource_st_Zatr; ^.}
   .{.?RPotrResource_stKolSum; ^.}
   .{.?RPotrResource_stEi; ^.}
.{
 ^ .{.?RPotrResource_stRSentSum; ^.}
.}
.}
.endform