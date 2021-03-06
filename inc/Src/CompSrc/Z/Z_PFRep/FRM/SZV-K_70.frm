/*
   =====================================================================
  ³          "T O P   S O F T",      "            "     ³
  ³      à®¥ªâ    :   (á) 2000                                ³
  ³      ¨áâ¥¬    : ¯à ¢«¥­¨¥ ¯¥àá®­ «®¬                              ³
  ³      ¥àá¨ï    : 5.8                                                ³
  ³       §à ¡®â «: ­â®­®¢¨ç ..     03/08/2001                      ³
  ³       §­ ç¥­¨¥:                                                    ³
  ³      §¬¥­¥­¨ï :                                                    ³
   =====================================================================
*/


.linkform 'SZV-K_MAGNIT-70' prototype is 'SZV_K'
.nameinlist' ©« ¤«ï  ­   (¢.07.00)'
.group 'MAGNIT_70'
!.F 'SZV_K_M_70.out'
.var
 TypeEdit   : string[20];
 TypeCorr   : string[20];
 TypeForm   : string[20];
 YearRep    : string[20];
 pach_nmb   : word;
 pach_nmb_1 : string[20];
 RecNmb     : word;
 NumInPach  : word;
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
     TypeEdit := '';
     TypeForm := '';
     }
 1:
     {
     TypeCorr := '';
     TypeForm := '';
     }
 2:
     {
     TypeCorr := '';
     TypeForm := '';
     }
 end;
end.
.fields
NameFile
my_inn
KPP_1
my_pred
RealInn_1

pach_nmb_1
countDocInPack_1
CurDate3

.endfields
.Fields
!""
NumInPach
!PsnNmb
TypeForm
trim(StrahPolis)
trim(FIO_1)
trim(FIO_2)
trim(FIO_3)
BornDate
Terr_Usl_Pred
CurDate2
countAllPeriod

!""
Vid_Work
Org100
!CountRec
countStajPrev

!""
PeriodNmb
DateBeg
DateEnd

Terr_Usl_1
PegionKoef

Osob_Usl
KPS

Staj_Osnovan
!PenStajParam_0
PenStajParam_1
PenStajParam_2
PenStajParam_3

Vyslug_Osnovan
PenStajVisl_1
PenStajVisl_2
PenStajVisl_3_2

Post1

!""
!LPeriodNmb
!Osob_Usl_1_1
!CodePos
!OsnTrudStaj

!AddPensParam_0
!AddPensParam_1
!AddPensParam_2
!AddPensParam_3

!Vyslug_Osnovan_1
!AddPensVisl_1
!AddPensVisl_2
!AddPensVisl_3

!Terr_Usl_2
!PegionKoef2
!Post2

!"TERR"
!TerrNmb
!Staj_TerUsl_Code
!Staj_TerUsl_Yaer
!Staj_TerUsl_Mon
!Staj_TerUsl_Day

!TerrNmb
!Staj_TerUsl_Code_1
!Staj_TerUsl_Yaer_1
!Staj_TerUsl_Mon_1
!Staj_TerUsl_Day_1

!"USL"
!UslNmb
!Staj_OsobUsl_Code
!Staj_OsobUsl_Yaer
!Staj_OsobUsl_Mon
!Staj_OsobUsl_Day

!UslNmb
!Staj_OsobUsl_Code_1
!Staj_OsobUsl_Yaer_1
!Staj_OsobUsl_Mon_1
!Staj_OsobUsl_Day_1

!"VISL"
!VislNmb
!Staj_VL_Code
!Staj_VL_Yaer
!Staj_VL_Mon
!Staj_VL_Day

!VislNmb
!Staj_VL_Code_1
!Staj_VL_Yaer_1
!Staj_VL_Mon_1
!Staj_VL_Day_1

EndPack

