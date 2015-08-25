.Form 'InExp_Compare'
.Hide
.GROUP 'Сравнительный отчет о доходах и расходах.'
.Fields
DataTimeNameString

Org
NameRep
Nabor_Sk

Valuta

Period
VidSeb
VarCalc
Balance
VidSeb_Compare
VarCalc_Compare
Balance_Compare

Period_Nakopl

NumCol1
NumCol2
NumCol3
NullValue

Num_St_Doh
Name_St_Doh

SumSt_Doh
SumSt_Doh_Compare
SumSt_Doh_Otkl

SumSt_Doh_It
SumSt_Doh_It_Compare
SumSt_Doh_Otkl_It

NullValue2

Num_St_Rash
Name_St_Rash

SumSt_Rash
SumSt_Rash_Compare
SumSt_Rash_Otkl

SumSt_Rash_It
SumSt_Rash_It_Compare
SumSt_Rash_Otkl_It

SumPribil
SumPribil_Compare
SumPribil_Otkl
.EndFields

^
^
^ ^
^
 .{.?PeriodName_InExp_Compare; ^.}

^ 
 .{.?VK_BASE_InExp_Compare; ^.}
 .{.?Balans_BASE_InExp_Compare; ^.}

^
 .{.?VK_COMP_InExp_Compare; ^.}
 .{.?Balans_COMP_InExp_Compare; ^.}

.{
  .{.?stTitlePeriodName_InExp_Compare; ^ .}
  .{.?stTitleHead_InExp_Compare; .}
  .{.?stTitleNumberColumn_InExp_Compare; ^ ^ ^.}
  .{.?stTitleDohod_InExp_Compare; ^.}
.{
^ ^ .{.?stTitleDohodSumm_InExp_Compare; ^ ^ ^ .}
.}
  .{.?stTitleDohodItog_InExp_Compare; ^ ^ ^ .}
  .{.?stTitleRashod_InExp_Compare; ^.}
.{
^ ^ .{.?stTitleRashodSumm_InExp_Compare; ^ ^ ^ .}
.}
  .{.?stTitleRashodItog_InExp_Compare; ^ ^ ^ .}
   .{.?stTitlePribil_InExp_Compare; ^ ^ ^ .}
.}
.endform			
