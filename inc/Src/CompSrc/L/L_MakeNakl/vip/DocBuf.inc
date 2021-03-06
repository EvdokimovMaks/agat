
#ifndef _DOCBUF_INC
#define _DOCBUF_INC

#ifdef ComponentVersion
#component "L_MAKENAKL"
#endif

! ������ᠫ�� ���� ��� �ନ஢���� 蠯�� ���㬥��
! �᫨ ��� �����⭮� ⠡���� ��� ���� �� ᮢ������ �
! ��� ������������� � ����, � ������.���� 㪠����
! �ࠢ� � �������ਨ. � ��⨢��� ��砥 ���� � �������
! ��� ᮮ⢥�����饣� ����, ���� ��� �������� ᮢ������
! � ��ᢠ���� ��� � ����.

Table STRUCT SDocBuf "���� ��� �ନ஢���� 蠯�� ���㬥��"

(
  NRec          : comp       , // ���� ⠪, ������⭮ ��祬�
  wTypeDoc      : word       "���� SOURCE-⠡����",
                             // 1 - Dogovor
                             // 2 - CalPlan
                             // 3 - BaseDoc
                             // 4 - KatSopr
  cOwner        : comp       "�������� �஢�� (��� ����娨)",

  cKatSopr      : comp       "��뫪� �� ���������, �᫨ 蠯�� 㦥 ����",
  Name          : string     "������������",
  Descr         : string[20] "���ਯ�� � ������ ���㬥��",
  DesGr         : string[4]  "��� ��㯯� ���짮��⥫��",
  cMyOrg        : comp       "ᮡ�⢥���� �࣠������ ", // KatSopr.cOrg
  cOrg          : comp       "����ࠣ��� � ���������⠬", // KatSopr.cOrgBase
  cPlatBank     : comp       "���� ���⥫�騪�", // BaseDoc.cBank, Dogovor.cBankPlat
  cPolBank      : comp       "���� �����⥫�",  // BaseDoc.cMyBank, Dogovor.cBankPol
  cNazna        : comp       "�����祭�� ��뫪�", // Dogovor.cProg � Dogovor.cNazna (!!!)
  NoDoc         : tDocNumber "����� ���㬥�� <����७���>", // NoDoc_Ext ���� �� �㦥�
  TipMoney      : word       "⨯ ���㬥�� �� �⭮襭�� � �����",
  cVal          : comp       "��� ������", // KatSopr.cValut �������� �� TipMoney � cVal
  cStepDoc      : comp       "��뫪� �� ���",
  VidDoc        : word       "⨯ ��",
  VidSopr       : word       "��� ᮯ஢���⥫쭮�� ���-�",
  VidDog        : word       "��� �������",
  cVidDog       : comp       "��뫪� �� ��� �������",
  Direct        : word       "0-���� ������,1 - �த���,2 - ���㯪�", // CalPlan.DirectMC
                             // KatSopr.TipSopr=2 - Direct=1 - ���� ⮢�஢ � ���
                             // KatSopr.TipSopr=1 - Direct=2 - �ਥ�  ⮢�஢ � ���
  DirectPlat    : word       "���ࠢ����� ���⥦��",
!  cNoteSource   : comp       "��뫪� �� ����� �ନ���饣� ���㬥��", // ��� ����஫� ���⪮�
  Status        : word       "�����",
  cNote         : comp       "���᭥��� � ������",
  cDogovor      : comp       "��뫪� �� �������",
  cAppDogovor   : comp       "��뫪� �� �ਫ������",
  cCalPlan      : comp       "��뫪� �� �㭪� �������୮�� �����",
  cBaseDoc      : comp       "��뫪� �� ��",

  dDoc          : date       "��� ���㯫���� � ᨫ�", // KatSopr.dSopr, CalPlan.dCond
  dForm         : date       "��� �ନ஢����", // CalPlan.dInput,Dogovor.dInput
  //dPrice        : date       "��� ���� 業",
  dValCurse     : date       "��� ���� ������",
  ValCurse      : #TSumma    "���� ������ ��� ���-�� ��",
  // �᫨ ����� ValCurse, � � dValCurse ������ ���� ���४�� !!
  DopProc       : double     "���.��業� � ����� ��� ���-�� ���-��",

  cCompl        : comp       "�������� ��뫪�", // (BaseDoc,KatSopr)
  KolKompl      : double     "���-�� �������⮢",

  cGrOtpr       : comp       "��뫪� �� ��㧮��ࠢ�⥫�", // KatSopr.cGruzFrom,Dogovor.cGrOtp,CalPlan.cGrOtp
  cGrPol        : comp       "��뫪� �� ��㧮�����⥫�",  // KatSopr.cGruzTo
  cPodrFrom     : comp       "���ࠧ�������-��ࠢ�⥫�",
  cPodrTo       : comp       "���ࠧ�������-�����⥫�",
  cMolFrom      : comp       "���-��ࠢ�⥫�",
  cMolTo        : comp       "���-�����⥫�",
  cPerson       : comp       "�ᯮ���⥫� ��襩 ���", // AttrDog.cCont_My
  cOtvPodr      : comp       "�⢥��⢥���� ���ࠧ�������",

  VhodNal       : word       "������ � 業� : 1-����祭�,2-���",
  cPayment      : comp       "�ଠ ������",
  ManualTTNInfo : word       "ᯮᮡ �ନ஢���� ���",
                             // 1-��� ������-�� ������; 0-�����-� �⠭�. �-樥�
  wTableSource  : word       "coTable �ନ���饩 ⠡���� ��� ���", // use �� ManualTTNInfo=0
  cRecSource    : comp       "NRec �ନ���饩 ����� ��� ���", // use �� ManualTTNInfo=0
  cShipment     : comp       "��뫪� �� �᫮��� ���㧪�",
  cTipOtg       : comp       "��뫪� �� ����� ���⠢��",
  cPunktP       : comp       "��뫪� �� �㭪� ����㧪�",
  cPunktR       : comp       "��뫪� �� �㭪� ࠧ��㧪�",

  cParty        : comp       "����� ��� ��� ���ᨣ��樨", // (BaseDoc)
  cSklad        : comp       "᪫�� ���㧪�", // (BaseDoc)
  cZakaz        : comp       "?",

  Skidka        : Double     "᪨��� �� �㬬� ���",
  VhSkid        : Word       "��ਠ�� ᪨���:1-%,2-�㬬�",
  nVagon        : string     "����� ��. ����. ��⠢�",
  TypeDoc       : word       "⨯ ���㬥��: 0-�� �������, 1-�� �����",
  cCellVal      : comp       "��. ���������� ��⠢�",
  cTransp       : comp       "��뫪� �� ��.����. ��⠢�", // (SpSopr,SpStep)
  cIzd          : comp       "��ꥪ� �ந�����⢠ ", // (BaseDoc, KatSopr)
  TaraVoz       : word       "�ਧ��� �����⭮�� ���",
  Rezerv        : word       "�ਧ��� ��� १�ࢨ஢����",    //1 - १�ࢨ஢���, 0 - ���
  cWayMove      : comp       "��뫪� �� ᯮᮡ �࠭ᯮ��஢��",
  cDover        : comp       "��뫪� �� ����७�����",
  dDover        : date       "��� ����७����",
  nDover        : string     "����� ����७����",
  sDover        : string     "����७��� ���",
  cDovFio       : comp       "��뫪� �� ����७��� ���",
  ProcOpl       : Double     "��業� �।������"
)
;

#end // _DOCBUF_INC
