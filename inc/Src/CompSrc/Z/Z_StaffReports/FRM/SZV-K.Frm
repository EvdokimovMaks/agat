/*
   =====================================================================
  │      Н Т О  "T O P   S O F T",  А О   "Н О В Ы Й   А Т Л А Н Т"     │
  │      Проект    : ГАЛАКТИКА  (с) 2000                                │
  │      Система   : Управление персоналом                              │
  │      Версия    : 5.8                                                │
  │      Разработал: Антонович А.К.     03/08/2001                      │
  │      Назначение:                                                    │
  │      Изменения :                                                    │
   =====================================================================
*/
#doc
  Форма СЗВ-К
#end
.form SZV_K
.Hide

.Fields

GalVer
RealInn_1
INN_1
KPP_1
Pred_1
NumPack_1
CurDate3 : Date
YearOtch
Terr_Usl_Pred
countDocInPack_1

OKUD
PsnNmb
StrahPolis
CurDate2
PsnNRec
FIO_1
FIO_2
FIO_3
BornDate
BornDate_1
BornDate_2
BornDate_3
Terr_Usl
PenStajRate         : double

Total_Staj_Yaer     : word
Total_Staj_Mon      : word
Total_Staj_Day      : word

countAllPeriod      : word
countTerrPeriod     : word
countOsobPeriod     : word
countVislPeriod     : word

typeDoc
Type_Form_1
Type_Form_2
Type_Form_3

Name_Org
Vid_Work
countStajPrev       : word

DateBeg
DateEnd
Terr_Usl_1
Osob_Usl
KPS
Staj_Osnovan
Staj_Dop_sved
Vyslug_Osnovan
Vyslug_Dop_sved

PenStajParam_0 : word
PenStajParam_1 : word
PenStajParam_2 : word
PenStajParam_3

PenStajVisl_1 : word
PenStajVisl_2 : word
PenStajVisl_3_1
PenStajVisl_3_2 : double

PegionKoef    : double
Post1
CountRec      : word

Terr_Usl_1_1
Osob_Usl_1_1
CodePos
OsnTrudStaj
Staj_Dop_sved_1
Vyslug_Osnovan_1
Vyslug_Dop_sved_1

AddPensParam_0      : word
AddPensParam_1      : word
AddPensParam_2      : word
AddPensParam_3

AddPensVisl_1       : word
AddPensVisl_2       : word
AddPensVisl_3       : double

Terr_Usl_2
PegionKoef2         : double
Post2

Post

Total_Staj_Yaer_1   : word
Total_Staj_Mon_1    : word
Total_Staj_Day_1    : word

countTerrPeriod_1   : word

Staj_TerUsl_Code
Staj_TerUsl_Yaer    : word
Staj_TerUsl_Mon     : word
Staj_TerUsl_Day     : word

Staj_TerUsl_Code_1
Staj_TerUsl_Yaer_1  : word
Staj_TerUsl_Mon_1   : word
Staj_TerUsl_Day_1   : word

countOsobPeriod_1   : word

Staj_OsobUsl_Code
Staj_OsobUsl_Yaer   : word
Staj_OsobUsl_Mon    : word
Staj_OsobUsl_Day    : word

Staj_OsobUsl_Code_1
Staj_OsobUsl_Yaer_1 : word
Staj_OsobUsl_Mon_1  : word
Staj_OsobUsl_Day_1  : word

countVislPeriod_1   : word

Staj_VL_Code
Staj_VL_Yaer        : word
Staj_VL_Mon         : word
Staj_VL_Day         : word

Staj_VL_Code_1
Staj_VL_Yaer_1      : word
Staj_VL_Mon_1       : word
Staj_VL_Day_1       : word

Page
Pages
PostBoss
FioBoss
CurDate
CurDate1
FIO

EndPack

CodeOKPO
INN
RealInn
KPP
Pred
countDocInPack      : word
NumPack             : word

ФИО_исполнителя

Post_BOSS_ADV6
FIO_BOSS_ADV6
Date_ADV6
Date_ADV6_1

.endFields

