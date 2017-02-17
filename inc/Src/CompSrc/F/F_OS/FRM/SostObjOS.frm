//------------------------------------------------------------------------------
//                                                      (c) ��௮��� ���������
// �����⨪� 8.1 - ��壠���᪨� ������
// ��ଠ ��� �뢮�� ��⠢� ��/ ���
//------------------------------------------------------------------------------
#doc
  ��ଠ ��� ���� ��⠢� ��/ ���
#end
.set name = 'SostObjOS'
.hide
.var
  iEF : ExcelFormat;
.endvar
.fields
  TitleRep          // �������� ����
  //---------------------------------------------
  TiDk      : word             // 15 - ��, 16 - ���
  SumFormat : string

  NastrOs_NRec : comp          // ��뫪� �� ��⮤ ��� �� ���஬� �뢮����� �����
  // �� ������୮� ����⥪�
  KatOs_Nrec   : comp          // �뫪� �� ��������� ������
  KatOs_Level  : word          // �஢��� ���������� �� ����娨 ����⥪� 0 - ��୥���
  KatOs_InNum                  // �������� ����� ��ꥪ�
  KatOs_Name                   // ������������ ��ꥪ�
  KatOs_BarKod                 // ���-��� ���業���� ᮮ⢥�����饩 ��ꥪ�� ��
  KatOs_ZavNom                 // �����᪮� ����� ��ꥪ� ��
  KatOs_IsLeaf     : word
  KatOs_OsMcExists : boolean   // 䫠� ������ �� � ��⠢� ��ꥪ� (false - � ��⠢� ��� ��)
  SpKatOs_Stoim    : double    // �⮨����� ��ꥪ�
  SpKatOs_SumIzn : double      // �㬬� ����� ��ꥪ� // new
  SpKatOs_SIznM  : double      // ����� �� ����� ��ꥪ�// new
  OSKatSopr_NRec   : comp      // ��뫪� �� ��������� ��������� �� ���㯪�
  OSSpSopr_NRec    : comp      // ��뫪� �� ᯥ�䨪��� ���������
  OSSpOrder_NRec   : comp      // ��뫪� �� ᯥ�䨪��� �थ� �� ���������
  OSKatSopr_Sum    : double    // �⮨����� ���㯪� �� ��������� �� ��ꥪ�
  OSKatOr_Name                 // ���⠢騪 �� ��������� �� ��ꥪ�
  OsKatSoprNumDate             // ����� � ��� ��������� �� ���㯪�

    // ��㣨 ࠯।������ �� ��ꥪ�
    OsMcUsl_NRec1     : comp   // ��뫪� �� ��� �� � ���
    KatUsl_NRec1      : comp   // ��뫪� �� ��⠫�� ���
    KatSoprUsl_NRec1  : comp   // ��뫪� �� ��� �� �ਥ� ���
    SpSoprUsl_NRec1   : comp   // ��뫪� �� ᯥ�䨪��� ��� �� �ਥ� ���
    KatUsl_Name1               // ������������ ��㣨 �� ��ꥪ�� ��
    StoimPokup1       : double // �⮨����� ���㯪� ��㣨
    RaspUslOnCurrObj1 : double // �㬬� ��㣨 �� ��ꥪ��
    Org_NameUsl1               // ����ࠣ���
    NumDateUsl1                // ����� � ��� ���㬥��
    UslKatSoprName1            // �ਬ�砥��� � ���� �� �ਥ� ���

  // �� ��⠢� ��ꥪ�
  OsMc_NRec    : comp          // ��뫪� �� ��⠢������
  OsMc_Level   : word          // �஢��� ���������� �� ����娨 ��⠢� 0 - ��୥���
  KatMc_Name                   // ������������ ��
  OsMc_TiDk    : word          // ���  15-��, 315 - ��㣠
  OsMc_BarKod                  // ������������ �����
  OsMc_ZavNom                  // �����᪮� �����
  OsMc_IsLeaf   : word         // �ਧ��� ����
  OsMc_DatEk    : date         // ��� �����    // new
  OsMc_DatV     : date         // ��� �����  // new
  OsMc_Kol      : double       // ������⢮ �� // new

  SpOsMc_Stoim  : double       // �⮨�����
  SpOsMc_SumIzn : double       // �㬬� �����  // new
  SpOsMc_SIznM  : double       // ����� �� ����� // new

  MCKatSopr_NRec: comp         // ��뫪� �� ��������� ��������� �� ���㯪�
  MCSpSopr_NRec : comp         // ��뫪� �� ᯥ�䨪��� ���������
  MCSpOrder_NRec: comp         // ��뫪� �� ᯥ�䨪��� �थ� �� ���������
  KatSopr_Sum   : double       // �⮨����� ���㯪�
  KatOr_Name                   // ���⠢騪
  NumDate                      // ����� � ��� ��������� �� ���㯪�

    // ��㣨 ��।������ �� ��⠢���騥
    OsMcUsl_NRec2     : comp   // ��뫪� �� ��� ��⠢����� � ���
    KatUsl_NRec2      : comp   // ��뫪� �� ��⠫�� ���
    KatSoprUsl_NRec2  : comp   // ��뫪� �� ��� �� �ਥ� ���
    SpSoprUsl_NRec2   : comp   // ��뫪� �� ᯥ�䨪��� ��� �� �ਥ� ���
    KatUsl_Name2               // ������������ ��㣨 �� ��⠢���饩 (��)
    StoimPokup2       : double // �⮨����� ���㯪� ��㣨
    RaspUslOnCurrObj2 : double // �㬬� ��㣨 �� ��⠢���饩
    Org_NameUsl2               // ����ࠣ���
    NumDateUsl2                // ����� � ��� ���㬥��
    UslKatSoprName2            // �ਬ�砥��� � ���� �� �ਥ� ���

  //---------------------------------------------
