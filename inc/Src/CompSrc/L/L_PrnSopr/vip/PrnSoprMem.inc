//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - �����⨪�
// ������� ��� ���� ���
//******************************************************************************

#ifdef ComponentVersion
#component "L_PRNSOPR"
#end

Table Struct KatSoprMemTTN "�������� � ��."
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
, nSertif     : s20              "����䨪�� ����⢠"
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
, coTable     : Word             "��� ⠡����-���筨��"
)
With Index
(
  KatSoprMemTTN01   =  NRec(Unique, Surrogate)
, KatSoprMemTTN02   =  VidSopr + dSopr + NSopr
);


//******************************************************************************
Table Struct SpSoprMemTTN "����䨪��� ��������� � ��."
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
, nSertif      : s20            "����䨪�� ����⢠"
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
, coTable      : Word           "��� ⠡����-���筨��"
, MarkDelete   : boolean        "�⬥⪠ � 㤠�����"
)
With Index
(
  SpSoprMemTTN01  =  NRec(Unique, Surrogate)
, SpSoprMemTTN02  =  cSopr + Npp
, SpSoprMemTTN03  =  cSopr + PrMC + Npp
, SpSoprMemTTN04  =  cMcUsl + PrMC + cGrNal + cOtpEd
, SpSoprMemTTN05  =  MarkDelete
);


//******************************************************************************
Table Struct SpDocNalMemTTN "������ ���㬥�⮢"
(
  NRec      : tNRec          "����� �����"
, cSpDoc    : tNRec          "������ ���㬥��"
, cDoc      : tNRec          "��뫪� �� ���㬥��"
, TipDoc    : Word           "��� ���㬥��"
, cGrNal    : comp           "��뫪� �� GrNal"
, cNalog    : comp           "��뫪� �� ����� ( Katnalog )"
, Nalog     : tSumma         "�⠢�� ������"
, SumNal    : tSumma         "�㬬� ������ � ���. ������"
, cVal      : comp           "����� ������"
, SumVal    : tSumma         "�㬬� ������ � ����� ���㬥��"
, Summa     : tSumma         "�㬬� ������ � ���"
, IsAgreg   : boolean        "��ॣ�஢��� �� �⠢��� - ��/���"
, cOrg      : comp           "��뫪� �� �����⥫� ������"
, ValCurse  : tSumma         "���� 㯫��� ������ � ���"
, CrosCurse : tSumma         "���� 㯫��� ������ � SumVal"
, Npp       : tNpp           "���冷� ��� ���஢��"
, IsCustom  : Word           "����� �� SpGrNal"                         //  +1 - ⠬����
, rSumma    : tSumma         "�㬬� ������ � ��� (������.)"
, rSumVal   : tSumma         "�㬬� ������ � ����� ���-� (������.)"
, rSumNal   : tSumma         "�㬬� ������ � ���. ������ (������.)"
, dCurseVal : Date           "��� ���� �����"
, coTable   : Word           "��� ⠡����-���筨��"
)
With Index
(
  SpDocNalMemTTN01  =  NRec(Unique, Surrogate)
, SpDocNalMemTTN02  =  cSpDoc + TipDoc + Npp + cNalog
, SpDocNalMemTTN03  =  cSpDoc + TipDoc + cNalog
, SpDocNalMemTTN04  =  cDoc + TipDoc + cNalog
, SpDocNalMemTTN05  =  cDoc + TipDoc + Npp + cNalog
, SpDocNalMemTTN06  =  cNalog                             // ��뫮筠� 楫��⭮��� - �� ���������
);

Table Struct SpSoprMemTTNGR = SpSoprMemTTN;

