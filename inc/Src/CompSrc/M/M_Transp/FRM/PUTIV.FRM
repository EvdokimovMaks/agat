/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,97 ��௮��� ���������                      �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ����࠭ᯮ��                                             �
 � �����        : 5.00                                                      �
 � �����祭��    : ��⥢� �����                                             �
 � �⢥��⢥��� : ���� ��⠫�� ��堩�����                                 �
 ���������������������������������������������������������������������������ͼ
*/
.set name='putway'
.hide
.NameInList  '������ ��⥢�� ����'
.group '������ �/�'
!.p 60
.fields
!�᭮���� ����
 NameOrg Addr Tel Okpo
 BegDate :date
 Nrec_Pl :comp
 Npl Seria tWorkGsm :word
 DatPl DayDatPl MesDatPl YearDatPL
 Datpls datObr
 Gnom GarNom PodrTC Marka Nmper  Licensia
 Tabn1 FullFio1 FIO1  Nudov1 Klass1 SummaOpl1
 Tabn2 FullFio2 FIO2  Nudov2 Klass2 SummaOpl2
 Tabn3 FullFio3 FIO3  Nudov3 Klass3 SummaOpl3
 Tabn4 FullFio4 FIO4  Nudov4 Klass4 SummaOpl4
 Tabn5 FullFio5 FIO5  Nudov5 Klass5 SummaOpl5
 Tabn1_s Fio1_s Tabn2_s Fio2_s Tabn3_s Fio3_s
 Tabn4_s Fio4_s Tabn5_s Fio5_s
 Tabn_St FullFio_St FIO_St  Nudov_St Klass_St SummaOpl_St
!��楯�
In_pri Mar_Pri
TrlMar1 TrlMarNm1 TrlGnom1 TrlGarnom1 TrlMar2 TrlMarNm2 TrlGnom2 TrlGarnom2 TrlMar3 TrlMarNm3 TrlGnom3 TrlGarnom3
TrlMar4 TrlMarNm4 TrlGnom4 TrlGarnom4 TrlMar5 TrlMarNm5 TrlGnom5 TrlGarnom5 TrlMar6 TrlMarNm6 TrlGnom6 TrlGarnom6
Put_march
! ᢥ����� �  �����稪�� ��� �⠭������ ��
 Zak_name1 Zak_dnEx1 Zak_chEx1 Zak_DnRet1 Zak_chRet1 Zak_Pog1 Zak_Pog1_Nm Zak_Pog1_Addr Zak_raz1 Zak_raz1_nm Zak_raz1_Addr Zak_Gru1  Zak_Ez1
 Zak_Nar1 Zak_SpeedEx1 Zak_SpeedRet1 Zak_owEx1 Zak_owRet1 Zak_topl1 Zak_KodTop1 Zak_Zapr1 Zak_Norma1 Zak_fakt1 Zak_ras1
 Zak_march1 Zak_Usl1 WayItem_name1_First WayItem_name1_Last
 Zak_name2 Zak_dnEx2 Zak_chEx2 Zak_DnRet2 Zak_chRet2 Zak_Pog2 Zak_Pog2_Nm Zak_Pog2_Addr Zak_raz2 Zak_raz2_nm Zak_raz2_Addr Zak_Gru2  Zak_Ez2
 Zak_Nar2 Zak_SpeedEx2 Zak_SpeedRet2 Zak_owEx2 Zak_owRet2 Zak_topl2 Zak_KodTop2 Zak_Zapr2 Zak_Norma2 Zak_fakt2 Zak_ras2
 Zak_march2 Zak_Usl2 WayItem_name2_First WayItem_name2_Last
 Zak_name3 Zak_dnEx3 Zak_chEx3 Zak_DnRet3 Zak_chRet3 Zak_Pog3 Zak_Pog3_Nm Zak_Pog3_Addr Zak_raz3 Zak_raz3_nm Zak_raz3_Addr Zak_Gru3  Zak_Ez3
 Zak_Nar3 Zak_SpeedEx3 Zak_SpeedRet3 Zak_owEx3 Zak_owRet3 Zak_topl3 Zak_KodTop3 Zak_Zapr3 Zak_Norma3 Zak_fakt3 Zak_ras3
 Zak_march3 Zak_Usl3 WayItem_name3_First WayItem_name3_Last
 Zak_name4 Zak_dnEx4 Zak_chEx4 Zak_DnRet4 Zak_chRet4 Zak_Pog4 Zak_Pog4_Nm Zak_Pog4_Addr Zak_raz4 Zak_raz4_nm Zak_raz4_Addr Zak_Gru4  Zak_Ez4
 Zak_Nar4 Zak_SpeedEx4 Zak_SpeedRet4 Zak_owEx4 Zak_owRet4 Zak_topl4 Zak_KodTop4 Zak_Zapr4 Zak_Norma4 Zak_fakt4 Zak_ras4
 Zak_march4 Zak_Usl4 WayItem_name4_First WayItem_name4_Last
 Zak_name5 Zak_dnEx5 Zak_chEx5 Zak_DnRet5 Zak_chRet5 Zak_Pog5 Zak_Pog5_Nm Zak_Pog5_Addr Zak_raz5 Zak_raz5_nm Zak_raz5_Addr Zak_Gru5  Zak_Ez5
 Zak_Nar5 Zak_SpeedEx5 Zak_SpeedRet5 Zak_owEx5 Zak_owRet5 Zak_topl5 Zak_KodTop5 Zak_Zapr5 Zak_Norma5 Zak_fakt5 Zak_ras5
 Zak_march5 Zak_Usl5 WayItem_name5_First WayItem_name5_Last
 Zak_name6 Zak_dnEx6 Zak_chEx6 Zak_DnRet6 Zak_chRet6 Zak_Pog6 Zak_Pog6_Nm Zak_Pog6_Addr Zak_raz6 Zak_raz6_nm Zak_raz6_Addr Zak_Gru6  Zak_Ez6
 Zak_Nar6 Zak_SpeedEx6 Zak_SpeedRet6 Zak_owEx6 Zak_owRet6 Zak_topl6 Zak_KodTop6 Zak_Zapr6 Zak_Norma6 Zak_fakt6 Zak_ras6
 Zak_march6 Zak_Usl6 WayItem_name6_First WayItem_name6_Last
 Zak_name7 Zak_dnEx7 Zak_chEx7 Zak_DnRet7 Zak_chRet7 Zak_Pog7 Zak_Pog7_Nm Zak_Pog7_Addr Zak_raz7 Zak_raz7_nm Zak_raz7_Addr Zak_Gru7  Zak_Ez7
 Zak_Nar7 Zak_SpeedEx7 Zak_SpeedRet7 Zak_owEx7 Zak_owRet7 Zak_topl7 Zak_KodTop7 Zak_Zapr7 Zak_Norma7 Zak_fakt7 Zak_ras7
 Zak_march7 Zak_Usl7 WayItem_name7_First WayItem_name7_Last
 Zak_name8 Zak_dnEx8 Zak_chEx8 Zak_DnRet8 Zak_chRet8 Zak_Pog8 Zak_Pog8_Nm Zak_Pog8_Addr Zak_raz8 Zak_raz8_nm Zak_raz8_Addr Zak_Gru8  Zak_Ez8
 Zak_Nar8 Zak_SpeedEx8 Zak_SpeedRet8 Zak_owEx8 Zak_owRet8 Zak_topl8 Zak_KodTop8 Zak_Zapr8 Zak_Norma8 Zak_fakt8 Zak_ras8
 Zak_march8 Zak_Usl8 WayItem_name8_First WayItem_name8_Last
 Zak_name9 Zak_dnEx9 Zak_chEx9 Zak_DnRet9 Zak_chRet9 Zak_Pog9 Zak_Pog9_Nm Zak_Pog9_Addr Zak_raz9 Zak_raz9_nm Zak_raz9_Addr Zak_Gru9  Zak_Ez9
 Zak_Nar9 Zak_SpeedEx9 Zak_SpeedRet9 Zak_owEx9 Zak_owRet9 Zak_topl9 Zak_KodTop9 Zak_Zapr9 Zak_Norma9 Zak_fakt9 Zak_ras9
 Zak_march9 Zak_Usl9 WayItem_name9_First WayItem_name9_Last
 Zak_name10 Zak_dnEx10 Zak_chEx10 Zak_DnRet10 Zak_chRet10 Zak_Pog10 Zak_Pog10_Nm Zak_Pog10_Addr Zak_raz10 Zak_raz10_nm Zak_raz10_Addr Zak_Gru10  Zak_Ez10
 Zak_Nar10 Zak_SpeedEx10 Zak_SpeedRet10 Zak_owEx10 Zak_owRet10 Zak_topl10 Zak_KodTop10 Zak_Zapr10 Zak_Norma10 Zak_fakt10 Zak_ras10
 Zak_march10 Zak_Usl10 WayItem_name10_First WayItem_name10_Last
 Zak_name11 Zak_dnEx11 Zak_chEx11 Zak_DnRet11 Zak_chRet11 Zak_Pog11 Zak_Pog11_Nm Zak_Pog11_Addr Zak_raz11 Zak_raz11_nm Zak_raz11_Addr Zak_Gru11  Zak_Ez11
 Zak_Nar11 Zak_SpeedEx11 Zak_SpeedRet11 Zak_owEx11 Zak_owRet11 Zak_topl11 Zak_KodTop11 Zak_Zapr11 Zak_Norma11 Zak_fakt11 Zak_ras11
 Zak_march11 Zak_Usl11 WayItem_name11_First WayItem_name11_Last