.endFields
.{ SZV_KCycle_Pack  CheckEnter
<?xml version="1.0" encoding="Windows-1251" ?>
 < ©«>
 <¬ï ©« >^</¬ï ©« >
  < £®«®¢®ª ©« >
  <¥àá¨ï®à¬ â >07.00</¥àá¨ï®à¬ â >
  <¨¯ ©« ></¨¯ ©« >
   <à®£à ¬¬ ®¤£®â®¢ª¨ ­­ëå>
   < §¢ ­¨¥à®£à ¬¬ë></ §¢ ­¨¥à®£à ¬¬ë>
   <¥àá¨ï>9.1</¥àá¨ï>
   </à®£à ¬¬ ®¤£®â®¢ª¨ ­­ëå>
  <áâ®ç­¨ª ­­ëå></áâ®ç­¨ª ­­ëå>
  </ £®«®¢®ª ©« >
  < çª å®¤ïé¨å®ªã¬¥­â®¢ ªàã¦¥­¨¥=" á®áâ ¢¥ ä ©« " â ¤¨ï="® ®¡à ¡®âª¨">
   <_>
   <®¬¥à¯ çª¥>1</®¬¥à¯ çª¥>
   <¨¯å®¤ïé¥©¯¨á¨> </¨¯å®¤ïé¥©¯¨á¨>
    <®áâ ¢¨â¥«ì çª¨>
     < «®£®¢ë©®¬¥à>
     <>^</>
     <>^</>
     </ «®£®¢ë©®¬¥à>
    <®¤></®¤>
    <®¤></®¤>
    <®à¬ ></®à¬ >
    < ¨¬¥­®¢ ­¨¥à£ ­¨§ æ¨¨>^</ ¨¬¥­®¢ ­¨¥à£ ­¨§ æ¨¨>
    < ¨¬¥­®¢ ­¨¥à âª®¥></ ¨¬¥­®¢ ­¨¥à âª®¥>
    <¥£¨áâà æ¨®­­ë©®¬¥à>^</¥£¨áâà æ¨®­­ë©®¬¥à>
    </®áâ ¢¨â¥«ì çª¨>
    <®¬¥à çª¨>
.begin
  pach_nmb_1 := String(NumPack_1);
  pach_nmb_1 := LPad(pach_nmb_1, 5);
  pach_nmb_1 := Replace(pach_nmb_1, ' ', '0');
end.
    <á­®¢­®©>^</á­®¢­®©>
    </®¬¥à çª¨>
    <®áâ ¢®ªã¬¥­â®¢>
    <®«¨ç¥áâ¢®>1</®«¨ç¥áâ¢®>
     < «¨ç¨¥®ªã¬¥­â®¢>
     <¨¯®ªã¬¥­â ></¨¯®ªã¬¥­â >
     <®«¨ç¥áâ¢®>^</®«¨ç¥áâ¢®>
     </ «¨ç¨¥®ªã¬¥­â®¢>
    </®áâ ¢®ªã¬¥­â®¢>
   < â ®áâ ¢«¥­¨ï>^</ â ®áâ ¢«¥­¨ï>
   </_>
.begin
 NumInPach := 1;
end.
.{ SZV_KCycle_Main  CheckEnter
.begin
 NumInPach := NumInPach + 1;
end.
   <>
   <®¬¥à¯ çª¥>^</®¬¥à¯ çª¥>
   <¨¤®à¬ë>-</¨¤®à¬ë>
   <¨¯¢¥¤¥­¨©>^</¨¯¢¥¤¥­¨©>
   <âà å®¢®©®¬¥à>^</âà å®¢®©®¬¥à>
    <>
    < ¬¨«¨ï>^</ ¬¨«¨ï>
    <¬ï>^</¬ï>
    <âç¥áâ¢®>^</âç¥áâ¢®>
    </>
   < â ®¦¤¥­¨ï>^</ â ®¦¤¥­¨ï>
   <¥àà¨â®à¨ «ì­ë¥á«®¢¨ï 31.12.2001>^</¥àà¨â®à¨ «ì­ë¥á«®¢¨ï 31.12.2001>
   < â  ¯®«­¥­¨ï>^</ â  ¯®«­¥­¨ï>
    <â ¦®¥£¨áâà æ¨¨>
    <®«¨ç¥áâ¢®>^</®«¨ç¥áâ¢®>
.begin
 RecNmb :=0;
end.
.{ SZV_KCycle1     CheckEnter
.begin
Org100 := trim(Name_Org);
RecNmb := RecNmb + 1;
end.
     <¥à¨®¤¥ïâ¥«ì­®áâ¨>
     <¨¤¥ïâ¥«ì­®áâ¨>^</¨¤¥ïâ¥«ì­®áâ¨>
     < ¨¬¥­®¢ ­¨¥à£ ­¨§ æ¨¨>^</ ¨¬¥­®¢ ­¨¥à£ ­¨§ æ¨¨>
      <á¥¥à¨®¤ë ¡®âë>
      <®«¨ç¥áâ¢®>^</®«¨ç¥áâ¢®>
.begin
PeriodNmb := 0
end.
.{ SZV_KCycle1_1   CheckEnter
.begin
 PeriodNmb := PeriodNmb + 1;
end.
!"",,
        <¥à¨®¤ ¡®âë>
        <á­®¢­ ïâà®ª >
        <®¬¥àâà®ª¨>^</®¬¥àâà®ª¨>
        < â  ç « ¥à¨®¤ >^</ â  ç « ¥à¨®¤ >
        < â ®­æ ¥à¨®¤ >^</ â ®­æ ¥à¨®¤ >
         <á®¡¥­­®áâ¨ç¥â >
          <¥àà¨â®à¨ «ì­ë¥á«®¢¨ï>
          <á­®¢ ­¨¥>^</á­®¢ ­¨¥>
          <®íää¨æ¨¥­â>&.&&</®íää¨æ¨¥­â>
          </¥àà¨â®à¨ «ì­ë¥á«®¢¨ï>
          <á®¡ë¥á«®¢¨ïàã¤ >
          <á­®¢ ­¨¥>^</á­®¢ ­¨¥>
          <®§¨æ¨ï¯¨áª >^</®§¨æ¨ï¯¨áª >
          </á®¡ë¥á«®¢¨ïàã¤ >
          <áç¨á«ï¥¬ë©â ¦>
          <á­®¢ ­¨¥>^</á­®¢ ­¨¥>
           <ëà ¡®âª ç á å>
           < áë>^</ áë>
           <¨­ãâë>^</¨­ãâë>
           </ëà ¡®âª ç á å>
          </áç¨á«ï¥¬ë©â ¦>
         <¥ªà¥â¥â¨>^</¥ªà¥â¥â¨>
          <ëá«ã£ ¥â>
          <á­®¢ ­¨¥>^</á­®¢ ­¨¥>
           <ëà ¡®âª  «¥­¤ à­ ï>
           <á¥¥áïæë>^</á¥¥áïæë>
           <á¥­¨>^</á¥­¨>
           </ëà ¡®âª  «¥­¤ à­ ï>
          <®«ïâ ¢ª¨>&.&&</®«ïâ ¢ª¨>
          </ëá«ã£ ¥â>
         <à®ä¥áá¨ï®«¦­®áâì>^</à®ä¥áá¨ï®«¦­®áâì>
         </á®¡¥­­®áâ¨ç¥â >
        </á­®¢­ ïâà®ª >
       </¥à¨®¤ ¡®âë>
.begin
LPeriodNmb :=0;
end.
.{ SZV_KCycle1_1_1 CheckEnter
.begin
LPeriodNmb := LPeriodNmb + 1
end.
!"",^,"^","^","^",^,^,^,"^","^",^,^,&.&&,"^",&.&&,"^"
.}
.}
      </á¥¥à¨®¤ë ¡®âë>
     </¥à¨®¤¥ïâ¥«ì­®áâ¨>
.}
    </â ¦®¥£¨áâà æ¨¨>
   </>
.begin
TerrNmb := 1;
end.
.{?internal; countTerrPeriod_1 <> 0
!"",^,"^",^,^,^
.}
.{ SZV_KCycle2     CheckEnter
.begin
TerrNmb := TerrNmb +1;
end.
.{?internal; countTerrPeriod_1 > 1
!"",^,"^",^,^,^
.}
.}
.begin
UslNmb := 1;
end.
.{?internal; countOsobPeriod_1<>0
!"",^,"^",^,^,^
.}
.{ SZV_KCycle3     CheckEnter
.begin
UslNmb := UslNmb +1;
end.
.{?internal; countOsobPeriod_1>1
!"",^,"^",^,^,^
.}
.}
.begin
VislNmb := 1;
end.
.{?internal; countVislPeriod_1<>0
!"",^,"^",^,^,^
.}
.{ SZV_KCycle4     CheckEnter
.begin
VislNmb := VislNmb +1;
end.
.{?internal; countVislPeriod_1>1
!"",^,"^",^,^,^
.}
.}
.}
.{ CheckEnter SZVADV6_1_1
.}
  </ çª å®¤ïé¨å®ªã¬¥­â®¢>
 </ ©«>
^
.}
.endform
