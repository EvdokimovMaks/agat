/*
   =====================================================================
  �      � � �  "T O P   S O F T",  � �   "� � � � �   � � � � � �"     �
  �      �஥��    : ���������  (�) 2000                                �
  �      ���⥬�   : ��ࠢ����� ���ᮭ����                              �
  �      �����    : 5.8                                                �
  �      ���ࠡ�⠫: ��⮭���� �.�.     03/08/2001                      �
  �      �����祭��:                                                    �
  �      ��������� :                                                    �
   =====================================================================
*/


.linkform 'SZV-K_MAGNIT-70' prototype is 'SZV_K'
.nameinlist'���� ��� �� �� �� (�.07.00)'
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
     TypeEdit := '��������';
     TypeForm := '��������';
     }
 1:
     {
     TypeCorr := '��������������';
     TypeForm := '��������������';
     }
 2:
     {
     TypeCorr := '����������';
     TypeForm := '����������';
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
!"����"
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

!"����"
Vid_Work
Org100
!CountRec
countStajPrev

!"����"
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

!"����"
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
 <�������>
 <�����>^</�����>
  <��������������>
  <����ଠ�>07.00</����ଠ�>
  <��������>�������</��������>
   <�ணࠬ�������⮢��������>
   <���������ணࠬ��>���������</���������ணࠬ��>
   <�����>9.1</�����>
   </�ணࠬ�������⮢��������>
  <���筨�������>������������</���筨�������>
  </��������������>
  <��窠�室��儮�㬥�⮢ ���㦥���="� ��⠢� 䠩��" �⠤��="�� ��ࠡ�⪨">
   <��������_�����>
   <��������窥>1</��������窥>
   <����室�饩����>����� �����</����室�饩����>
    <���⠢�⥫쏠窨>
     <�������멍����>
     <���>^</���>
     <���>^</���>
     </�������멍����>
    <��������></��������>
    <��������></��������>
    <��ଠ></��ଠ>
    <�������������࣠����樨>^</�������������࣠����樨>
    <��������������⪮�></��������������⪮�>
    <�������樮��멍����>^</�������樮��멍����>
    </���⠢�⥫쏠窨>
    <�������窨>
.begin
  pach_nmb_1 := String(NumPack_1);
  pach_nmb_1 := LPad(pach_nmb_1, 5);
  pach_nmb_1 := Replace(pach_nmb_1, ' ', '0');
end.
    <�᭮����>^</�᭮����>
    </�������窨>
    <���⠢���㬥�⮢>
    <������⢮>1</������⢮>
     <����稥���㬥�⮢>
     <������㬥��>�����������</������㬥��>
     <������⢮>^</������⢮>
     </����稥���㬥�⮢>
    </���⠢���㬥�⮢>
   <��⠑��⠢�����>^</��⠑��⠢�����>
   </��������_�����>
.begin
 NumInPach := 1;
end.
.{ SZV_KCycle_Main  CheckEnter
.begin
 NumInPach := NumInPach + 1;
end.
   <�����������>
   <��������窥>^</��������窥>
   <�������>���-�</�������>
   <�����������>^</�����������>
   <���客�������>^</���客�������>
    <���>
    <�������>^</�������>
    <���>^</���>
    <����⢮>^</����⢮>
    </���>
   <��⠐�������>^</��⠐�������>
   <�����ਠ��륓᫮��31.12.2001>^</�����ਠ��륓᫮��31.12.2001>
   <��⠇���������>^</��⠇���������>
    <�⠦���������樨>
    <������⢮>^</������⢮>
.begin
 RecNmb :=0;
end.
.{ SZV_KCycle1     CheckEnter
.begin
Org100 := trim(Name_Org);
RecNmb := RecNmb + 1;
end.
     <��ਮ����⥫쭮��>
     <������⥫쭮��>^</������⥫쭮��>
     <�������������࣠����樨>^</�������������࣠����樨>
      <�᥏�ਮ�될����>
      <������⢮>^</������⢮>
.begin
PeriodNmb := 0
end.
.{ SZV_KCycle1_1   CheckEnter
.begin
 PeriodNmb := PeriodNmb + 1;
end.
!"����",,
        <��ਮ�������>
        <�᭮�����ப�>
        <�������ப�>^</�������ப�>
        <��⠍�砫���ਮ��>^</��⠍�砫���ਮ��>
        <��⠊��栏�ਮ��>^</��⠊��栏�ਮ��>
         <�ᮡ�����⨓��>
          <�����ਠ��륓᫮���>
          <�᭮�������>^</�᭮�������>
          <�����樥��>&.&&</�����樥��>
          </�����ਠ��륓᫮���>
          <�ᮡ륓᫮����㤠>
          <�᭮��������>^</�᭮��������>
          <������᪠>^</������᪠>
          </�ᮡ륓᫮����㤠>
          <����塞멑⠦>
          <�᭮�������>^</�᭮�������>
           <��ࠡ�⪠����>
           <����>^</����>
           <������>^</������>
           </��ࠡ�⪠����>
          </����塞멑⠦>
         <����℥�>^</����℥�>
          <���㣠���>
          <�᭮�������>^</�᭮�������>
           <��ࠡ�⪠�������ୠ�>
           <�᥌�����>^</�᥌�����>
           <�᥄��>^</�᥄��>
           </��ࠡ�⪠�������ୠ�>
          <����⠢��>&.&&</����⠢��>
          </���㣠���>
         <������������>^</������������>
         </�ᮡ�����⨓��>
        </�᭮�����ப�>
       </��ਮ�������>
.begin
LPeriodNmb :=0;
end.
.{ SZV_KCycle1_1_1 CheckEnter
.begin
LPeriodNmb := LPeriodNmb + 1
end.
!"����",^,"^","^","^",^,^,^,"^","^",^,^,&.&&,"^",&.&&,"^"
.}
.}
      </�᥏�ਮ�될����>
     </��ਮ����⥫쭮��>
.}
    </�⠦���������樨>
   </�����������>
.begin
TerrNmb := 1;
end.
.{?internal; countTerrPeriod_1 <> 0
!"����",^,"^",^,^,^
.}
.{ SZV_KCycle2     CheckEnter
.begin
TerrNmb := TerrNmb +1;
end.
.{?internal; countTerrPeriod_1 > 1
!"����",^,"^",^,^,^
.}
.}
.begin
UslNmb := 1;
end.
.{?internal; countOsobPeriod_1<>0
!"����",^,"^",^,^,^
.}
.{ SZV_KCycle3     CheckEnter
.begin
UslNmb := UslNmb +1;
end.
.{?internal; countOsobPeriod_1>1
!"����",^,"^",^,^,^
.}
.}
.begin
VislNmb := 1;
end.
.{?internal; countVislPeriod_1<>0
!"����",^,"^",^,^,^
.}
.{ SZV_KCycle4     CheckEnter
.begin
VislNmb := VislNmb +1;
end.
.{?internal; countVislPeriod_1>1
!"����",^,"^",^,^,^
.}
.}
.}
.{ CheckEnter SZVADV6_1_1
.}
  </��窠�室��儮�㬥�⮢>
 </�������>
^
.}
.endform
