//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
//Галактика 7.1 - Контроллинг
//Отчет "Затраты по предприятию в настраиваемых разрезах"
//------------------------------------------------------------------------------
.set name = 'Svod_va_tune'
.nameiNlist 'Базовая форма'
.hide
.fields
DataTimeNameString

NameOrg

NameRep
Val

PeriodName

VK
Balans
Vid

Period_Nakopl

TitleSt
TitleGr

NameSt_Bold
NameKod_Bold
Sum_Bold

NameSt
NameKod
Sum

Sum_Itog

.endfields

^
^ ^
^
 .{.?PeriodName_Svod_va_tune; ^.}
 .{.?VK_Svod_va_tune; ^.}
 .{.?Balans_Svod_va_tune; ^.}
 .{.?Vid_Svod_va_tune; ^.}

.{
 .{.?stTitlePeriodName_Svod_va_tune; ^.}
 ^ .{.?stTitleSumGr_Svod_va_tune; ^.}
.{
.if Svod_va_tune_Bold
 ^^ .{.?stSumGr_Bold_Svod_va_tune; ^.}
.else
 ^^ .{.?stSumGr_Svod_va_tune; ^.}
.end
.}
 .{.?SumGr_Itog_Svod_va_tune; ^.}
.}
.endform