.endfields

^
.{ // 蠯��
   TiDk ^
        ^
   NastrOsNRec ^

  // �� ������୮� ����⥪�
  KatOs_Nrec       ^
  KatOs_Level      ^
  KatOs_InNum      ^
  KatOs_Name       ^
  KatOs_BarKod     ^
  KatOs_ZavNom     ^
  KatOs_IsLeaf     ^
  KatOs_OsMcExists ^
  SpKatOs_Stoim    ^
  SpKatOs_SumIzn   ^
  SpKatOs_SIznM    ^

  OSKatSopr_NRec   ^
  OSSpSopr_NRec    ^
  OSSpOrder_NRec   ^

  OSKatSopr_Sum    ^
  OSKatOr_Name     ^
  OsKatSoprNumDate ^

.{ Usl_Cicle1 CheckEnter
  // ��㣨 ࠯।������ �� ��ꥪ�
  OsMcUsl_NRec1    ^
  KatUsl_NRec1     ^
  KatSoprUsl_NRec1 ^
  SpSoprUsl_NRec1  ^
  KatUsl_Name1   ^
  StoimPokup1    ^
  RaspUslOnCurrObj1 ^
  Org_NameUsl1   ^
  NumDateUsl1    ^
  UslKatSoprName1^
.}

.{ MC_Cicle  CheckEnter
  // �� ��⠢� ��ꥪ�
  OsMc_NRec     ^
  OsMc_Level    ^
  KatMc_Name    ^
  OsMc_TiDk     ^
  OsMc_BarKod   ^
  OsMc_ZavNom   ^
  OsMc_IsLeaf   ^
  OsMc_DatEk    ^
  OsMc_DatV     ^
  OsMc_Kol      ^
  SpOsMc_Stoim  ^
  SpOsMc_SumIzn ^
  SpOsMc_SIznM  ^
  MCKatSopr_NRec^
  MCSpSopr_NRec ^
  MCSpOrder_NRec^
  KatSopr_Sum   ^
  KatOr_Name    ^
  NumDate       ^
.{ Usl_Cicle2 CheckEnter
    // ��㣨 ��।������ �� ��⠢���騥
    OsMcUsl_NRec2    ^
    KatUsl_NRec2     ^
    KatSoprUsl_NRec2 ^
    SpSoprUsl_NRec2  ^
    KatUsl_Name2   ^
    StoimPokup2    ^
    RaspUslOnCurrObj2 ^
    Org_NameUsl2   ^
    NumDateUsl2    ^
    UslKatSoprName2^
.}
.}

.}

.endform

//*******************************************************************
.linkform 'SostObjOs01' prototype is 'SostObjOs'
.nameinlist '���⠢ ��ꥪ⮢ �� / ��� '
.defo landscape
.p 65
.var
 Stoim, StoimPokup : double;