!⮯���� ��� �⠭������ ��
 KodToplDvi1 ToplDvi1   VidanToplDvi1 :double OctatExiDvi1:double  OctatRetDvi1 SdanToplDvi1
 KofnIzmDvi1 NormaTopDvi1  FaktTopDvi1
 KodToplDvi2 ToplDvi2  VidanToplDvi2:double OctatExiDvi2:double  OctatRetDvi2 SdanToplDvi2
 KofnIzmDvi2 NormaTopDvi2  FaktTopDvi2
 KodToplDvi3 ToplDvi3   VidanToplDvi3:double OctatExiDvi3:double  OctatRetDvi3 SdanToplDvi3
 KofnIzmDvi3 NormaTopDvi3  FaktTopDvi3
 KodToplDvi4 ToplDvi4   VidanToplDvi4:double OctatExiDvi4:double  OctatRetDvi4 SdanToplDvi4
 KofnIzmDvi4 NormaTopDvi4  FaktTopDvi4
 KodToplDvi5 ToplDvi5   VidanToplDvi5:double OctatExiDvi5:double  OctatRetDvi5 SdanToplDvi5
 KofnIzmDvi5 NormaTopDvi5  FaktTopDvi5
 KodToplDvi6 ToplDvi6   VidanToplDvi6:double OctatExiDvi6:double  OctatRetDvi6 SdanToplDvi6
 KofnIzmDvi6 NormaTopDvi6  FaktTopDvi6
 KodToplDvi7 ToplDvi7   VidanToplDvi7:double OctatExiDvi7:double  OctatRetDvi7 SdanToplDvi7
 KofnIzmDvi7 NormaTopDvi7  FaktTopDvi7
 KodToplDvi8 ToplDvi8   VidanToplDvi8:double OctatExiDvi8:double  OctatRetDvi8 SdanToplDvi8
 KofnIzmDvi8 NormaTopDvi8  FaktTopDvi8
 KodToplDvi9 ToplDvi9   VidanToplDvi9:double OctatExiDvi9:double  OctatRetDvi9 SdanToplDvi9
 KofnIzmDvi9 NormaTopDvi9  FaktTopDvi9
 KodToplDvi10 ToplDvi10   VidanToplDvi10:double OctatExiDvi10:double  OctatRetDvi10 SdanToplDvi10
 KofnIzmDvi10 NormaTopDvi10  FaktTopDvi10
 LimitTopliva :double
!����� ��
 ExitCh  HourExit MinExit ExitDn DayExit MonthExit SpeedExi
 ReturnCh HourReturn MinReturn ReturnDn DayReturn MonthReturn SMonthReturn YearReturn SpeedRet
 MotorExi MotorRet ProbegNullStart ProbegNullReturn
!�६�, �஡��
 TimeAll TimeMove TimeStop TimeRep Timeload KolEz
 ProbegAll ProbegV ProbegGr Gruztn GruzTnKm
!⮯����

!���� �� �������
!ᮯ஢�����騥

!�⢥��⢥���

!�ᯮ����⥫��

