//********************************************************************************
//                                                        (c) ��௮��� �����⨪�
// �����⨪� 8.10 - �����᪮� ���
// �������� ��� ��⮢ �� (ࠧ�)�������⮢����/(��)�����஢����
//********************************************************************************

#ifdef ComponentVersion
#component "L_SKLAD"
#end

Table Struct KatSoprActCompl "�������� � ��."
(
  NRec        : tNRec            "����� �����"
, FilialNo    : Longint          "FilialNo"
, Name        : s255             "������������ ���������"
, Descr       : tDescr           "���ਯ�� � ������ ���㬥��"
, DesGr       : tDesGr           "��� ��㯯� ���짮��⥫��"
, cOrg        : tNRec            "����ࠣ��� � ���������⠬"
, Summa       : tSumma           "���� �㬬� �� ���������"
, cVal        : tNRec            "��� ������"
, SumVal      : tSumma           "�㬬� � �����"
, VhodNal     : Word             "������ � 業� : 1-����祭�,2-���"
, dPrice      : Date             "��� ���� 業"
, cCompl      : tNRec            "�������� ��뫪�"
, KolKompl    : tSumma           "���-�� �������⮢"
, RndR        : tSumma           "���㣫���� ��� ���㬥�� ��..."
, RndV        : tSumma           "���㣫���� ��� ���㬥�� ��..."
, cNazna      : tNRec            "�����祭�� ��뫪�"
, cDogovor    : tNRec            "��뫪� �� �������"
, cAppDogovor : tNRec            "��뫪� �� �ਫ������"
, cCalPlan    : tNRec            "��뫪� �� �㭪� �������୮�� �����"
, cPerson     : tNRec            "�ᯮ���⥫� ��襩 ���"
, cDover      : tNRec            "��뫪� �� ����७�����"
, nDover      : s20              "����� ����७����"
, dDover      : Date             "��� ����७����"
, sDover      : tName            "����७��� ���"
, cDovFio     : tNRec            "��뫪� �� ����७��� ���"
, Status      : Word             "�����"
, cNote       : tNRec            "���᭥��� � ������"
, cPayment    : tNRec            "�ଠ ������"
, cTransp     : tNRec            "c�뫪� �� �࠭ᯮ��"
, nVagon      : s20              "����� ��.����.��⠢�"
, nKvit       : s20              "����� �/� ���⠭樨"
, nSertif     : string           "����䨪�� ����⢠"
, cMasEd      : tNRec            "������ ��� KatED"
, cMasVid     : tNRec            "ᯮᮡ ��।������ ���"
, Netto       : tSumma           "��� ����"
, mTara       : tSumma           "��� ���"
, cStepDoc    : tNRec            "��뫪� �� ���"
, TipSopr     : Word             "0 - ��� ���㬥��, 1 - ���⠢騪�"
, dSopr       : Date             "��� ���������"
, YearSopr    : Word             "���(dSopr)"
, NSopr       : tDocNumber       "����� ���������"
, VidSopr     : Word             "��� ���� ��� ᮯ�.���-� � ��� �� ��"
, cPodrFrom   : tNRec            "���ࠧ�������-��ࠢ�⥫�"
, cPodrTo     : tNRec            "���ࠧ�������-�����⥫�"
, cMolFrom    : tNRec            "���-��ࠢ�⥫�"
, cMolTo      : tNRec            "���-�����⥫�"
, cGruzFrom   : tNRec            "��� ��㧮��ࠢ�⥫�"
, cGruzTO     : tNRec            "��� ��㧮�����⥫�"
, cOrgBase    : tNRec            "��� ����ࠣ���"
, dOpr        : Date             "� ����./ᯨᠭ�� (�᫨ 0 - ᪫.�� ���)"
, cHozOper    : tNRec            "⨯���� 宧.������"
, SoprHoz     : Word             "ࠧ��ᥭ�(1) ��� ���(0) �� 宧.��"
, Reserved    : Word             "�ந������� १��. 0 - ���, 1 - ��"
, SrokRes     : Date             "�ப, �� ���ண� ��⠭����� १��"
, cKatSopr    : tNRec            "��뫪� �� �ନ������ ���������"
, cValut      : tNRec            "��뫪� �� ������ ᯥ�䨪�樨"
, cSchFact    : tNRec            "��뫪� �� ���-䠪����"
, UserField   : tName            "���� ���짮��⥫�"
, cGrSopr     : tNRec            "��뫪� �� ᢮���� ���������"
, sNalogs     : tSumma           "�㬬� ������� �� ���. ���"
, svNalogs    : tSumma           "�㬬� ������� �� ���. ���."
, transp      : Word             "1 ��� 0 = ����� �� ���"
, cNZakaz     : tNRec            "��뫪� �� ����-�����"
, cOtgOrder   : tNRec            "��뫪� �� �ᯮ�殮��� �� ���㧪�"
, wADoc       : Word             "���ਬ����� ����ࠪ⭮�� ���㬥��"
, cADoc       : tNRec            "��뫪� �� ����ࠪ�� ���㬥��"
, cIzd        : tNRec            "��ꥪ� �ந�����⢠"
, wcIzd       : Word             "⨯ ��ꥪ� �ந�����⢠"
, cZakaz      : tNRec            "��뫪� �� �ந�����⢥��� �����"
, cPriceAlg   : tNRec            "��뫪� �� ������ ���� 業"
, TypeDoc     : Word             "⨯ ���㬥�� 0-�� �������,1-�� �����"
, cCellVal    : tNRec            "��.���������� ��⠢� MoveCell"
, cNMoveCell  : tNRec            "����� ��.����. ��⠢�"
, TaraVoz     : Word             "�����⭮��� ���"
, cOrgPlat    : tNRec            "���ࠧ�������-���⥫�騪"
, TipOtvPodr  : Word             "��� �⢥��⢥����� ���ࠧ�������"
, cOtvPodr    : tNRec            "��뫪� �� �⢥��⢥���� ���ࠧ�������"
, cUKS        : tNRec            "��뫪� �� ��ꥪ� ��ந⥫��⢠"
, coTable     : word             "��� ⠡����-���筨��"
, cKatSoprSrc : comp             "NRec ⠡����-���筨��"
)
With Index
(
  KatSoprActCompl01  =  NRec(Unique, Surrogate)
, KatSoprActCompl02  =  VidSopr + dSopr + NSopr
, KatSoprActCompl03  =  coTable + cKatSoprSrc
);


