/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,98 ��牆���罔� ���������                      �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ��ゃ�� ����←キ┘ 爛�������                               �
 � �ム瓱�        : 8.1                                                       �
 � ��Л�腑�┘    : ��爼� "���� ��｀� �� �メ閹"                               �
 � �癶モ痰▲��覃 :                                                           �
 � �Кキキ��     :                                                           �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�

*/
#doc
��爼� "���� ��｀� �� �メ閹"
#end
.set name = 'FRepMonth'
.group '���� ��｀� �� �メ閹'
.nameinlist '��М��� 筮爼�'
.hide
.fields
! ������〓� �砒モ�
NameForm
! �ム┏� �襦�爲�
Date1Filtr Date2Filtr
! Name ��爬���� ���筥��
vsVarGraf
! 筥�赳� (������腑���)
NameFiltr
! ���� 筮爼�牀�����
DateForm TimeForm
! ▲璢�┤ ������〓� ��痰�
PeriodV LongV

!
IspRem1
VidRem1
KurRem1
! ��む�Гカキ┘
PodrName
!
vs_Podr_Name_Cex 
vs_Podr_Name_Korp
! か� �珮���牀〓�
ObjRemIrName
ObjRemIrNumber
!
vsNameStTrud
!
vsTrudoemkt

! ���� 罔���
NameObj NrecObj InNum ObjRem_Number ObjRem_TexNum  Cex PodrName1 TipOR KatPlace
VidRem VidRemName vsSposobVipRabot_Graf vsSposobVipRabot_Zrem NrecVid Period EdPeriod Long DateN DateK DateNF DateKF
NormRem_LastRem
ObjRem_Value2
ObjRem_Tisp
ObjRem_RS
ObjRem_RSM
!

KYT
vsNumZak
NumDate_DO
dMonth
Tarif
TarifM
SumUsl
SumUslM
NormRem_Resource
NormRem_DateResource

!
vdSumKolRab

vdSumKolRabPr
!
vdSumKolRabOb

ObjRem_RSE    
vdSumKolRabE              
vdSumKolRabPrE
vdSumKolRabObE
SumUslE       
TarifE

Plan
R1  R2  R3  R4  R5  R6  R7  R8  R9  R10
R11 R12 R13 R14 R15 R16 R17 R18 R19 R20
R21 R22 R23 R24 R25 R26 R27 R28 R29 R30 R31 Isp IspName TimeOst TimeRem
Fakt
F1  F2  F3  F4  F5  F6  F7  F8  F9  F10
F11 F12 F13 F14 F15 F16 F17 F18 F19 F20
F21 F22 F23 F24 F25 F26 F27 F28 F29 F30 F31 IspF IspFName TimeOstF TimeRemF
! 罔�� �皰���諷 痺��
ItogName
! 痺��� �� き鍖 ������襯
SumDayP1
SumDayP2
SumDayP3
SumDayP4
SumDayP5
SumDayP6
SumDayP7
SumDayP8
SumDayP9
SumDayP10
SumDayP11
SumDayP12
SumDayP13
SumDayP14
SumDayP15
SumDayP16
SumDayP17
SumDayP18
SumDayP19
SumDayP20
SumDayP21
SumDayP22
SumDayP23
SumDayP24
SumDayP25
SumDayP26
SumDayP27
SumDayP28
SumDayP29
SumDayP30
SumDayP31

SumRS

vdSumKolRabPrItog
vdSumKolRabObItog

ItogKolOst ItogKolRem

vdItogCexSumUsl

SummaKolRab

ItogNameF
! 痺��� �� き鍖 ���皋腑瓷┘
SumDayF1
SumDayF2
SumDayF3
SumDayF4
SumDayF5
SumDayF6
SumDayF7
SumDayF8
SumDayF9
SumDayF10
SumDayF11
SumDayF12
SumDayF13
SumDayF14
SumDayF15
SumDayF16
SumDayF17
SumDayF18
SumDayF19
SumDayF20
SumDayF21
SumDayF22
SumDayF23
SumDayF24
SumDayF25
SumDayF26
SumDayF27
SumDayF28
SumDayF29
SumDayF30
SumDayF31
ItogKolOstF ItogKolRemF
.endfields

