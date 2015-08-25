/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                   (c) 1994,2003 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Контур планирования производства                          ║
 ║ Версия        : 7.10                                                      ║
 ║ Назначение    : Глобальное описание констант полей (свойств)              ║
 ║ Ответственный : Скороход Дмитрий Владимирович                             ║
 ║ Параметры     : нет                                                       ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

const
  BoundsForTable    = 1000;
  BoundsForFunction = 1002;
  BoundsForLoConst  = 1010;
  BoundsForGlConst  = 1011;
  BoundsForAnConst  = 1012;


  dtKatMc        =   0;
  dtKatUsl       =   1;
  dtIndent       =   2;
  dtClaim        =   3;
  dtMnPlan       =   4;
  dtSpMnPlan     =   5;
  dtSpMnPl       =   6;
  dtObjAcct      =   7;
  dtSpObjAcc     =   8;
  dtKatOtpEd     =   9;
  dtSpOtpEd      =  10;
  dtKatEd        =  11;
  dtObjParam     =  12;
  dtSpObjPar     =  13;
  dtFpTPer       =  14;
  dtFpPeriod     =  15;
  dtKatSopr      =  16;
  dtSpSopr       =  17;
  dtTTNDoc       =  18;
  dtAllMemo      =  19;
  dtAsupMemo     =  20;
  dtKatParty     =  21;
  dtKatOrg       =  22;
  dtKatPodr      =  23;
  dtObjRem       =  24;
  dtKatStroy     =  25;
  dtKatPlace     =  26;
  dtStatLog      =  27;
  dtKatNotes     =  28;
  dtPick         =  29;
  dtPlanSlit     =  30;
  dtPlanMove     =  31;
  dtMoveTake     =  32;
  dtBaseDoc      =  33;
  dtSpStep       =  34;
  dtSklOrder     =  35;
  dtSpOrder      =  36;
  dtDogovor      =  37;
  dtBaseFin      =  38;
  dtQPHead       =  39;
  dtQPMove       =  40;
  dtQPLine       =  41;
  dtMnSlit       =  42;
  dtPrKachvo     =  43;
  dtTsKachvo     =  44;
  dtRezKontr     =  45;
  dtValPokaz     =  46;
  dtQualMc       =  47;
  dtKachvoEx     =  48;
  dtValKontr     =  49;
  dtKatPokaz     =  50;
  dtRsvOper      =  51;
  dtWrkFndPe     =  52;
  dtKlPrice      =  53;
  dtPrices       =  54;
  dtTarifN       =  55;
  dtTarifAv      =  56;
  dtKatZak       =  57;
  dtPutLst       =  58;
  dtTransp       =  59;
  dtManufOp      =  60;
  dtSpTrPotr     =  61;
  dtNZakaz       =  62;
  dtSpNZak       =  63;
  dtKatMarsh     =  64;
  dtKatMarshSP   =  65;
  dtBor_R        =  66;
  dtPutGsm       =  67;
  dtUchRabPL     =  68;
  dtPutOld       =  69;
  dtSpZakaz      =  70;
  dtNormGSM      =  71;
  dtGruZak       =  72;
  dtNoteBene     =  73;
  dtNBSZam       =  74;
  dtNBSIzm       =  75;
  dtNBSProd      =  76;
  dtHistZam      =  77;
  dtProf         =  78;
  dtRsvOperZV    =  79;
  dtUchet        =  80;
  dtUchetMTR     =  81;
  dtActICN       =  82;
  dtSpActICN     =  83;
  dtSpDocs       =  84;
  dtKAtBank      =  85;
  dtKatOrgDescr  =  86;
  dtPickEx       =  87;
  dtGsmKof       =  88;
  dtAutoDoc      =  89;
  dtTheme        =  90;
  dtExecutor     =  91;
  dtSpModelSmeta =  92;
  dtAttrVal      =  93;
  dtKpn_Hdr      =  94;
  dtKpn_Sp       =  95;
  dtKpn_Obj      =  96;
  dtKpn_PrmRAn   =  97;
  dtDOres        =  98;
  dtSklOst       =  99;
  dtTekSaldo     = 100;
  dtToplivo      = 101;
  dtKatNazna     = 102;
  dtPokazIer     = 103;
  dtKnDriver     = 104;
  dtSave_Drv     = 105;
  dtSpDopEd      = 106;
  dtListPar      = 107;
  dtCardSN       = 108;
  dtMGCard       = 109;
  dtSpCardSN     = 110;
  dtKatSort      = 111;
  dtKatStats     = 112;
  dtGroupParty   = 113;
  dtKatDopEd     = 114;
  dtHDR_PS       = 115;
  dtPS_Lines     = 116;
  dtSoprOrdB     = 117;
  dtBrigad       = 118;
  dtBrWork       = 119;
  dtRef_OKDP     = 120;
  dtBuildings    = 121;
  dtFloors       = 122;
  dtRooms        = 123;
  dtComPay       = 124;
  dtAttrHist     = 125;
  dtRents        = 126;

  dtNothing    = 0ffffh;
  dtFree       = 0fffeh;
  dtGlobal     = 0fffdh;
  rePosition   = 0fffch;

  reResult     = 0;

  reReal       = 0;
  reString     = 1;
  reDate       = 2;
  reReference  = 3;
  reLogical    = 4;
  reTime       = 5;
  reInteger    = 6;
  reDateTime   = 40h;
  reMemo       = 50h;
  reObject     = 60h;
  reNavigate   = 100h;
  reNothing    = 0ffffh;

  moNone       = 0;
  moReadOnly   = 1;
  moWriteOnly  = 2;
  moReadWrite  = 3;

  reGetFirst   = 20001;
  reGetNext    = 20002;
  reGetLast    = 20003;
  reGetPrev    = 20004;
  reSetPos     = 20005;

  reReRead     = 20101;
  reReWrite    = 20102;

end

#define PrintStdType(aType) if(#aType = reReal, 'Веществ.', if(#aType=reString, 'Строка', if(#aType=reDate, 'Дата', if(#aType=reReference, 'Ссылка', if(#aType=reLogical,'Логическ.', if(#aType=reTime,'Время', if(#aType=reNavigate,'Позиция', if(#aType=reMemo,'Мемо',if(#aType=reObject,'Объект',if(#aType=reInteger,'Целое',if(#aType=reDateTime,'Дата и время','')))))))))))

#define PrintStdMode(aMode) if(#aMode = moReadOnly, 'r-', if(#aMode = moWriteOnly, '-w', if(#aMode = moReadWrite, 'rw', '--')))

#define PropertyNRec BlackFieldLeaf('Уникальный номер записи (позиция таблицы)', rePosition, wType, reReference, moReadWrite, 0);

#define GetNRec(aTable) rePosition : GetPrimeReference := #aTable.NRec;

#define SetNRec(aTable) rePosition : #aTable.NRec    := aValue;
