Table STRUCT MemSpSopr "������ � �����"
(
  NRec          : tNRec
, SpSoprNRec    : tNRec
, cMCUSL        : tNRec 
, TekSaldocParty: tNRec 
, KodParty      : string[20]
, dGodnParty    : Date 
, dCreateParty  : DateTime
, TekSaldoOst   : double
, SpSoprKolFact : double
, ManualTax     : word
, wNpp          : word
, ccPodr        : tNRec
, ccMOL         : tNRec
, ccParty       : tNRec
, cKitKau       : tNRec
, SpSoprUniCU   : tNRec
)
With Index
(
  TMP00indexmem = wNpp + cMCUSL + SpSoprNRec + KodParty
, TMP01indexmem = wNpp + cMCUSL + SpSoprNRec + dGodnParty
, TMP02indexmem = NRec(Unique, Surrogate, Journal)
, TMP03indexmem = cMCUSL + SpSoprNRec
, TMP04indexmem = wNpp + cMCUSL + SpSoprNRec + dCreateParty
, TMP05indexmem = cMCUSL + TekSaldocParty + cKitKau
, TMP06indexmem = cMCUSL + wNpp
, TMP07indexmem = wNpp
, TMP08indexmem = cMCUSL + cKitKau
, TMP09indexmem = SpSoprUniCU
);


Table STRUCT MemSpDocNal "������ � �����"
(
  cSpDoc       : tNRec   "������ ���㬥��"
, cDoc         : tNRec   "��뫪� �� ���㬥��"
, TipDoc       : word    "��� ���㬥��"
, cGrNal       : tNRec   "��뫪� �� GrNal"
, cNalog       : tNRec   "��뫪� �� ����� ( Katnalog ) "
, Nalog        : double  "�⠢�� ������"
, SumNal       : double  "�㬬� ������ � ���. ������"
, cVal         : tNRec   "����� ������"
, SumVal       : double  "�㬬� ������ � ����� ���㬥��"
, Summa        : double  "�㬬� ������ � ���"
, IsAgreg      : boolean "��ॣ�஢��� �� �⠢��� - ��/���"
, cOrg         : tNRec   "��뫪� �� �����⥫� ������"
, ValCurse     : double  "���� 㯫��� ������ � ���"
, CrosCurse    : double  "���� 㯫��� ������ � SumVal"
, Npp          : word    "���冷� ��� ���஢��"
, IsCustom     : word    "����� �� SpGrNal"
)
With Index
(
  MemSpDocNal01 = cSpDoc + TipDoc
);


Table STRUCT MemRParty "������ ��।������� ���⨩"
(
  cParty       : tNRec
, cKitKau      : tNRec
, cMCUsl       : tNRec
, cPodr        : tNRec
, cMol         : tNRec
, Kol          : double
)
With Index
(
  MemRParty01 = cParty + cKitKau + cMCUsl + cPodr + cMol
);


Table STRUCT MemRSpSopr "������ ��।������� ����権"
(
  cSpSopr      : tNRec
, Kol          : double
)
With Index
(
  MemRSpSopr01 = cSpSopr
);


Table STRUCT MemRes "������� ��।������"
(
  NRec         : tNRec
, cSopr        : tNRec
, PrMC         : word
, cSpStep      : tNRec
, cMCUSL       : tNRec 
, cOtpEd       : tNRec 
, Kol          : tSumma         
, KolOpl       : tSumma         
, KolFact      : tSumma         
, ManualTax    : word
, Npp          : tNpp
, cParty       : tNRec 
, VidSopr      : word
, Price        : tPrice         
, rPrice       : tPrice         
, rVPrice      : tPrice         
, VPrice       : tPrice
, cVal         : tNRec
, SpSoprUniCU  : tNRec
, cPodrR       : tNRec
, cMolR        : tNRec
, cKitKau      : tNRec
, FilialNo     : Longint        
, cSpSopr      : tNRec
, cAltEd       : tNRec
, cPriceList   : tNRec
, OstKol       : tSumma         
, ProcUb       : tSumma         
, cPersons     : tNRec
, cGrNal       : tNRec
, cCellVal     : tNRec
, cTransp      : tNRec
, nVagon       : s20            
, nKvit        : s20            
, nSertif      : String         
, SumAvt       : tSumma         
, cValAvt      : tNRec
, cMasEd       : tNRec
, cMasVid      : tNRec
, Netto        : tSumma         
, mTara        : tSumma         
, cResOtgr     : tNRec
, cSpDocs      : tNRec
, dSopr        : Date           
, dOprTTN      : Date           
, Kol2         : tSumma         
, KolFact2     : tSumma         
, KolNorma     : tSumma         
, OilPlot      : tPrice         
, OilTemper    : tSumma         
, cSpOrder     : tNRec
, ProcNac      : tSumma         
, SumNDS       : tSumma         
, SumVNDS      : tSumma         
, cSpNZakaz    : tNRec
, cSpSchF      : tNRec
, wADocSp      : Word           
, cADocSp      : tNRec          
, cZakVol      : tNRec          
, KolGrM       : tSumma         
, cOtpEdGrM    : tNRec          
, cNMoveCell   : Comp           
, cOwner       : tNRec
, PrVoz        : Word
, KolPov       : tSumma         
, cGPSopr      : tNRec          
, kolDop       : tSumma         
, cUKS         : tNRec          
, wMcProp      : Word           
, priceN       : tSumma         
, vPriceN      : tPrice         
, manualNalUch : Word           
, LastDate     : Date           
, LastTime     : Time           
, reserve      : tSumma         
, cDogovor     : tNrec          
, cAppDogovor  : tNrec          
, cCalPlan     : tNrec          
, cPodr        : tNRec
, cMol         : tNRec
, SummN        : tSumma         
, vSummN       : tSumma         
, sNameVar     : String         
, bNotRasp     : boolean // ����।������� ������
)
With Index
(
  MemRes00 = NRec
, MemRes01 = cSopr + PrMC
, MemRes02 = NRec(Unique, Surrogate, Journal)
, MemRes03 = cSpStep
, MemRes04 = Npp + cMCUSL
, MemRes05 = cMCUSL + cParty + cKitKau + Npp
);
