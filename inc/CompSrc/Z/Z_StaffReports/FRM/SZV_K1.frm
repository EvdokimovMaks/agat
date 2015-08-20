/*
   =====================================================================
  ³       ’   "T O P   S O F T",  €    "  ‚ › ‰   € ’ ‹ €  ’"     ³
  ³      ΰ®¥ªβ    : ƒ€‹€’€  (α) 2000                                ³
  ³      ‘¨αβ¥¬    : “―ΰ Ά«¥­¨¥ ―¥ΰα®­ «®¬                              ³
  ³      ‚¥ΰα¨ο    : 5.8                                                ³
  ³       §ΰ ΅®β «: €­β®­®Ά¨η €..     03/08/2001                      ³
  ³       §­ η¥­¨¥:                                                    ³
  ³      §¬¥­¥­¨ο :                                                    ³
   =====================================================================
*/


.linkform 'SZV-K_MAGNITlink1' prototype is 'SZV_K'
.nameinlist'” ©« ¤«ο ” ­   (Ά.04.00)'
.group 'MAGNIT'
.F 'SZV_K_M.out'
.var
 TypeEdit   : string[4];
 TypeCorr   : string[4];
 TypeForm   : string[4];
 YearRep    : string[4];
 pach_nmb   : word;
 RecNmb     : word;
 PeriodNmb, LPeriodNmb  : word;
 TerrNmb, UslNmb, VislNmb : word;
 Org100     : string[100]
 my_pred    : string[100];
 my_inn     : string[14]
.endvar
.begin
 my_inn  := Upcase( Trim( Replace( INN_1, '"', '''' ) ) );
 my_pred := Upcase( Trim( Replace( Pred_1, '"', '''' ) ) );
end.
.begin
 TypeEdit := '';
 TypeCorr := '';
 TypeForm := '';
 case word(TypeDoc) of
 0:
     {
     TypeEdit := '‘•„';
     TypeForm := '‘•„';
     }
 1:
     {
     TypeCorr := '';
     TypeForm := '';
     }
 2:
     {
     TypeCorr := '’';
     TypeForm := '’';
     }
 end;
end.
.fields
GalVer
RealInn_1
my_inn
KPP_1
my_pred

NumPack_1
CurDate3
YearOtch
TypeEdit
TypeCorr
!Terr_Usl_Pred
countDocInPack_1
.endfields
.Fields
!"‚"
PsnNmb
TypeForm
trim(StrahPolis)
trim(FIO_1)
trim(FIO_2)
trim(FIO_3)
BornDate
Terr_Usl
PenStajRate
Total_Staj_Yaer
Total_Staj_Mon
Total_Staj_Day
CurDate2
countAllPeriod
countTerrPeriod
countOsobPeriod
countVislPeriod

!"„…’"
RecNmb
Org100
Vid_Work
countStajPrev

!"‘’†"
PeriodNmb
DateBeg
DateEnd
Osob_Usl
KPS

Staj_Osnovan
PenStajParam_0
PenStajParam_1
PenStajParam_2
PenStajParam_3

Vyslug_Osnovan
PenStajVisl_1
PenStajVisl_2
PenStajVisl_3_2
Terr_Usl_1
PegionKoef
Post1
CountRec

!"‹ƒ’"
LPeriodNmb
Osob_Usl_1_1
CodePos
OsnTrudStaj

AddPensParam_0
AddPensParam_1
AddPensParam_2
AddPensParam_3

Vyslug_Osnovan_1
AddPensVisl_1
AddPensVisl_2
AddPensVisl_3

Terr_Usl_2
PegionKoef2
Post2

!"TERR"
TerrNmb
Staj_TerUsl_Code
Staj_TerUsl_Yaer
Staj_TerUsl_Mon
Staj_TerUsl_Day

TerrNmb
Staj_TerUsl_Code_1
Staj_TerUsl_Yaer_1
Staj_TerUsl_Mon_1
Staj_TerUsl_Day_1

!"USL"
UslNmb
Staj_OsobUsl_Code
Staj_OsobUsl_Yaer
Staj_OsobUsl_Mon
Staj_OsobUsl_Day

UslNmb
Staj_OsobUsl_Code_1
Staj_OsobUsl_Yaer_1
Staj_OsobUsl_Mon_1
Staj_OsobUsl_Day_1

!"VISL"
VislNmb
Staj_VL_Code
Staj_VL_Yaer
Staj_VL_Mon
Staj_VL_Day

VislNmb
Staj_VL_Code_1
Staj_VL_Yaer_1
Staj_VL_Mon_1
Staj_VL_Day_1

EndPack

.endFields
.{ SZV_KCycle_Pack  CheckEnter
"‡ƒ‹‚","04.00","ƒ€‹€’€","^"
"’„","’„","^",^,^,"^"
"€—",^,"‘","61","^",1,^,"","","","^","^",0,0,0.00,0.00,0.00,0.00,0.00,0,0
"’„","‚",^
.{ SZV_KCycle_Main  CheckEnter
"‚",^,"^","^","^","^","^","‘’€„€’","^",0,0,0,"^",&.&&,^,^,^,"^",^,^,^,^
.begin
 RecNmb :=0
end.
.{ SZV_KCycle1     CheckEnter
.begin
Org100 := trim(Name_Org);
RecNmb := RecNmb + 1;
end.
"„…’",^,"^","^",^
.begin
PeriodNmb := 0
end.
.{ SZV_KCycle1_1   CheckEnter
.begin
 PeriodNmb := PeriodNmb + 1;
end.
"‘’†",^,"^","^","^","^","^",^,^,^,"^","^",^,^,&.&&,"^",&.&&,"^",^
.begin
LPeriodNmb :=0;
end.
.{ SZV_KCycle1_1_1 CheckEnter
.begin
LPeriodNmb := LPeriodNmb + 1
end.
"‹ƒ’",^,"^","^","^",^,^,^,"^","^",^,^,&.&&,"^",&.&&,"^"
.}
.}
.}
.begin
TerrNmb := 1;
end.
.{?internal; countTerrPeriod_1 <> 0
"’…",^,"^",^,^,^
.}
.{ SZV_KCycle2     CheckEnter
.begin
TerrNmb := TerrNmb +1;
end.
.{?internal; countTerrPeriod_1 > 1
"’…",^,"^",^,^,^
.}
.}
.begin
UslNmb := 1;
end.
.{?internal; countOsobPeriod_1<>0
"‘",^,"^",^,^,^
.}
.{ SZV_KCycle3     CheckEnter
.begin
UslNmb := UslNmb +1;
end.
.{?internal; countOsobPeriod_1>1
"‘",^,"^",^,^,^
.}
.}
.begin
VislNmb := 1;
end.
.{?internal; countVislPeriod_1<>0
"‚›‘‹",^,"^",^,^,^
.}
.{ SZV_KCycle4     CheckEnter
.begin
VislNmb := VislNmb +1;
end.
.{?internal; countVislPeriod_1>1
"‚›‘‹",^,"^",^,^,^
.}
.}
.}
^
.{ CheckEnter SZVADV6_1_1
.}
.}
.endform
