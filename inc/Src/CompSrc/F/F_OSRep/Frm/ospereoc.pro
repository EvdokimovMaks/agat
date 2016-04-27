//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 6.00 - �᭮��� �।�⢠
// �������� ��८業��
// ��������! ������� slk-���� � �ଠ� Excel
//------------------------------------------------------------------------------

#include Commission.frn // �����ᨨ

#doc
�������� ��८業��
#end

.FORM OSPereoc
.HIDE
.var
#include Fld_Amort.var
.endvar
.begin
#include Fld_Amort.vpp
end.

.fields
  ��ଠ�_�㬬 : string // ��ଠ� ᮤ�ঠ騩�� � ��륪驪�� ���짮��⥫� UserDeskRep.ResName[1]

  nRec_MoveOs : comp
  Date_Pereoc : date

  nRec_NastrOs : comp
  NastrOsName
  Divider
  sDivider
  nRec_KlVal : comp
  CurrName
  �����_�ய����_᮪�
  nRec_UserDeskRep : comp
  sGrpName
  sSrtName

#CommissionFields

!---------------- FilterLoop
  sFltName
  CodeName

!---------------- GroupLoop
  Group_nRec : comp
  Head_TempDescr_TableCode : word // ��� ⠡���� �� ���ன ���⮥�� ������ ��㯯�஢��
  Head_TempDescr_CRecKat   : comp // ����� ����� � ⠡��� �� ���ன ����஥�� ��㯯�஢��
  GroupName
  GroupLevel : word // �஢��� ��㯯�஢��
  NeedSum1 : boolean
  Head_StoimGrp     : double
  Head_IznosGrp     : double
  Head_OstStoimGrp  : double
  Head_StoimGrpNew  : double
  Head_IznosGrpNew  : double
  Head_OstStoimGrpNew   : double
  Head_BaseStoimGrp     : double  // ����⨧��㥬�� �⮨����� (�� ��८業��)
  Head_BaseStoimGrpNew  : double  //           -//-           (��᫥ ��८業��)

!---------------- DataLoop
  KatOs_nRec
  KatOs_cMc
  SpKatOs_nRec
  cHigherOS
  isLeaf
  NameIzg
  TipMark
  BarKod
  Kod_Part
  DatGar
  StoimPs    : double
  RegNum
  IznosPs    : double
  Poprkoef   : double
  SumOtkl    : double
  SumFld     : double
  StoimL     : double
  PerStoim   : double // ����������� ��८業�� �⮨����
  PerSumIzn  : double // ����������� ��८業�� �㬬� �����

  fInnum
  OSName

  Kod_nRec : comp
  Kod
  Date_sost : date
  Date_post : date
  nRec_TempDescr : comp
  Stoim         : double
  SumIzn        : double
  NewStoim      : double
  NewSumIzn     : double
  NewIznMes     : double
  OstStoim      : double
  NewOstStoim   : double
  IznPerc       : double
  Coeff         : double
  PoprCoeff     : double
  BaseStoim     : double
  NewBaseStoim  : double

!---------------- ItogLoop
    ItgGroup_nRec : comp
    Tail_TempDescr_TableCode : word // ��� ⠡���� �� ���ன ���⮥�� ������ ��㯯�஢��
    Tail_TempDescr_CRecKat   : comp // ����� ����� � ⠡��� �� ���ன ����஥�� ��㯯�஢��
    ItgGroupName
    StoimGrp        : double
    IznosGrp        : double
    OstStoimGrp     : double
    StoimGrpNew     : double
    IznosGrpNew     : double
    OstStoimGrpNew  : double
    BaseStoimGrp    : double   // ����⨧��㥬�� �⮨����� (�� ��८業��)
    BaseStoimGrpNew : double  //           -//-           (��᫥ ��८業��)
.endfields

^ ^
��� ��८業�� ^

��⮤ ���:          ^ ^
�������� ������:     ^ (^) ^ ^
^^
��㯯�஢��:          ^
����஢��:           ^

#CommissionBody(OSPereoc)

�������:
.{ CheckEnter FilterLoop
 ^
.}
^
.{ MainLoop
.{ CheckEnter GroupLoop
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter DataLoop
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^
.}
.{ CheckEnter ItogLoop
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}
.ENDFORM
