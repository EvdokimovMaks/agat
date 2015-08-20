.Form 'IncomeExpense'
.Hide
.GROUP 'Отчет о доходах и расходах.'
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

Period_Nakopl
TitleName
TitleNumber

Num_St_Doh
Name_St_Doh

SumSt_Doh
SumSt_Doh_It

Num_St_Rash
Name_St_Rash

SumSt_Rash
SumSt_Rash_It

SumPribil
.EndFields

^
^
^
^
^

 .{.?PeriodName_IncomeExpense; ^.}
 .{.?VK_IncomeExpense; ^.}
 .{.?Balans_IncomeExpense; ^.}
 .{.?Vid_IncomeExpense; ^.}

.{
 .{.?stTitlePeriodName_IncomeExpense; ^.} 
 .{.?stTitle1_IncomeExpense; ^.}
 .{.?stTitleNum_IncomeExpense; ^.}

 .{.?stTitleDohod_IncomeExpense; .}
.{
  ^ ^ .{.?stSumDohod_IncomeExpense; ^.}
.}
 .{.?stSumDohodItog_IncomeExpense; ^.}
 .{.?stTitleRashod_IncomeExpense; .}
.{
 ^ ^ .{.?stSumRashod_IncomeExpense; ^.}
.}
 .{.?stSumRashodItog_IncomeExpense; ^.}
 .{.?stSumPribil_IncomeExpense; ^.}
.}

.endform			
