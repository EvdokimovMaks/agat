Table STRUCT MemSpSopr "Таблица в памяти"
(
  NRec          : tNRec
, SpSoprNRec    : tNRec
, cMCUSL        : tNRec 
, TekSaldocParty: tNRec 
, KodParty      : string[20]
, dGodnParty    : Date 
, dCreateParty  : DateTime
, TekSaldoOst   : double
, SpSoprKolOpl  : double
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


Table STRUCT MemSpDocNal "Таблица в памяти"
(
  cSpDoc       : tNRec   "Позиция документа"
, cDoc         : tNRec   "Ссылка на документ"
, TipDoc       : word    "Тип документа"
, cGrNal       : tNRec   "Ссылка на GrNal"
, cNalog       : tNRec   "Ссылка на налог ( Katnalog ) "
, Nalog        : double  "Ставка налога"
, SumNal       : double  "Сумма налога в вал. налога"
, cVal         : tNRec   "Валюта налога"
, SumVal       : double  "Сумма налога в валюте документа"
, Summa        : double  "Сумма налога в НДЕ"
, IsAgreg      : boolean "Агрегировать по ставкам - да/нет"
, cOrg         : tNRec   "Ссылка на получателя налога"
, ValCurse     : double  "Курс уплаты налога к НДЕ"
, CrosCurse    : double  "Курс уплаты налога к SumVal"
, Npp          : word    "Порядок для сортировки"
, IsCustom     : word    "Копия из SpGrNal"
)
With Index
(
  MemSpDocNal01 = cSpDoc + TipDoc
);


Table STRUCT MemRParty "Таблица распределенных партий"
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


Table STRUCT MemRSpSopr "Таблица распределенных позиций"
(
  cSpSopr      : tNRec
, Kol          : double
)
With Index
(
  MemRSpSopr01 = cSpSopr
);


Table STRUCT MemRes "Результат распределения"
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