//******************************************************************************
Table Struct SpSoprActCompl "����䨪��� ��������� � ��."
(
  NRec         : tNRec          "����� �����"
, FilialNo     : Longint        "FilialNo"
, cSpSopr      : tNRec          "��뫪� �� ���������(�᭮�) ᯥ�-�"
, Npp          : tNpp           "����� �� ���浪�"
, PrMC         : Word           "�ਧ��� ⮢�� ��� ��㣨"
, cMCUSL       : tNRec          "��� ⮢��(��㣨)"
, cOtpED       : tNRec          "��� ���᪭�� ��.����७��"
, cAltEd       : tNRec          "����.������ ����७��"
, cParty       : tNRec          "��� ���⨨"
, cVAL         : tNRec          "��� ������"
, cPriceList   : tNRec          "��뫪� �� �ࠩ�-����"
, Kol          : tSumma         "������⢮"
, KolOpl       : tSumma         "������⢮ ����祭����"
, OstKol       : tSumma         "���-�� �� ᯨᠭ����"
, Price        : tPrice         "業� �� �������"
, ProcUb       : tSumma         "% ����⢥���� �뫨"
, cPersons     : tNRec          "����㤭��, �믮����騩 ����"
, ManualTax    : Word           "���� ������"
, cGrNal       : tNRec          "��뫪� �� ��㯯� �������"
, cCellVal     : tNRec          "��.���������� ��⠢� MoveCell"
, cTransp      : tNRec          "��뫪� �� �࠭ᯮ��"
, nVagon       : s20            "����� ��.����.��⠢�"
, nKvit        : s20            "����� �/� ���⠭樨"
, nSertif      : string         "����䨪�� ����⢠"
, SumAvt       : tSumma         "�㬬� �/� ���"
, cValAvt      : tNRec          "����� 2"
, cMasEd       : tNRec          "������ ��� KatED"
, cMasVid      : tNRec          "ᯮᮡ ��।������ ���"
, Netto        : tSumma         "��� ����"
, mTara        : tSumma         "��� ���"
, cResOtgr     : tNRec          "����� ���㧪�"
, cSpDocs      : tNRec          "��뫪� �� ��������� ᯥ�䨪���"
, cSopr        : tNRec          "��� ���"
, dSopr        : Date           "����� �� ���"
, dOprTTN      : Date           "����� �� ���"
, VidSopr      : Word           "����� �� ���"
, Kol2         : tSumma         "������⢮2(������� ���-��)"
, VPrice       : tPrice
, KolFact      : tSumma         "������⢮ 䠪��᪮�"
, KolFact2     : tSumma         "������⢮ 䠪��᪮�2"
, KolNorma     : tSumma         "������⢮ �� ��ଥ"
, OilPlot      : tPrice         "���⭮��� ⮯����"
, OilTemper    : tSumma         "⥬������ ⮯����"
, cSpOrder     : tNRec          "��뫪� �� ᯥ��. �थ� �� ���. ���."
, ProcNac      : tSumma         "��業� ��業�� ��� ஧�. ��."
, cSpStep      : tNRec          "��뫪� �� ������ ��"
, SumNDS       : tSumma         "�㬬� ���. ��� � �����. �� ����樨"
, SumVNDS      : tSumma         "�㬬� ���. ���. � �����. �� ����樨"
, RPrice       : tPrice         "���㣫����� 業� �� �������"
, RVPrice      : tPrice         "���㣫����� 業� � ���. �� �������"
, cSpNZakaz    : tNRec          "��뫪� �� ������ ������"
, cSpSchF      : tNRec          "��뫪� �� ᯥ�䨪��� ��"
, wADocSp      : Word           "���ਬ����� ����ࠪ⭮�� ���㬥��"
, cADocSp      : tNRec          "��뫪� �� ����ࠪ�� ���㬥��"
, cZakVol      : tNRec          "��뫪� �� ������ �ந����.������"
, KolGrM       : tSumma         "������⢮ ��㧮��� ����"
, cOtpEdGrM    : tNRec          "���᪭�� �� ��� ���-�� ��㧮��� ����"
, cNMoveCell   : tNRec          "����� ��.����. ��⠢�"
, cOwner       : tNRec          "��뫪� �� ����䨪��� ��������� � ��."
, PrVoz        : Word
, KolPov       : tSumma         "���-�� ���०������ ���"
, cGPSopr      : tNRec          "��뫪� �� ������� � ���.�த��"
, kolDop       : tSumma         "���-�� � ���.��.���."
, cUKS         : tNRec          "��뫪� �� ��ꥪ� ��ந⥫��⢠"
, wMcProp      : Word           "���. �-�� ⮢��/��㣨"
, priceN       : tSumma         "業� ��� ���.���"
, vPriceN      : tPrice         "業� ��� ���.��� � ���."
, manualNalUch : Word           "���./���. 業� ��� ���.��."
, cPodr        : tNRec          "��뫪� �� ����."
, cMOL         : tNRec          "��뫪� �� ���"
, LastDate     : Date           "��� ����� ⮯����"
, LastTime     : Time           "�६� ����� ⮯����"
, reserve      : tSumma         "���-�� १�ࢠ"
, cDogovor     : tNrec          "��뫪� �� �������"
, cAppDogovor  : tNrec          "��뫪� �� �ਫ������"
, cCalPlan     : tNrec          "��뫪� �� �㭪� �������୮�� �����"
, SummN        : tSumma         "�㬬� ��� ���������� ���"
, vSummN       : tSumma         "�㬬� � ����� ��� ���������� ���"
, coTable      : word           "��� ⠡����-���筨��"
, cSpSoprSrc   : comp           "NRec ⠡����-���筨��"
)
With Index
(
  SpSoprActCompl01  =  NRec(Unique, Surrogate)
, SpSoprActCompl02  =  cSopr + Npp
, SpSoprActCompl03  =  cSopr + PrMC + Npp
, SpSoprActCompl04  =  coTable + cSpSoprSrc
);


