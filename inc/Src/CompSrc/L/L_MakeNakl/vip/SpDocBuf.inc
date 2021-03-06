
#ifndef _SPDOCBUF_INC
#define _SPDOCBUF_INC

#ifdef ComponentVersion
#component "L_MAKENAKL"
#endif

! ������ᠫ�� ���� ��� �ନ஢���� ᯥ�䨪�樨 ���㬥��.
! �᫨ ��� �����⭮� ⠡���� ��� ���� �� ᮢ������ �
! ��� ������������� � ����, � ������.���� 㪠����
! �ࠢ� � �������ਨ. � ��⨢��� ��砥 ���� � �������
! ��� ᮮ⢥�����饣� ����, ���� ��� �������� ᮢ������
! � ��ᢠ���� ��� � ����.

Table STRUCT SpDocBuf "���� ��� ᯥ�䨪�樨 ���㬥��"
(
  NRec          : comp       ,
  Npp           : word       "����� �� ���浪�", // SpDocs.Code
!  curSelect     : word       "1 - ⥪��� �롮ઠ", // ��� �ନ஢���� TNalF
  PrMC          : word       "�ਧ��� ⮢�� ��� ��㣨",
                             // 1 - ��      (SpDocs.PrMC = 3)
                             // 2 - ��㣠  (SpDocs.PrMC = 4)
                             // 3 - ���. ��㣠 (% � ⮢���)
                             // 4 - ���. ��㣠 (�㬬� � ⮢���)
                             // 5 - ���. ��㣠 (��� ��।������ �� ����)
                             // 6 - ���. ��㣠 (��� ��।������ �� ��ꥬ�)
  cMCUsl        : comp       "��뫪� �� ��/����",
  cGrMCUsl      : comp       "��뫪� �� ��㯯� ��/���",
  cOtpEd        : comp       "��뫪� �� ���᪭�� �������",

  NRecSpStep    : comp       "SpStep.NRec",
  NRecSpSopr    : comp       "SpSopr.NRec",
  cSpDocs       : comp       "�뫪� �� �������� ᯥ�䨪���", // (SpSopr,SpStep)

  Kol           : double     "������⢮",              // (SpSopr,SpStep,SpDocs)
  KolOpl        : double     "������⢮ ����祭����",  // (SpSopr,SpStep)
  KolFact       : double     "������⢮ 䠪��᪮� ", // (SpSopr)
  KolSkl        : double     "������⢮ ��� ᪫���",   // (SpStep)
  Price         : double     "業� �� �������",
!  VPrice        : double     "業� �� ������� � �����", // (SpSopr)
  cPodr         : comp       "᪫�� ���㧪�", // (TNalF)
  cMol          : comp       "���", // (TNalF)
  cParty        : comp       "��� ���⨨",              // (SpSopr,SpStep,TNalF)
  cVal          : comp       "��뫪� �� ������ ᯥ�䨪�樨",
  Summa         : double     "�㬬� �� ����樨",        // (SpStep,SpDocs)
  Reserv        : double     "������⢮ ⮢�� � १�ࢥ",     // (SpStep)
!  SumVal        : double     "�㬬� � ����� �� ⮢���",        // (SpStep)
!  Garant        : double     "�ப ��࠭⨨ � ������",         // (SpStep)
  SrokRes       : date       "��᫥���� ���� ����⢨� १�ࢠ", // (SpStep)
!  SopUsl        : word       "1 - %, 2 - �㬬� � ⮢���",       // (SpStep)
!  StoTov        : double     "�⮨����� ��� % � ⮢���",        // (SpStep)
  PrSkid        : word       "1 - ᪨��� %,2-�㬬�",            // (SpStep)
  VlSkid        : double     "�⮨����� ��� % � ⮢���",        // (SpStep)
!  SumNDS        : double     "�㬬� ���. ��� � �����. �� ����樨",  // (SpStep)
!  SumVNDS       : double     "�㬬� ���. ���. � �����. �� ����樨", // (SpStep)
  NDS           : double     "����稭� ������� � ����樨", // (SpSopr)
  cPriceList    : comp       "��뫪� �� �ࠩ�-����",
  nVagon        : string[20] "����� ��.����.��⠢�",
  nKvit         : string[20] "����� �/� ���⠭樨",
  PrUsNkl       : word       "��. ��. � ���������",  // (SpStep)
  ManualTax     : word       "���� ������", // (SpSopr,SpStep)
!  cAltEd        : comp       "����.������ ����७��", // (SpSopr,SpStep)
  cPersons      : comp       "����㤭��, �믮����騩 ����", // (SpSopr,SpStep)
  cResOtgr      : comp       "��뫪� �� ����� ���㧪�",
  cMoveCell     : comp       "��뫪� �� ��.����. ��⠢�", // (SpSopr.cCellVal,SpStep.cCellVal)
  cNMoveCell    : comp       "��뫪� �� ����� ��.����. ��⠢�", // (SpSopr,SpStep)
  cTransp       : comp       "��뫪� �� ��.����. ��⠢�", // (SpSopr,SpStep)
  wMcProp       : word       "���. �-�� ��/��㣨", // (SpSopr.wMcProp)
  cDogovor      : comp       "��뫪� �� �������",
  cAppDogovor   : comp       "��뫪� �� �ਫ������",
  cCalPlan      : comp       "��뫪� �� �㭪� �������୮�� �����", // (SpStep)
  cGrNal        : comp       "��뫪� �� ��㯯� �������",
  KolGrm        : double     "���-�� ��㧮��� ����",
  nSertif       : string     "����䨪�� ����⢠",
  cOtpEdGrm     : comp       "��. ������ ��� ��㧮��� ����",
  SumAvt        : double     "�㬬� �/� ���",
  cValAvt       : comp       "����� 2",
  cMasEd        : comp       "������ ��� KatEd",
  cMasVid       : comp       "ᯮᮡ ��।������ ���",
  Netto         : double     "��� ����",
  mTara         : double     "��� ���",
  ProcUb        : double     "% ����⢥���� �뫨",
  cSpMC         : comp       "�ਢ易���� ��㣠",
  wTableSource  : word       "coTable �ନ���饩 ⠡���� ��� ���", // use �� SDocBuf.ManualTTNInfo=0
  cRecSource    : comp       "NRec �ନ���饩 ����� ��� ���", // use �� SDocBuf.ManualTTNInfo=0
  PrVoz         : word       "������/�������� ���",
  cOwner        : comp       "��뫪� �� ������ ��"
, cUKS          : comp       "��뫪� �� ��ꥪ� ���"
, cZatr         : comp       "��뫪� �� ����� ����� ���"
, cPostMC       : comp       "���⠢騪 ���ਠ��"
)

With Index
(
  SpDocBuf01 = NRec (Surrogate, Unique)
, SpDocBuf02 = PrMC + cPodr + cMol + Npp
, SpDocBuf04 = PrUsNkl + PrMC
, SpDocBuf05 = cMCUsl
, SpDocBuf06 = cSpMC + PrMC
, SpDocBuf07 = NRecSpStep
, SpDocBuf08 = KolFact
)
;

//------------------------------------------------------------------------------
Table STRUCT SpDocBuf_ExN "�த������� ⠡����"
(
  cSpDocBuf        : comp
, PriceN           : tSumma         "業� ��� ���.���"
, vPriceN          : tPrice         "業� ��� ���.��� � ���."
)
With Index
(
  SpDocBuf_ExN01 = cSpDocBuf
)
;
//------------------------------------------------------------------------------

#end // _SPDOCBUF_INC