!����
!��㣨
.endfields
.{
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^
^ ^
^ ^
^ ^
^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^
!��楯�
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^
!�����稪�
^ ^ ^ ^ ^ ^ ^  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^  ^ ^  ^ ^
^ ^ ^ ^ ^ ^ ^  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^  ^ ^  ^ ^
^ ^ ^ ^ ^ ^ ^  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^  ^ ^  ^ ^
^ ^ ^ ^ ^ ^ ^  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^  ^ ^  ^ ^
^ ^ ^ ^ ^ ^ ^  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^  ^ ^  ^ ^
^ ^ ^ ^ ^ ^ ^  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^  ^ ^  ^ ^
^ ^ ^ ^ ^ ^ ^  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^  ^ ^  ^ ^
^ ^ ^ ^ ^ ^ ^  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^  ^ ^  ^ ^
^ ^ ^ ^ ^ ^ ^  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^  ^ ^  ^ ^
^ ^ ^ ^ ^ ^ ^  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^  ^ ^  ^ ^
^ ^ ^ ^ ^ ^ ^  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^  ^ ^  ^ ^
!�������
^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^
^
!�६�, �஡��
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^  ^
!⮯����
.fields
 KodToplDvi ToplDvi OctatExiDvi  OctatRetDvi  VidanToplDvi  SdanToplDvi
 KofnIzmDvi NormaTopDvi  FaktTopDvi
 ZaprOrgDvi ZaprTimeDvi ZaprDateDvi  ZaprPriceDvi ZaprPriceFaktDvi ZaprPriceOwDvi
 ZaprOrgStateDvi ZaprOrgCityDvi
.endfields
.{
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.fields
 KodToplAvt ToplAvt OctatExiAvt  OctatRetAvt  VidanToplAvt  SdanToplAvt
 KofnIzmAvt NormaTopAvt  FaktTopAvt
 ZaprOrgAvt ZaprTimeAvt  ZaprDateAvt  ZaprPriceAvt ZaprPriceFaktAvt ZaprPriceOwAvt
 ZaprOrgStateAvt ZaprOrgCityAvt
.endfields
.{
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.fields
 KodToplSp ToplSp OctatExiSp  OctatRetSp  VidanToplSp  SdanToplSp
 KofnIzmSp NormaTopSp  FaktTopSp
 ZaprOrgSp ZaprTimeSp ZaprDateSp ZaprPriceSp ZaprPriceFaktSp ZaprPriceOwSp
 ZaprOrgStateSp ZaprOrgCitySp
.endfields
.{
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.fields
ProbegGrPri GruzTnPri  GruzTnKmPri
.endfields
^  ^ ^
!��������
.fields
!�� �㭪⠬ �������
WayItem_name
WayItem_KatState WayItem_KatCity
WayItem_ReturnDn WayItem_ReturnCh
WayItem_ExitDn   WayItem_ExitCh
WayItem_TimeInMove   WayItem_TimeinPunkt
TipStop_Name     WayItem_NMarAvt
WayItem_Speedom WayItem_KolGsm WayItem_MaxGsm
WayItem_Virucha
WayItem_MassaGr
.endfields
.{
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
!������
.fields
 KatzakNrec
 KatOrgOkud  KatOrgName
 KatOrgFromOkud KatOrgFromname KatOrgToOkud KaorgFromName
 ZakExitCh ZakExitDn ZakSpeedExi ZakReturnCh ZakReturnDn ZakSpeedRet
 Nsopr  NaprDvi
 ZakFkMasKL ZakFkTime ZakfkTimePg ZakfkTimeRz ZakfkProsto
 ZakazKolEz ZakAlProbeg ZaknpProbeg
!�������
 Kodmarch NaimMar Distantion DistCity DistWay1 DistWay2  DistWay3 DistMoun
 PogAddr PogDistantion PogDistCity PogDistWay1 PogDistWay2 PogDistWay3  PogDistMoun
 RazAddr RazDistantion RazDistCity RazDistWay1 RazDistWay2 RazDistWay3  RazDistMoun
.endfields
.{
^
^ ^ ^ ^ ^ ^ ^ ^  ^ ^ ^ ^ ^  ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^  ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
!ᮯ஢�����騥
.fields
 Tabn1_ZakSp FullFio1_ZakSp FIO1_ZakSp
 Tabn2_ZakSp FullFio2_ZakSp FIO2_ZakSp
 Tabn3_ZakSp FullFio3_ZakSp FIO3_ZakSp
.endfields
 ^ ^ ^  ^ ^ ^  ^ ^ ^
!�⢥��⢥���
.fields
 Tabn1_ZakOt FullFio1_ZakOt FIO1_ZakOt
 Tabn2_ZakOt FullFio2_ZakOt FIO2_ZakOt
 Tabn3_ZakOt FullFio3_ZakOt FIO3_ZakOt
.endfields
 ^ ^ ^  ^ ^ ^  ^ ^ ^
!�ᯮ����⥫��
.fields
 Tabn1_ZakVs FullFio1_ZakVs FIO1_ZakVs
 Tabn2_ZakVs FullFio2_ZakVs FIO2_ZakVs
 Tabn3_ZakVs FullFio3_ZakVs FIO3_ZakVs
.endfields
 ^ ^ ^  ^ ^ ^  ^ ^ ^
!����
.fields
 Name_gruz ClassGr KolMect Massa_Gruz
.endfields
.{
^ ^ ^ ^
.}
!��㣨
.fields
 UslName Usltime UslKolvo SumUsl
.endfields
.{
^ ^ ^ ^
.fields
 UslKodToplDvi UslToplDvi UslKofnIzmDvi UslNormaTopDvi  UslFaktTopDvi
 UslZaprOrgDvi UslZaprTimeDvi UslZaprDateDvi  UslZaprPriceDvi
.endfields
.{
^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.fields
 UslKodToplAvt UslToplAvt UslKofnIzmAvt UslNormaTopAvt  UslFaktTopAvt
 UslZaprOrgAvt UslZaprTimeAvt UslZaprDateAvt  UslZaprPriceAvt
.endfields
.{
^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.fields
 UslKodToplSp  UslToplSp  UslKofnIzmSp  UslNormaTopSp   UslFaktTopSp
 UslZaprOrgSp UslZaprTimeSp UslZaprDateSp  UslZaprPriceSp
.endfields
.{
^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}
!��㣨 � ����
.{
.{
!��㣨 � ����
.fields
 UslName_Tar
 KodTar  Name_Tar Edin_Tar Tarif KolVo_Tar Summa_tar
.endfields
^
^ ^ ^ ^ ^ ^
.}
.}
.fields
!�� �㭪⠬ ������� � ������
WayItem_Zak_name
WayItem_Zak_KatState WayItem_Zak_KatCity
WayItem_Zak_ReturnDn WayItem_Zak_ReturnCh
WayItem_Zak_ExitDn   WayItem_Zak_ExitCh
WayItem_Zak_TimeInMove  WayItem_Zak_TimeinPunkt
TipStop_Zak_Name
WayItem_Zak_Speedom
.endfields
.{
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}

.if brPutWay
.end
.}
.endform
.linkform 'putway_01' prototype is 'putway'
.NameInList  '��⥢�� ����'
.group '��⥢�� ���� � ��������'
.group '���᮪ �/�'
.group '������ �/�'
!.p 60
.fields
!�᭮���� ����
 CommonFormHeader
 NameOrg
 Npl Seria
 DatPl datObr
 Gnom GarNom PodrTC Marka Nmper Licensia
 Tabn1 FIO1 SummaOpl1 Tabn2 FIO2  SummaOpl2
 Tabn_St FIO_St SummaOpl_St
 ExitCh ExitDn SpeedExi  MotorExi
 ReturnCh ReturnDn SpeedRet  MotorRet
 TimeAll TimeMove TimeStop TimeRep TimeLoad KolEz
 ProbegAll ProbegV ProbegGr Gruztn GruzTnKm
!⮯����
 KodToplDvi ToplDvi OctatExiDvi  OctatRetDvi  VidanToplDvi  SdanToplDvi
 KofnIzmDvi NormaTopDvi  FaktTopDvi
 ZaprOrgDvi ZaprTimeDvi ZaprDateDvi  ZaprPriceDvi
 KodToplAvt ToplAvt OctatExiAvt  OctatRetAvt  VidanToplAvt  SdanToplAvt
 KofnIzmAvt NormaTopAvt  FaktTopAvt
 ZaprOrgAvt ZaprTimeAvt  ZaprDateAvt  ZaprPriceAvt
 KodToplSp ToplSp OctatExiSp  OctatRetSp  VidanToplSp  SdanToplSp
 KofnIzmSp NormaTopSp  FaktTopSp
 ZaprOrgSp ZaprTimeSp ZaprDateSp ZaprPriceSp
 LimitTopliva
!��楯�
 TrlGnom1 TrlGnom2 TrlGnom3 TrlGnom4 TrlGnom5 TrlGnom6 ProbegGrPri GruzTnPri  GruzTnKmPri
!���� �� �������
 KatOrgOkud  KatOrgName
 KatOrgFromOkud KatOrgFromname KatOrgToOkud KaorgFromName
 ZakExitCh ZakExitDn  ZakSpeedExi ZakReturnCh ZakReturnDn ZakSpeedRet
 Nsopr NaprDvi
 ZakFkMasKL ZakFkTime ZakfkTimePg ZakfkTimeRz ZakfkProsto
 ZakazKolEz ZakAlProbeg ZaknpProbeg
!�������
 Kodmarch NaimMar Distantion DistCity DistWay1 DistWay2  DistWay3 DistMoun
 PogAddr PogDistantion PogDistCity PogDistWay1 PogDistWay2 PogDistWay3  PogDistMoun
 RazAddr RazDistantion RazDistCity RazDistWay1 RazDistWay2 RazDistWay3  RazDistMoun
!ᮯ஢�����騥
 Tabn1_ZakSp  FIO1_ZakSp
 Tabn2_ZakSp  FIO2_ZakSp
 Tabn3_ZakSp  FIO3_ZakSp

!�⢥��⢥���
 Tabn1_ZakOt  FIO1_ZakOt
 Tabn2_ZakOt  FIO2_ZakOt
 Tabn3_ZakOt  FIO3_ZakOt

!�ᯮ����⥫��
 Tabn1_ZakVs  FIO1_ZakVs
 Tabn2_ZakVs  FIO2_ZakVs
 Tabn3_ZakVs  FIO3_ZakVs
!����
 Name_gruz ClassGr KolMect Massa_Gruz
!��㣨
 UslName Usltime UslKolvo SumUsl
 UslKodToplDvi UslToplDvi UslKofnIzmDvi UslNormaTopDvi  UslFaktTopDvi
 UslZaprOrgDvi UslZaprTimeDvi UslZaprDateDvi  UslZaprPriceDvi
 UslKodToplAvt UslToplAvt UslKofnIzmAvt UslNormaTopAvt  UslFaktTopAvt
 UslZaprOrgAvt UslZaprTimeAvt UslZaprDateAvt  UslZaprPriceAvt
 UslKodToplSp  UslToplSp  UslKofnIzmSp  UslNormaTopSp   UslFaktTopSp
 UslZaprOrgSp UslZaprTimeSp UslZaprDateSp  UslZaprPricesp
!��㣨 � ����
 UslName_Tar
 KodTar  Name_Tar Edin_Tar Tarif KolVo_Tar Summa_tar
!�㭪��
WayItem_Zak_name
WayItem_Zak_ReturnDn WayItem_Zak_ReturnCh
WayItem_Zak_ExitDn   WayItem_Zak_ExitCh
.endfields
.{


^
����������������������������������������������������������������������������
�࣠������ : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
����������������������������������������������������������������������������
N  @@@@@@@@ ���� @@@@@@@@@@@@@ ��� �뤠� @@@@@@@@@@@ ��ࠡ. @@@@@@@@@@@
���.�����  @@@@@@@@@@@ ���. ����� @@@@@@@@@@@ ����. ��  @@@@@@@@@@@@@@@@@@
��ઠ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ⨯ @@@@@@@@@@@@@ ��業��� @@@@@@@@@@@
������������������������������������������������������Ŀ
�        � ���.N �      �.�.�.             �  �㬬�    �
������������������������������������������������������Ĵ
������. 1�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�&#&&&&&&.&&�
������. 2�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�&#&&&&&&.&&�
��⠦��  �@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�&#&&&&&&.&&�
��������������������������������������������������������
����������������������������������������������������������������������������������
 �륧�:    ��  @@@@@@@@ ���� @@@@@@@@@@ ᯨ������ &&#&&&&&&& ������ &&#&&&&&&&
 ������:  ��  @@@@@@@@ ���� @@@@@@@@@@ ᯨ������ &&#&&&&&&& ������ &&#&&&&&&&
����������������������������������������������������������������������������������
       ������ �६� (���)    ������
�����������������������������������������������������Ŀ
� �ᥣ�   �������    ����⮩   �������    ����/ࠧ�  �
�����������������������������������������������������Ĵ
�&#&&&&.&&�&#&&&&&.&&�&#&&&&&.&&�&#&&&&&.&&�&#&&&&&.&&�
�������������������������������������������������������
�ą������ď஡������������������������� ��ॢ����Ģ믮�����Ŀ
�       ���騩    ��� ����� �� ��㧮� ��/���   ��/��(���/���
�����������������������������������������������������������Ĵ
�&#&&&&&�&#&&&&.&&�&#&&&&.&&�&#&&&&.&&�&#&&&&.&&�&#&&&&.&&  �
�������������������������������������������������������������
����������������������������������������������������������������������������
                           ����祥 � ���� 1
�����������������������������������������������������������������������������������������������������������������������������������������Ŀ
� ���   �������������  ����祣� � ����.� ����.� �뤠��� ����� �����.� ��ଠ � ����. �   �㭪� ���ࠢ��      � �६�  ���    ��⮨�����
�       �                       � �륧� � �����.�       �       �     �       �       �                       �      �          �         �
�����������������������������������������������������������������������������������������������������������������������������������������Ĵ
.{
�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@�&#&&.&&�&#&&.&&�&#&&.&&�&#&&.&&�&#.&&�&#&&.&&�&#&&.&&�@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@�@@@@@@@@@@�&&&&&#.&&�
.}
�������������������������������������������������������������������������������������������������������������������������������������������

                           ����祥 � ���� 2
�����������������������������������������������������������������������������������������������������������������������������������������Ŀ
� ���   �������������  ����祣� � ����.� ����.� �뤠��� ����� �����.� ��ଠ � ����. �   �㭪� ���ࠢ��      � �६�  ���    ��⮨�����
�       �                       � �륧� � �����.�       �       �     �       �       �                       �      �          �         �
�����������������������������������������������������������������������������������������������������������������������������������������Ĵ
.{
�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@�&#&&.&&�&#&&.&&�&#&&.&&�&#&&.&&�&#.&&�&#&&.&&�&#&&.&&�@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@�@@@@@@@@@@�&&&&&#.&&�
.}
�������������������������������������������������������������������������������������������������������������������������������������������

                           ����祥 � ���� 3
�����������������������������������������������������������������������������������������������������������������������������������������Ŀ
� ���   �������������  ����祣� � ����.� ����.� �뤠��� ����� �����.� ��ଠ � ����. �   �㭪� ���ࠢ��      � �६�  ���    ��⮨�����
�       �                       � �륧� � �����.�       �       �     �       �       �                       �      �          �         �
�����������������������������������������������������������������������������������������������������������������������������������������Ĵ
.{
�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@�&#&&.&&�&#&&.&&�&#&&.&&�&#&&.&&�&#.&&�&#&&.&&�&#&&.&&�@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@�@@@@@@@@@@�&&&&&#.&&�
.}
�������������������������������������������������������������������������������������������������������������������������������������������
����� ⮯���� &&&&&#.&&
���������������������������������������������������������������������������������������Ŀ
���楯 1 ���楯 2  ���楯 3 ���楯 4 ���楯 5 ���楯 6 ��஡��  ���ॢ��.��믮��. �
�         �          �         �         �         �         �c ��㧮�� ⮭�   � �/��   �
���������������������������������������������������������������������������������������Ĵ
�@@@@@@@@@�@@@@@@@@@@�@@@@@@@@@�@@@@@@@@@�@@@@@@@@@�@@@@@@@@@�&#&&&.&&�&#&&&.&&�&#&&&.&&�
�����������������������������������������������������������������������������������������

����������������������������������������������������������������������������
.{
.}
.{
 �����稪   :  @@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ��ࠢ�⥫�:  @@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 �����⥫�:   @@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

   �륧�:    ��  @@@@@@@@  ����  @@@@@@@@@@  ᯨ������   &&#&&&&&&&
   ������:  ��  @@@@@@@@  ����  @@@@@@@@@@  ᯨ������   &&#&&&&&&&
� ���������(���):@@@@@@@@@@@@@@@@@@@@@ ���ࠢ�����:@@@@@@@@@@@@@@@@@@

�Č��� ��Ă६� �������������������������ą������ď஡�����������Ŀ
� ��㧠  ���ॢ��������.�ࠧ��. ����⮩�       ���騩   �� ��㧮��
������������������������������������������������������������������Ĵ
�&#&&&.&&�&#&&.&&�&#&&.&&�&#&&.&&�&#&&.&&�&#&&&&&�&#&&&.&&�&#&&&.&&�
��������������������������������������������������������������������
�������������������������������������������������������������������
 ����� �� �ap�����  @@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
������������������������������������������������������Ŀ
� �����.  ���த   ���㯯� 1���㯯� 2���㯯� 3�����    �
������������������������������������������������������Ĵ
�&#&&&&.&&�&#&&&.&&�&#&&&.&&�&#&&&.&&�&#&&&.&&�&#&&&.&&�
��㭪� ����㧪�:  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ �
�&#&&&&.&&�&#&&&.&&�&#&&&.&&�&#&&&.&&�&#&&&.&&�&#&&&.&&�
��㭪� ࠧ��㧪�: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ �
�&#&&&&.&&�&#&&&.&&�&#&&&.&&�&#&&&.&&�&#&&&.&&�&#&&&.&&�
��������������������������������������������������������
�������������������������������������������������������������������
���஢�����騥
���������������������������������Ŀ
� ���.� �      �.�.�.             �
���������������������������������Ĵ
�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�
�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�
�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�
�����������������������������������
�⢥��⢥���
���������������������������������Ŀ
� ���.� �      �.�.�.             �
���������������������������������Ĵ
�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�
�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�
�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�
�����������������������������������
�ᯮ����⥫�� ࠡ�⭨��
���������������������������������Ŀ
� ���.� �      �.�.�.             �
���������������������������������Ĵ
�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�
�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�
�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�
�����������������������������������
�������������������������������������������������������������������
 ����:
�����������������������������������������������������Ŀ
�   ������������ ��㧠    ������ � ���-���  ����     �
�����������������������������������������������������Ĵ
.{
� @@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@�&#&&.&&� &#&&&&&&.&&�
.}
�������������������������������������������������������
.{
������������������������������������������������������������������������Ŀ
� @@@@@@@@@@@@@@@@@@@@@@@@@@ ��६�:&&&&.&&����-�� &&&.&&��⮨�.&&&&&&.&&�
������������������������������������������������������������������������������������������������������������������������������Ŀ
�               � ���   � ������������  ����祣�  �����. ���ଠ  �����.  �   �㭪� ���ࠢ��        � �६�  ���    ��⮨�����
������������������������������������������������������������������������������������������������������������������������������ĳ
� ��� 1         �       �                         �      �       �       �                         �      �          �         �
.{
�               �@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�&#&.&&�&#&&.&&�&#&&.&&�@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@�@@@@@@@@@@�&&&&&#.&&�
.}
� ��� 2         �       �                         �      �       �       �                         �      �          �         �
.{
�               �@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�&#&.&&�&#&&.&&�&#&&.&&�@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@�@@@@@@@@@@�&&&&&#.&&�
.}
� ��� 3         �       �                         �      �       �       �                         �      �          �         �
.{
�               �@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�&#&.&&�&#&&.&&�&#&&.&&�@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@�@@@@@@@@@@�&&&&&#.&&�
.}
��������������������������������������������������������������������������������������������������������������������������������
����������������������������������������������������������������������������
.}
.{
��㣨:
������������  @@@@@@@@@@@@@@@@@@@@@@@@@@
����������������������������������������������������������������������Ŀ
�  ����   ������������ ���   �����.��������   � ���-���  �����     �
����������������������������������������������������������������������Ĵ
.{
�&#&&&�@@@@@@@@@@@@@@@@@@@@@@@@ �@@@@@@@@�&#&&&.&&�&#&&.&&�&'&#&&&&&.&&�
.}
������������������������������������������������������������������������
.}
����������������������������������������������������������������������������
�㭪��:
��������������������������������������������������������������Ŀ
������������� �㭪�   ��ਡ�⨥           � �륧�             �
��������������������������������������������������������������Ĵ
.{
�@@@@@@@@@@@@@@@@@@@@@ �@@@@@@@@@@@@ @@@@@@�@@@@@@@@@@@@ @@@@@@�
.}
����������������������������������������������������������������

.}
.if brPutWay
.end
.}


.endform

.linkform 'putway_02' prototype is 'putway'
.NameInList  '��⥢�� ����'
.group '��⥢�� ���� ��� �������'
.group '���᮪ �/�'
!.p 60
.fields
!�᭮���� ����
 CommonFormHeader
 NameOrg
 Npl Seria
 DatPl datObr
 Gnom GarNom Marka Nmper
 Tabn1 FIO1 SummaOpl1 Tabn2 FIO2  SummaOpl2
 Tabn_St FIO_St SummaOpl_St
 ExitCh ExitDn SpeedExi
 ReturnCh ReturnDn SpeedRet
!�६�, �஡��
 TimeAll TimeMove TimeStop TimeRep TimeLoad KolEz
 ProbegAll ProbegV ProbegGr Gruztn GruzTnKm
!⮯����
 KodToplDvi ToplDvi OctatExiDvi  OctatRetDvi  VidanToplDvi  SdanToplDvi
 KofnIzmDvi NormaTopDvi  FaktTopDvi
 ZaprOrgDvi ZaprTimeDvi ZaprDateDvi  ZaprPriceDvi
 KodToplAvt ToplAvt OctatExiAvt  OctatRetAvt  VidanToplAvt  SdanToplAvt
 KofnIzmAvt NormaTopAvt  FaktTopAvt
 ZaprOrgAvt ZaprTimeAvt ZaprDateAvt  ZaprPriceAvt
 KodToplSp ToplSp OctatExiSp  OctatRetSp  VidanToplSp  SdanToplSp
 KofnIzmSp NormaTopSp  FaktTopSp
 ZaprOrgSp ZaprTimeSp ZaprDateSp  ZaprPriceSp
!��楯�
 TrlGnom1 TrlGnom2 ProbegGrPri GruzTnPri  GruzTnKmPri
.endfields

.{

^
����������������������������������������������������������������������������
�࣠������ : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
����������������������������������������������������������������������������
N  @@@@@@@@ ���� @@@@@@@@@@@@@ ��� �뤠� @@@@@@@@@@@ ��ࠡ. @@@@@@@@@@@
���.�����  @@@@@@@@@@@ ���. ����� @@@@@@@@@@@
��ઠ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ⨯ @@@@@@@@@@@@@
������������������������������������������������������Ŀ
�        � ���.N �      �.�.�.             �  �㬬�    �
������������������������������������������������������Ĵ
������. 1�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�&#&&&&&&.&&�
������. 2�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�&#&&&&&&.&&�
��⠦��  �@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�&#&&&&&&.&&�
��������������������������������������������������������
����������������������������������������������������������������������������
   �륧�:    ��  @@@@@@@@  ����  @@@@@@@@@@  ᯨ������   &&#&&&&&&&
   ������:  ��  @@@@@@@@  ����  @@@@@@@@@@  ᯨ������   &&#&&&&&&&
����������������������������������������������������������������������������
       ������ �६� (���)    ������
�����������������������������������������������������Ŀ
� �ᥣ�   �������    ����⮩   �������    ����/ࠧ�  �
�����������������������������������������������������Ĵ
�&#&&&&.&&�&#&&&&&.&&�&#&&&&&.&&�&#&&&&&.&&�&#&&&&&.&&�
�������������������������������������������������������
�ą������ď஡������������������������� ��ॢ����Ģ믮�����Ŀ
�       ���騩    ��� ����� �� ��㧮� ��/���   ��/��(���/���
�����������������������������������������������������������Ĵ
�&#&&&&&�&#&&&&.&&�&#&&&&.&&�&#&&&&.&&�&#&&&&.&&�&#&&&&.&&  �
�������������������������������������������������������������
����������������������������������������������������������������������������
                           ����祥 ��� 1
�����������������������������������������������������������������������������������������������������������������������������������������Ŀ
� ���   �������������  ����祣� � ����.� ����.� �뤠��� ����� �����.� ��ଠ � ����. �   �㭪� ���ࠢ��      � �६�  ���    ��⮨�����
�       �                       � �륧� � �����.�       �       �     �       �       �                       �      �          �         �
�����������������������������������������������������������������������������������������������������������������������������������������Ĵ
.{
�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@�&#&&.&&�&#&&.&&�&#&&.&&�&#&&.&&�&#.&&�&#&&.&&�&#&&.&&�@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@�@@@@@@@@@@�&&&&&#.&&�
.}
�������������������������������������������������������������������������������������������������������������������������������������������

                           ����祥 ��� 2
�����������������������������������������������������������������������������������������������������������������������������������������Ŀ
� ���   �������������  ����祣� � ����.� ����.� �뤠��� ����� �����.� ��ଠ � ����. �   �㭪� ���ࠢ��      � �६�  ���    ��⮨�����
�       �                       � �륧� � �����.�       �       �     �       �       �                       �      �          �         �
�����������������������������������������������������������������������������������������������������������������������������������������Ĵ
.{
�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@�&#&&.&&�&#&&.&&�&#&&.&&�&#&&.&&�&#.&&�&#&&.&&�&#&&.&&�@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@�@@@@@@@@@@�&&&&&#.&&�
.}
�������������������������������������������������������������������������������������������������������������������������������������������

                           ����祥 ��� 3
�����������������������������������������������������������������������������������������������������������������������������������������Ŀ
� ���   �������������  ����祣� � ����.� ����.� �뤠��� ����� �����.� ��ଠ � ����. �   �㭪� ���ࠢ��      � �६�  ���    ��⮨�����
�       �                       � �륧� � �����.�       �       �     �       �       �                       �      �          �         �
�����������������������������������������������������������������������������������������������������������������������������������������Ĵ
.{
�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@�&#&&.&&�&#&&.&&�&#&&.&&�&#&&.&&�&#.&&�&#&&.&&�&#&&.&&�@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@�@@@@@@@@@@�&&&&&#.&&�
.}
�������������������������������������������������������������������������������������������������������������������������������������������
������������������������������������������������������������������Ŀ
�   ��楯 1        �   ��楯 2        ��஡��  ���ॢ��.��믮��. �
�                   �                   �c ��㧮�� ⮭�   � �/��   �
������������������������������������������������������������������Ĵ
�@@@@@@@@@@@@@@@@@@ �@@@@@@@@@@@@@@@@@@ �&#&&&.&&�&#&&&.&&�&#&&&.&&�
��������������������������������������������������������������������

����������������������������������������������������������������������������
.{
.}
.{
.{
.}
.{
.{
.}
.{
.}
.{
.}
.}
.{
.{
.}
.}
.{
.}

.}
.if brPutWay
.end
.}


.endform
.linkform 'putway_03' prototype is 'putway'
.NameInList  '��⥢��  �ଠ 4-� (1983)'
.group '��⥢�� ���� �ଠ 4-� (1983)'
.group '���᮪ �/�'
.p 60
.ll 90
!.p 40
!.ll 60
.fields
!�᭮���� ����
 DatPlS substr(NameOrg,1,25)
 substr(Gnom,1,11) substr(Marka,1,17)
 substr(In_pri,1,11) substr(Mar_Pri,1,17)
 Gnom Marka
 FIO1 Nudov1 Klass1 Tabn1 substr(Zak_name1,1,25)
 In_pri Mar_Pri
 ExitCh  SpeedExi Zak_name1 Zak_chEx1 Zak_chRet1 Zak_Ez1
 ReturnCh
! Zak_name1
!⮯����
 ToplDvi KodToplDvi VidanToplDvi OctatExiDvi
.endfields
.{








                  @@@@@@@@@@@@@@@@@@@@@                                                                             @@@@@@@@@@@@@@@@@@@@@@@@@@

                                                                                                               @@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@

                                                                                                               @@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@
                                                @@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@

                                             @@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@      @@@@@@@              @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

                                             @@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@










                     @@@@@@@     &&&&#&&&&&                @@@@@@@@@@@@@@@@     @@@@@ @@@@@     @@@@@



                                                                                                          @@@@@@@@@@@@@@@@@@@@@@






.{
             @@@@@@@@@ @@@ &#&&.& &#&&.&
.}

.{
.}
.{
.}

.{
.}
.{
.{
.}
.{
.{
.}
.{
.}
.{
.}
.}
.{
.{
.}
.}
.{
.}

.}
.if brPutWay
.end
.}
.endform

.linkform 'putway_04' prototype is 'putway'
.NameInList  '���᮪ ��⥢�� ���⮢ (᮪��.)'
.group '��⥢�� ���� ��� �������'
.group '������ �/�'
!.p 60
.fields
!�᭮���� ����
 CommonFormHeader
 Npl
 Gnom
 ExitCh ExitDn
 ReturnCh ReturnDn
 DatPl
 Tabn1 FIO1  Tabn2 FIO2
.endfields

^
.{
.[h OverWrite
�������������������������������������������������������������������������������������������������������������������������������������
  �����    �   ����.  � �६� �   ���    � �६� �   ���    �   ���    �  ���.    �     �������      �  ���.    �     �������
  ��⥢.   �   �����   � �륧���   �륧��  � �����.�   �����.  �  �믨᪨  � ����� 1  �  1-�� ����⥫�   � ����� 2  �  2-�� ����⥫�
�������������������������������������������������������������������������������������������������������������������������������������
.]h
 @@@@@@@@@@  @@@@@@@@@@  @@@@@   @@@@@@@@@@  @@@@@   @@@@@@@@@@  @@@@@@@@@@  @@@@@@@@@ @@@@@@@@@@@@@@@@@@  @@@@@@@@@ @@@@@@@@@@@@@@@@
.{
.}
.{
.}
.{
.}
.{
.}
.{
.{
.}
.{
.{
.}
.{
.}
.{
.}
.}
.{
.{
.}
.}
.{
.}
.}
.if brPutWay
.end
.[f OverWrite
�������������������������������������������������������������������������������������������������������������������������������������
.]f
.}
.endform

.linkform 'putway_05' prototype is 'putway'
.NameInList  '���᮪ ��⥢�� ���⮢ (������)'
.group '������ �/�'
.Defo Landscape
.fields
!�᭮���� ����
 CommonFormHeader
 Npl Gnom
 ExitCh ExitDn
 ReturnCh ReturnDn
 DatPl Tabn1 FIO1  Tabn2 FIO2
!�६�, �஡��

 TimeAll TimeMove TimeStop TimeRep Timeload KolEz
 ProbegAll ProbegV ProbegGr Gruztn GruzTnKm
.endfields

^
.{
.[h OverWrite
���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
  �����    �   ����.  � �६� �   ���    � �६� �   ���    �   ���    �  ���.    �     �������      �  ���.    �     �������    � �६�   �          �          �          �          � ���.� �஡��  �         �         �         � �/��
  ��⥢.   �   �����   � �륧���   �륧��  � �����.�   �����.  �  �믨᪨  � ����� 1  �  1-�� ����⥫�   � ����� 2  �  2-�� ����⥫� � �ᥣ�   ���������  � ���⮩  � ६���   � ���/ࠧ� ������� ��騩   ��� �����.�� ��㧮� � �/���  �(���/��)
���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]h
 @@@@@@@@@@  @@@@@@@@@@  @@@@@   @@@@@@@@@@  @@@@@   @@@@@@@@@@  @@@@@@@@@@  @@@@@@@@@ @@@@@@@@@@@@@@@@@@  @@@@@@@@@ @@@@@@@@@@@@@@@@ &#&&&&.&& &#&&&&&.&& &#&&&&&.&& &#&&&&&.&& &#&&&&&.&& &#&&& &#&&&&.&& &#&&&&.&& &#&&&&.&& &#&&&&.&& &#&&&&.&&
.{
.}
.{
.}
.{
.}
.{
.}
.{
.{
.}
.{
.{
.}
.{
.}
.{
.}
.}
.{
.{
.}
.}
.{
.}
.}
.if brPutWay
.end
.[f OverWrite
���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]f
.}
.endform

.linkform 'putway_06' prototype is 'putway'
.NameInList  '��� �������� ��⥢�� ���⮢'
.group '������ �/�'
.Defo Landscape
.fields
!�᭮���� ����
 CommonFormHeader
 Npl
 DatPl FullFIO1  Tabn1  Garnom
.endfields
��^
.{
.[h OverWrite
������������������������������������������������������������������������������������������������������������������������������������
           �           �        ����⥫�                            �          �                �������                  �
  �����    ���� �뤠���������������������������������������������Ĵ ��ࠦ�� �����������������������������������������Ĵ�ਬ�砭��
  ��⥢��� �  ��⥢��� �    �������, ���, ����⢮      �⠡����  �  �����   � ����⥫� �  ���ᯥ��� � � ��壠��� ��
  ����    �   ����   �                                ������      �          � ����祭��   ���� �ਥ��� � ��� �ਥ����
           �           �                                �           �          � ��⥢���    ���⥢��� ���-� ��⥢���    �
           �           �                                �           �          � ����       �� � ���㬥�-� ����       �
           �           �                                �           �          �             �⮢ �� ����- �             �
           �           �                                �           �          �             �⥫�         �             �
.]h
������������������������������������������������������������������������������������������������������������������������������������
 @@@@@@@@@@� @@@@@@@@@@� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@� @@@@@@@@@ �@@@@@@@@@@�             �             �             �
.{
.}
.{
.}
.{
.}
.{
.}
.{
.{
.}
.{
.{
.}
.{
.}
.{
.}
.}
.{
.{
.}
.}
.{
.}
.}
.if brPutWay
.end
.[f
������������������������������������������������������������������������������������������������������������������������������������
.]f
.}��
.endform
.linkform 'putway_04' prototype is 'putway'
.NameInList  '���᮪ ��⥢�� ���⮢ (᮪��.)'
.group '��⥢�� ���� ��� �������'
.group '������ �/�'
!.p 60
.fields
!�᭮���� ����
 CommonFormHeader
 Npl
 Gnom
 ExitCh ExitDn
 ReturnCh ReturnDn
 DatPl
 Tabn1 FIO1  Tabn2 FIO2
.endfields

^
.{
.[h OverWrite
�������������������������������������������������������������������������������������������������������������������������������������
  �����    �   ����.  � �६� �   ���    � �६� �   ���    �   ���    �  ���.    �     �������      �  ���.    �     �������
  ��⥢.   �   �����   � �륧���   �륧��  � �����.�   �����.  �  �믨᪨  � ����� 1  �  1-�� ����⥫�   � ����� 2  �  2-�� ����⥫�
�������������������������������������������������������������������������������������������������������������������������������������
.]h
 @@@@@@@@@@  @@@@@@@@@@  @@@@@   @@@@@@@@@@  @@@@@   @@@@@@@@@@  @@@@@@@@@@  @@@@@@@@@ @@@@@@@@@@@@@@@@@@  @@@@@@@@@ @@@@@@@@@@@@@@@@
.{
.}
.{
.}
.{
.}
.{
.}
.{
.{
.}
.{
.{
.}
.{
.}
.{
.}
.}
.{
.{
.}
.}
.{
.}
.}
.if brPutWay
.end
.[f OverWrite
�������������������������������������������������������������������������������������������������������������������������������������
.]f
.}
.endform
.linkform 'putway_07' prototype is 'putway'
.NameInList  '�������� �� �㭪⠬ ��������'
.group '������ �/�'
!.p 60
.Defo Landscape
.fields
!�᭮���� ����
 CommonFormHeader
 Npl
 Gnom
WayItem_KatState WayItem_KatCity WayItem_Name TipStop_Name
WayItem_ReturnCh WayItem_ReturnDn WayItem_Speedom
WayItem_ExitCh   WayItem_ExitDn
WayItem_TimeInMove   WayItem_TimeinPunkt
WayItem_KolGsm WayItem_MaxGsm
WayItem_Virucha
WayItem_MassaGr

.endfields
^
.{
 ��⥢�� ���� N @@@@@@@@@@  ���㤠��⢥��� ����� @@@@@@@@@@@@@
�������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
  ��࠭�           �   ��த           �     ������������  �        ���        � �६� �   ���    � �����-  � �६� �   ���    � �६�   �  �६�   �   ���    ������⨬���   ����窠   �    ���
                   �                   �       �㭪�      �       �㭪�      ��ਥ����  �ਥ���  � ����    � �륧���  �륧��   � � ���  � � �㭪� � � �����  ����-�� ����             �
�������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{
.}
.{
.}
.{
.}
.{
 @@@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@  @@@@@   @@@@@@@@@@ &#&&&&&&&  @@@@@   @@@@@@@@@@ &#&&&&.&& &#&&&&&.&& &#&&&&&.&& &#&&&&&.&& &#&&&&&&&&.&& &#&&&&&&&.&&
.}
.{
.{
.}
.{
.{
.}
.{
.}
.{
.}
.}
.{
.{
.}
.}
.{
.}
.}

.if brPutWay
.end
.}
.endform