.endvar
.fields
  CommonFormHeader
  TitleRep
  //---------------------------------------------

  PadCh('',' ',KatOs_Level*2) + KatOs_Name : 'T:-'
  KatOs_InNum
  KatOs_ZavNom
  DoubleToStr(SpKatOs_Stoim,SumFormat)
  iEF.DoubleToStrRep(OsKatSopr_Sum,SumFormat)
  OSKatOr_Name
  OsKatSoprNumDate
    KatUsl_Name1
    iEF.DoubleToStrRep(RaspUslOnCurrObj1,SumFormat)
    Org_NameUsl1
    NumDateUsl1
  PadCh('',' ',OsMc_Level*2) + KatMc_Name : 'T:-'
  OsMc_BarKod
  OsMc_ZavNom
  DoubleToStr(SpOsMc_Stoim,SumFormat)
  iEF.DoubleToStrRep(KatSopr_Sum,SumFormat)
  KatOr_Name
  NumDate
    KatUsl_Name2
    if (RaspUslOnCurrObj2 = 0, '', DoubleToStr(RaspUslOnCurrObj2, SumFormat))
    Org_NameUsl2
    NumDateUsl2

  DoubleToStr(Stoim,SumFormat)
  iEF.DoubleToStrRep(StoimPokup,SumFormat)

  //---------------------------------------------
.endfields
.begin
  Stoim := 0;
  StoimPokup := 0;
end.
�� ^
��                               @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
��.{
.[H
                                                                                                                                                                    ���� @np@
�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
������������ ��ꥪ�/��⠢���饩 �     ������������      �������/��������  �����᪮�   �     �⮨�����      � �⮨����� ���㯪�  �        ���⠢騪        ���������� �� ���㯪�/
                                  �      ��㣨/��        �     �����    �    �����     �                    �                    �                         ���� �믮������� ࠡ��
�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]H
.begin
  if (KatOs_IsLeaf = 1) and (not KatOs_OsMcExists)
  {
    Stoim      += SpKatOs_Stoim;
    StoimPokup += OSKatSopr_Sum;
  }
end.
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                         @@@@@@@@@@@@@@ @@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@��
.{ Usl_Cicle1 CheckEnter
.begin
  if (KatOs_IsLeaf = 1)
    StoimPokup += RaspUslOnCurrObj1;
end.
                                   @@@@@@@@@@@@@@@@@@@@@@@                                                    &&&&&&&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@
.}
.{ MC_Cicle  CheckEnter
.{?Internal; Longint(OsMc_DatV)=0;
.begin
  if (OsMc_IsLeaf = 1)
    Stoim    += SpOsMc_Stoim;
  StoimPokup += KatSopr_Sum;
end.
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                         @@@@@@@@@@@@@@ @@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@
.}
.{ Usl_Cicle2  CheckEnter
.{?Internal; Longint(OsMc_DatV)=0;
! .begin
!  if (OsMc_IsLeaf = 1)
!    StoimPokup +=  RaspUslOnCurrObj2;
!  end.
                                   @@@@@@@@@@@@@@@@@@@@@@@                                                    &&&&&&&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@
.}
.}
.}
.[F
�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
��                                                                        �⮣�:           &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&��
.]F
.}��
.endform

//*******************************************************************
.linkform 'SostObjOs02' prototype is 'SostObjOs'
.nameinlist '���⠢ ��ꥪ⮢ �� / ���, ࠧ������ � ��⮬ �����'
.defo landscape
.p 60
.var
 Stoim, SumIzn, SIznM, StoimPokup : double;
 StoimVyb, SumIznVyb, SIznMVyb : double;