!
NameForm            ������〓� �砒モ�          ^
Date1Filtr          �                         ^
Date2Filtr          ��                        ^
vsVarGraf           ��爬��� ���筥��           ^
.{
NameFiltr           ������腑���               ^
.}
!
DateForm            ���� 筮爼�牀����� �砒モ�  ^
TimeForm            �爛�� 筮爼�牀����� �砒モ� ^
.{
.[h
! ▲璢�┤ ������〓� ��痰�
 ^ ^
.]h
.{
.{

.{ CheckEnter PodrNameLoopMonth

IspRem1  ^
VidRem1  ^
KurRem1  ^
PodrName ^
vs_Podr_Name_Cex  ^
vs_Podr_Name_Korp ^
.}

.{ CheckEnter RepMonthIrOR
   ObjRemIrName ^ ObjRemIrNumber ^
.}

.{ CheckEnter Shapka
                                .{.?Trud_P; ^.}
                                .{.?Trud; ^ .}
.}

NameObj ^ NrecObj ^ InNum ^ ObjRem_Number ^ ObjRem_TexNum ^ Cex ^ PodrName1 ^ TipOR ^ KatPlace ^ VidRem ^ VidRemName ^ 
vsSposobVipRabot_Graf ^ vsSposobVipRabot_Zrem ^
NrecVid ^ Period ^ EdPeriod ^ Long ^ DateN ^ DateK ^ DateNF ^ DateKF ^

NormRem_LastRem      ^
ObjRem_Value2        ^
ObjRem_Tisp          ^
ObjRem_RS            ^
ObjRem_RSM           ^

KYT                  ^
vsNumZak             ^
NumDate_DO           ^
dMonth               ^
Tarif                ^
TarifM               ^
SumUsl               ^
SumUslM              ^
NormRem_Resource     ^
NormRem_DateResource ^

                                .{.?Trud_1; ^ .}

vdSumKolRabPr ^ 
vdSumKolRabOb ^

.{ CheckEnter RepMonthAddinOR

ObjRem_RSE     ^
                                .{.?Trud_1_1; ^ .}

vdSumKolRabPrE ^ 
vdSumKolRabObE ^
SumUslE        ^
TarifE         ^
.}

Plan ^
              R1 ^  R2 ^  R3 ^  R4 ^  R5 ^  R6 ^  R7 ^  R8 ^  R9 ^  R10 ^
              R11 ^ R12 ^ R13 ^ R14 ^ R15 ^ R16 ^ R17 ^ R18 ^ R19 ^ R20 ^
              R21 ^ R22 ^ R23 ^ R24 ^ R25 ^ R26 ^ R27 ^ R28 ^ R29 ^ R30 ^ R31 ^
              Isp ^ IspName ^ TimeOst ^ TimeRem ^
Fakt ^
              F1 ^  F2 ^  F3 ^  F4 ^  F5 ^  F6 ^  F7 ^  F8 ^  F9 ^  F10 ^
              F11 ^ F12 ^ F13 ^ F14 ^ F15 ^ F16 ^ F17 ^ F18 ^ F19 ^ F20 ^
              F21 ^ F22 ^ F23 ^ F24 ^ F25 ^ F26 ^ F27 ^ F28 ^ F29 ^ F30 ^ F31 ^
              IspF ^ IspFName ^ TimeOstF ^ TimeRemF ^
.}
.{
ItogName     �皰�� ��             ^
SumDayP1     ^
SumDayP2     ^
SumDayP3     ^
SumDayP4     ^
SumDayP5     ^
SumDayP6     ^
SumDayP7     ^
SumDayP8     ^
SumDayP9     ^
SumDayP10    ^
SumDayP11    ^
SumDayP12    ^
SumDayP13    ^
SumDayP14    ^
SumDayP15    ^
SumDayP16    ^
SumDayP17    ^
SumDayP18    ^
SumDayP19    ^
SumDayP20    ^
SumDayP21    ^
SumDayP22    ^
SumDayP23    ^
SumDayP24    ^
SumDayP25    ^
SumDayP26    ^
SumDayP27    ^
SumDayP28    ^
SumDayP29    ^
SumDayP30    ^
SumDayP31    ^

SumRS        ^

vdSumKolRabPrItog  ^
vdSumKolRabObItog  ^

ItogKolOst   �皰�� ∇ガ� �牀痰��  ^
ItogKolRem   �皰�� ∇ガ� 爛�����  ^

vdItogCexSumUsl  ^

              .{.?Trud_2; ^.}

ItogNameF     �皰�� ��             ^
SumDayF1     ^
SumDayF2     ^
SumDayF3     ^
SumDayF4     ^
SumDayF5     ^
SumDayF6     ^
SumDayF7     ^
SumDayF8     ^
SumDayF9     ^
SumDayF10    ^
SumDayF11    ^
SumDayF12    ^
SumDayF13    ^
SumDayF14    ^
SumDayF15    ^
SumDayF16    ^
SumDayF17    ^
SumDayF18    ^
SumDayF19    ^
SumDayF20    ^
SumDayF21    ^
SumDayF22    ^
SumDayF23    ^
SumDayF24    ^
SumDayF25    ^
SumDayF26    ^
SumDayF27    ^
SumDayF28    ^
SumDayF29    ^
SumDayF30    ^
SumDayF31    ^

ItogKolOstF   �皰�� ∇ガ� �牀痰��  ^
ItogKolRemF   �皰�� ∇ガ� 爛�����  ^
.}
.}
.}
.endform