//******************************************************************************
Table Struct TTNDocMemTTN "���"
(
  NRec       : tNRec    "����� �����"
, FilialNo   : Longint  "FilialNo"
, wTable     : Word     "��� ⠡���� ᫮����"
, TiDk       : Word     "��� ���㬥��"
, cDoc       : tNRec    "��뫪� �� ��������"
, cDoc1      : tNRec    "�易��� ���㬥�� 1"
, cDoc2      : tNRec    "�易��� ���㬥�� 2"
, cOrgAvt    : tNRec    "��⮯।���⨥"
, cMarAvt    : tNRec    "�������"
, Speed      : tSumma   "�।.᪮���� �� ��������"
, cSpeed     : tNRec    "⨯ ᪮��� ��� �/�"
, cTipOtg    : tNRec    "����� ���⠢��"
, cShipment  : tNRec    "ᯮᮡ ���㧪� (WayMove-TipOtg)"
, cPunktR    : tNRec    "�㭪� ࠧ��㧪�"
, dPunrBeg   : Date     "��� ��砫� ࠧ��㧪�"
, tPunrBeg   : Time     "�६� ��砫� ࠧ��㧪�"
, dPunrEnd   : Date     "��� ����砭�� ࠧ��㧪�"
, tPunrEnd   : Time     "�६� ����砭�� ࠧ��㧪�"
, cPunrOrg   : tNRec    "�࣠������ ࠧ��㧪�"
, cPunrMet   : tNRec    "ᯮᮡ ࠧ��㧪�"
, sPunrDop   : s100     "�������⥫�� ����樨 �"
, dPunrDop   : tSumma   "���-�� ���.����権 �"
, tPunrDop   : Time     "�६� ���.����権 �"
, cPunktP    : tNRec    "�㭪� ����㧪�"
, dPunpBeg   : Date     "��� ��砫� ����㧪�"
, tPunpBeg   : Time     "�६� ��砫� ����㧪�"
, dPunpEnd   : Date     "��� ����砭�� ����㧪�"
, tPunpEnd   : Time     "�६� ����砭�� ����㧪�"
, cPunpOrg   : tNRec    "�࣠������ ����㧪�"
, cPunpMet   : tNRec    "ᯮᮡ ����㧪�"
, sPunpDop   : s100     "�������⥫�� ����樨"
, dPunpDop   : tSumma   "���-�� ���.����権"
, tPunpDop   : Time     "�६� ���.����権"
, SumAvt     : tSumma   "�⮨����� ���⠢�� ��㧠"
, cValAvt    : tNRec    "����� ��� �⮨���� ���⠢��"
, cPList     : tNRec    "��⥢�� ����"
, sPList     : s30      "����� ��⥢��� ����"
, cDriver    : tNRec    "��� ����⥫�"
, transp     : Word     "1-�࠭ᯮ�� �।��., 0 - ���"
, cTransp    : tNRec    "��� ��⮬�����"
, cTransp1   : tNRec    "��� 1-��楯�"
, cTransp2   : tNRec    "��� 2-��楯�"
, cTransp3   : tNRec    "��� 3-��楯�"
, cForWork1  : tNRec    "��,���-1"
, cForWork2  : tNRec    "��,���-1"
, cForWork3  : tNRec    "��,���-1"
, cForWork4  : tNRec    "��,���-1"
, cForWork5  : tNRec    "��,���-1"
, cForWork6  : tNRec    "��,���-1"
, cForWork7  : tNRec    "��,���-1"
, cForWork8  : tNRec    "��,���-1"
, cForWork9  : tNRec    "��,���-1"
, cForWork10 : tNRec    "��,���-1"
, DopInfo1   : s80      "��,���-1"
, DopInfo2   : s80      "��,���-1"
, DopInfo3   : s80      "��,���-1"
, DopInfo4   : s80      "��,���-1"
, DopInfo5   : s80      "��,���-1"
, DopInfo6   : s80      "��,���-1"
, DopInfo7   : s80      "��,���-1"
, DopInfo8   : s80      "��,���-1"
, DopInfo9   : s80      "��,���-1"
, DopInfo10  : s80      "��,���-1"
, DopSum1    : tSumma   "��,���-1"
, DopSum2    : tSumma   "��,���-1"
, DopSum3    : tSumma   "��,���-1"
, DopSum4    : tSumma   "��,���-1"
, DopDate1   : Date     "��,���-1"
, DopDate2   : Date     "��,���-1"
, DopDate3   : Date     "��,���-1"
, DopDate4   : Date     "��,���-1"
, Descr      : tDescr   "���ਯ�� � ������ ���㬥��"
, DesGr      : tDesGr   "��� ��㯯� ���짮��⥫��"
, coTable    : Word     "��� ⠡����-���筨��"
)
With Index
(
  TTNDocMemTTN01  =  NRec(Unique, Surrogate)
, TTNDocMemTTN02  =  wTable + cDoc + Descr
, TTNDocMemTTN03  =  wTable + cDoc1
);