.endvar
.fields
  CommonFormHeader
  TitleRep+'(ࠧ������, � ��⮬ ����� �� ��⠢�)'
  //---------------------------------------------

  PadCh('',' ',KatOs_Level*2) + KatOs_Name : 'T:-'
  KatOs_InNum
  KatOs_ZavNom
  DoubleToStr(SpKatOs_Stoim,SumFormat)
  iEF.DoubleToStrRep(SpKatOs_SumIzn,SumFormat)
  iEF.DoubleToStrRep(SpKatOs_SIznM,SumFormat)
  iEF.DoubleToStrRep(OsKatSopr_Sum,SumFormat)
  OSKatOr_Name
  OsKatSoprNumDate
    KatUsl_Name1
    iEF.DoubleToStrRep(RaspUslOnCurrObj1,SumFormat)
    Org_NameUsl1
    NumDateUsl1

  PadCh('',' ',OsMc_Level*2) + if(Longint(OsMc_DatV)>0,'*','') + KatMc_Name : 'T:-'
  OsMc_BarKod
  OsMc_ZavNom
  DoubleToStr(SpOsMc_Stoim,SumFormat)
  iEF.DoubleToStrRep(SpOsMc_SumIzn,SumFormat)
  iEF.DoubleToStrRep(SpOsMc_SIznM ,SumFormat)
  iEF.DoubleToStrRep(KatSopr_Sum,SumFormat)
  KatOr_Name
  NumDate
  if(Longint(OsMc_DatV)>0, DateToStr(OsMc_DatV,'DD/MM/YYYY'), '')
    KatUsl_Name2
    iEF.DoubleToStrRep(RaspUslOnCurrObj2, SumFormat)
    Org_NameUsl2
    NumDateUsl2

  DoubleToStr(Stoim,SumFormat)
  iEF.DoubleToStrRep(SumIzn,SumFormat)
  iEF.DoubleToStrRep(SIznM,SumFormat)
  iEF.DoubleToStrRep(StoimPokup,SumFormat)

  //---------------------------------------------
.endfields
.begin
  Stoim := 0;
  SumIzn:= 0;
  SIznM := 0;
  StoimPokup := 0;
  StoimVyb  := 0;
  SumIznVyb := 0;
  SIznMVyb  := 0;
end.
�� ^
                               @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.{
.[H
��                                                                                                                                                                                                                ���� @np@
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
������������ ��ꥪ�/��⠢���饩 �     ������������      �������/��������  �����᪮�   �     �⮨�����      �       �����        �  ����� ��  � �⮨����� ���㯪�  �        ���⠢騪        ���������� �� ���㯪�/ �    ���
                                  �      ��㣨/��        �     �����    �    �����     �                    �                    � ���.��ਮ� �                    �                         ���� �믮������� ࠡ�� �  �����
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]H
.begin
  if (KatOs_IsLeaf = 1) and (not KatOs_OsMcExists)
  {
    Stoim      += SpKatOs_Stoim;
    StoimPokup += OSKatSopr_Sum;
    SumIzn     += SpKatOs_SumIzn;
    SIznM      += SpKatOs_SIznM;
  }
end.
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                         @@@@@@@@@@@@@@ @@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@��
.{ Usl_Cicle1 CheckEnter
.begin
  if (KatOs_IsLeaf = 1)
    StoimPokup +=  RaspUslOnCurrObj1;
end.
��                                   @@@@@@@@@@@@@@@@@@@@@@@                                                                                      &&&&&&&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@��
.}
.{ MC_Cicle  CheckEnter
.begin
  if (OsMc_IsLeaf = 1)
  {
    Stoim  +=  SpOsMc_Stoim;
    SumIzn +=  SpOsMc_SumIzn;
    SIznM  +=  SpOsMc_SIznM;

    if ( Longint(OsMc_DatV) > 0 )
    {
      StoimVyb  += SpOsMc_Stoim;
      SumIznVyb += SpOsMc_SumIzn;
      SIznMVyb  += SpOsMc_SIznM;
    }
  }
  StoimPokup := StoimPokup + KatSopr_Sum;
end.
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                         @@@@@@@@@@@@@@ @@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@��
.{ Usl_Cicle2  CheckEnter
!.begin
!  if (OsMc_IsLeaf = 1)
!    StoimPokup += RaspUslOnCurrObj2;
!end.
��                                   @@@@@@@@@@@@@@@@@@@@@@@                                                                                      &&&&&&&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@��
.}
.}
.[F
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
                                                                       �⮣�:            &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&��
.{?Internal; ((StoimVyb <> 0) OR (SumIznVyb <> 0) OR (SIznMVyb <> 0));
.fields
  if (StoimVyb = 0, '', DoubleToStr(StoimVyb,SumFormat))
  if (SumIznVyb = 0, '', DoubleToStr(SumIznVyb,SumFormat))
  if (SIznMVyb = 0, '', DoubleToStr(SIznMVyb,SumFormat))
.endfields
��                                                                      �⮣� �� ���訬: &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&��
.}
.]F
.}
.endform
//*******************************************************************