//******************************************************************************
Table Struct SoprOrdAActCompl "�����᪠ �� ��⠬ ��������樨"
(
  NRec         : tNRec          "����� �����"
, cSpSopr      : tNRec          "��뫪� �� ��� ��������樨"
, cPodr        : tNRec          "��뫪� �� ᪫��"
, cMOL         : tNRec          "��뫪� �� ���"
, cMC          : tNRec          "��뫪� �� ��"
, cSoprDoc     : tNRec          "��뫪� �� ���������"
, cOtpEd       : tNRec          "��뫪� �� ���᪭�� ������� ����७��"
, cParty       : tNRec          "��뫪� �� �����"
, Price        : tSumma         "���� ���室������ ⮢��"
, Kol          : tSumma         "������⢮ ���室������� ⮢��"
, VPrice       : tSumma         "����⭠� 業� ⮢��"
, cVal         : tNRec          "��뫪� �� ������"
, coTable      : word           "��� ⠡����-���筨��"
, cSoprOrdASrc : comp           "NRec ⠡����-���筨��"
)
With Index
(
  SoprOrdAActCompl01  =  NRec(Unique, Surrogate, Journal)
, SoprOrdAActCompl02  =  cSoprDoc + cMC
, SoprOrdAActCompl03  =  cSoprDoc + cPodr + cMOL
, SoprOrdAActCompl04  =  cSpSopr
, SoprOrdAActCompl05  =  coTable + cSoprOrdASrc
);