//******************************************************************************
Table Struct AttrValMemTTN "���祭�� ���譨� ��ਡ�⮢"
(
  NRec       : tNRec    "����� �����"
, wTable     : Word     "����७��� ⨯ ��ꥪ�"
, cRec       : comp     "��� ����� � ⠡���-��ꥪ� ��"
, cAttrNam   : comp     "��� �������� ���ਡ��,��뫪� �� AttrNam"
, vString    : string   "string-���祭��  ��ਡ��"
, vDouble    : double   "double-���祭��  ��ਡ��"
, vDate      : date     "date-���祭�� ��ਡ��"
, vTime      : time     "time-���祭�� ��ਡ��"
, vComp      : comp     "comp-���祭�� ��ਡ��"
, vLongint   : longint  "int32-���祭�� ��ਡ��"
, coTable    : Word     "��� ⠡����-���筨��"
)
With index
(
  AttrValMemTTN0 = NRec(Unique, Surrogate)
, AttrValMemTTN2 = cAttrNam
, AttrValMemTTN3 = wTable(unique) + cRec + cAttrNam
);


//******************************************************************************
Table Struct AttrNamMemTTN = AttrNam;


//******************************************************************************
Table Struct ExClassNameMemTTN = ExClassName;


//******************************************************************************
Table Struct ExClassSegMemTTN = ExClassSeg;


//******************************************************************************
Table Struct ExClassValMemTTN "�����䨪�樮��� ����"
(
  NRec       : tNRec    "����� �����"
, wTable     : Word     "��� ⠡����"
, cRec       : comp     "��� ����� � ⠡��� ��"
, ClassCode  : Word     "��� �����䨪�樨, ��뫪� �� ClassNam"
, cClassSeg  : comp     "��뫪� �� ᥣ����"
, coTable    : Word     "��� ⠡����-���筨��"
)
With index
(
  ExClassValMemTTN00 = NRec (Unique, Surrogate)
, ExClassValMemTTN01 = wTable + cRec
, ExClassValMemTTN02 = ClassCode + wTable + cRec
, ExClassValMemTTN03 = ClassCode + cClassSeg
, ExClassValMemTTN04 = cRec + ClassCode + cClassSeg
);


//******************************************************************************
//  ��� ᡮ� ����� ����� ���ଠ樨
Table Struct tmpSoprAgr "��� ᡮ� ����� ����� ���ଠ樨"
(
  NmForm   : string[100]  "������������ ���"
, NmGroup  : string[100]  "������������ ᡮ�"
, SortName : string   "���� ���஢��"
, sFld1    : Array [1..20] of string   "����� ���祭��"
, fFld1    : Array [1..20] of double   "�᫮�� ���祭��"
)
With index
(
  tmpSoprAgr00 = NmForm + NmGroup + SortName
);


!Type type$KatSoprMemTTN  = record as table KatSoprMemTTN;
!Type type$SpSoprMemTTN   = record as table SpSoprMemTTN;
!Type type$SpDocNalMemTTN = record as table SpDocNalMemTTN;