.{ SZV_KCycle_Pack  CheckEnter
GalVer               ^
RealInn_1            ^
INN_1                ^
KPP_1                ^
Pred_1               ^
NumPack_1            ^
CurDate3             ^
YearOtch             ^
Terr_Usl_Pred        ^
countDocInPack_1     ^

.{ SZV_KCycle_Main  CheckEnter
OKUD                 ^
PsnNmb               ^
StrahPolis           ^
CurDate2             ^
PsnNRec              ^
FIO_1                ^
FIO_2                ^
FIO_3                ^
BornDate             ^
BornDate_1           ^
BornDate_2           ^
BornDate_3           ^
Terr_Usl             ^
PenStajRate          ^

Total_Staj_Yaer      ^
Total_Staj_Mon       ^
Total_Staj_Day       ^

countAllPeriod       ^
countTerrPeriod      ^
countOsobPeriod      ^
countVislPeriod      ^

typeDoc              ^
Type_Form_1          ^
Type_Form_2          ^
Type_Form_3          ^


.{ SZV_KCycle1     CheckEnter
Name_Org             ^
Vid_Work             ^
countStajPrev        ^

.{ SZV_KCycle1_1   CheckEnter
DateBeg              ^
DateEnd              ^
Terr_Usl_1           ^
Osob_Usl             ^
KPS                  ^
Staj_Osnovan         ^
Staj_Dop_sved        ^
Vyslug_Osnovan       ^
Vyslug_Dop_sved      ^

PenStajParam_0       ^
PenStajParam_1       ^
PenStajParam_2       ^
PenStajParam_3       ^

PenStajVisl_1        ^
PenStajVisl_2        ^
PenStajVisl_3_1      ^
PenStajVisl_3_2      ^

PegionKoef           ^
Post1                ^
CountRec             ^

.{ SZV_KCycle1_1_1 CheckEnter
Terr_Usl_1_1         ^
Osob_Usl_1_1         ^
CodePos              ^
OsnTrudStaj          ^
Staj_Dop_sved_1      ^
Vyslug_Osnovan_1     ^
Vyslug_Dop_sved_1    ^

AddPensParam_0       ^
AddPensParam_1       ^
AddPensParam_2       ^
AddPensParam_3       ^

AddPensVisl_1        ^
AddPensVisl_2        ^
AddPensVisl_3        ^

PegionKoef2          ^
Post2                ^
Terr_Usl_2           ^
.}
Post                 ^
.}
.}

Total_Staj_Yaer_1    ^
Total_Staj_Mon_1     ^
Total_Staj_Day_1     ^

countTerrPeriod_1    ^

Staj_TerUsl_Code     ^
Staj_TerUsl_Yaer     ^
Staj_TerUsl_Mon      ^
Staj_TerUsl_Day      ^

.{ SZV_KCycle2     CheckEnter
Staj_TerUsl_Code_1   ^
Staj_TerUsl_Yaer_1   ^
Staj_TerUsl_Mon_1    ^
Staj_TerUsl_Day_1    ^
.}

countOsobPeriod_1    ^

Staj_OsobUsl_Code    ^
Staj_OsobUsl_Yaer    ^
Staj_OsobUsl_Mon     ^
Staj_OsobUsl_Day     ^

.{ SZV_KCycle3     CheckEnter
Staj_OsobUsl_Code_1  ^
Staj_OsobUsl_Yaer_1  ^
Staj_OsobUsl_Mon_1   ^
Staj_OsobUsl_Day_1   ^
.}

countVislPeriod_1    ^

Staj_VL_Code         ^
Staj_VL_Yaer         ^
Staj_VL_Mon          ^
Staj_VL_Day          ^

.{ SZV_KCycle4     CheckEnter
Staj_VL_Code_1       ^
Staj_VL_Yaer_1       ^
Staj_VL_Mon_1        ^
Staj_VL_Day_1        ^
.}

Page                 ^
Pages                ^
PostBoss             ^
FioBoss              ^
CurDate              ^
CurDate1             ^
FIO                  ^
.}

EndPack              ^

.{ CheckEnter SZVADV6_1_1
CodeOKPO             ^
INN                  ^
RealInn              ^
KPP                  ^
Pred                 ^
countDocInPack       ^
NumPack              ^
ФИО_исполнителя      ^
Post_BOSS_ADV6       ^
FIO_BOSS_ADV6        ^
Date_ADV6            ^
Date_ADV6_1          ^
.}
.}

.endform