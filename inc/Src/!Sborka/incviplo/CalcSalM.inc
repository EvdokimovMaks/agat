{$IFDEF __type__}
{═════════════ Таблица : VCALCSALM "VCALCSALM" ══════════════}
type
  String255        = String[255];
  String21        = String[21];
  String150        = String[150];
  pVCALCSALM = ^tVCALCSALM;
  tVCALCSALM = record   { - VCALCSALM }
    MYPLANSNO      : Comp;            { MyPlansNo                             }
    TECDATE        : Date;            { TecDate                               }
    BEGDATE        : Date;            { BegDate                               }
    ENDDATE        : Date;            { EndDate                               }
    PARAM1         : Word;            { Param1                                }
    SCHNAME        : String;          { SchName                               }
    SUBNAME        : String;          { SubName                               }
    MKAUOS1        : LongInt;         { mKauOs1                               }
    MKAUOS2        : LongInt;         { mKauOs2                               }
    MKAUOS3        : LongInt;         { mKauOs3                               }
    MKAUOS4        : LongInt;         { mKauOs4                               }
    MKAUOS5        : LongInt;         { mKauOs5                               }
    MKAUOS6        : LongInt;         { mKauOs6                               }
    WKAUOS1        : Word;            { wKauOs1                               }
    WKAUOS2        : Word;            { wKauOs2                               }
    WKAUOS3        : Word;            { wKauOs3                               }
    WKAUOS4        : Word;            { wKauOs4                               }
    WKAUOS5        : Word;            { wKauOs5                               }
    WKAUOS6        : Word;            { wKauOs6                               }
    CKAUOS1        : Comp;            { cKauOs1                               }
    CKAUOS2        : Comp;            { cKauOs2                               }
    CKAUOS3        : Comp;            { cKauOs3                               }
    CKAUOS4        : Comp;            { cKauOs4                               }
    CKAUOS5        : Comp;            { cKauOs5                               }
    CKAUOS6        : Comp;            { cKauOs6                               }
    WKAU           : Word;            { wKau                                  }
    CKAU           : Comp;            { cKau                                  }
    MCOUNT         : LongInt;         { mCount                                }
    OKODSPO        : Comp;            { oKodSPO                               }
    PICKSCH        : String21;        { PickSch                               }
    PICKSUB        : String21;        { PickSub                               }
    PICKPLANSNO    : Comp;            { PickPlansNo                           }
    MULTISCH       : Word;            { MultiSch                              }
    MULTISUB       : Word;            { MultiSub                              }
    ISOKSAL        : Boolean;         { isOkSal                               }
    ISOKOB         : Boolean;         { isOkOb                                }
    FIRSTMON       : String;          { FIRSTMON                              }
    PLANNAME       : String;          { PLANNAME                              }
    DLGKAUD1       : String;          { Выражение номер 2                     }
    DLGKAUD2       : String;          { Выражение номер 3                     }
    DLGKAUD3       : String;          { Выражение номер 4                     }
    DLGKAUD4       : String;          { Выражение номер 5                     }
    DLGKAUD5       : String;          { Выражение номер 6                     }
    DLGKAUD6       : String;          { Выражение номер 7                     }
    NAME           : String150;       { Наименование счета/субсчета           }
    DLGKODSPO      : String;          { Выражение номер 9                     }
  end;

type
    prVCALCSALM = pVCALCSALM;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNBUHSCHET=0;
    TNKATKAU=5;
    TNOBOROT=1;
    TNPICKBUH=3;
    TNPICKBUHNEW=6;
    TNPICKBUHS=4;
    TNSALDMOUN=2;
    TNSEARCHBUH=7;
    FNBEGDATE=2;
    FNCKAU=26;
    FNCKAUOS1=19;
    FNCKAUOS2=20;
    FNCKAUOS3=21;
    FNCKAUOS4=22;
    FNCKAUOS5=23;
    FNCKAUOS6=24;
    FNDLGKAUD1=38;
    FNDLGKAUD2=39;
    FNDLGKAUD3=40;
    FNDLGKAUD4=41;
    FNDLGKAUD5=42;
    FNDLGKAUD6=43;
    FNDLGKODSPO=45;
    FNENDDATE=3;
    FNFIRSTMON=36;
    FNISOKOB=35;
    FNISOKSAL=34;
    FNMCOUNT=27;
    FNMKAUOS1=7;
    FNMKAUOS2=8;
    FNMKAUOS3=9;
    FNMKAUOS4=10;
    FNMKAUOS5=11;
    FNMKAUOS6=12;
    FNMULTISCH=32;
    FNMULTISUB=33;
    FNMYPLANSNO=0;
    FNNAME=44;
    FNOKODSPO=28;
    FNPARAM1=4;
    FNPICKPLANSNO=31;
    FNPICKSCH=29;
    FNPICKSUB=30;
    FNPLANNAME=37;
    FNSCHNAME=5;
    FNSUBNAME=6;
    FNTECDATE=1;
    FNWKAU=25;
    FNWKAUOS1=13;
    FNWKAUOS2=14;
    FNWKAUOS3=15;
    FNWKAUOS4=16;
    FNWKAUOS5=17;
    FNWKAUOS6=18;
    tbBUHSCHET_4_MODIF_0=0;
    tbBUHSCHET_4_MODIF_1=65536;
    tbBUHSCHET_4_MODIF_2=131072;
    tbKATKAU_4_MODIF_0=5;
    tbOBOROT_4_MODIF_0=1;
    tbOBOROT_4_MODIF_1=65537;
    tbOBOROT_4_MODIF_2=131073;
    tbOBOROT_4_MODIF_3=196609;
    tb4_MODIF_4=262145;
    tbPICKBUH_4_MODIF_0=3;
    tbPICKBUH_4_MODIF_1=65539;
    tbPICKBUHNEW_4_MODIF_0=6;
    tbPICKBUHNEW_4_MODIF_1=65542;
    tbSALDOALL=2;
    tbSALDOPLAN=65538;
    tbSALDOSCH=131074;
    tbSALDMOUN_4_MODIF_0=196610;
    tbSALDMOUN_4_MODIF_1=262146;
    tbSALDMOUN_4_MODIF_2=327682;
    tbSALDMOUN_4_MODIF_3=393218;
    tbSEARCHBUH_4_MODIF_0=65543;
    tbSEARCHBUH_4_MODIF_1=131079;
{$ENDIF}
{$IFDEF __Type__}
type
   prVCALCSALMVCALCSALM = pVCALCSALM;
   prCALCSALM = pVCALCSALM;
   pCALCSALM = pVCALCSALM;
{$endif}

{$ifdef __MTtabledef__}
{═════════════ Таблица : F_BUHREP::PICKBUH "PICKBUH" ══════════════}
type
  pPICKBUH = ^tPICKBUH;
  tPICKBUH = record   { - PICKBUH }
    KODTABLE       : Word;            { таблица                               }
    PICKREC        : Comp;            { номер элемента в списке               }
    PICKKOD        : String[21];      { код или NRec элемента                 }
    SCHET          : String[21];      { бухг.счет                             }
    SUBKAU         : String[21];      { субсчет/КАУ                           }
    NAME           : String[250];     { имя фильтра                           }
    PICK           : LongInt;         { порядок выбора                        }
    PICKKOL        : Double;          { количество                            }
  end;
const
  tiPICKBUHREC           = 0;  { KODTABLE(M) + PICKREC                   }
  tiPICKBUHKOD           = 1;  { KODTABLE(M) + PICKKOD(Up)               }
  tiPICKBUHSCH           = 2;  { KODTABLE(M) + SCHET(Up) + PICKKOD(Up)   }
  tiPICKBUHPCK           = 3;  { KODTABLE(M) + PICK                      }

const
  mtPICKBUH = 'F_BUHREP::PICKBUH';
{═════════════ Таблица : F_BUHREP::PICKBUHNEW "PICKBUHNEW" ══════════════}
type
  pPICKBUHNEW = ^tPICKBUHNEW;
  tPICKBUHNEW = record   { - PICKBUHNEW }
    LENTITY        : LongInt;         { насятройка, хранящая данные           }
    KODTABLE       : Word;            { таблица                               }
    PICKREC        : Comp;            { номер элемента в списке               }
    PICKKOD        : String[21];      { код или NRec элемента                 }
    SCHET          : String[21];      { бухг.счет                             }
    SUBKAU         : String[21];      { субсчет/КАУ                           }
    NAME           : String[250];     { имя фильтра                           }
    PICK           : LongInt;         { порядок выбора                        }
    PICKKOL        : Double;          { количество                            }
  end;
const
  tiPICKBUHNEWREC        = 0;  { LENTITY(M) + KODTABLE + PICKREC         }
  tiPICKBUHNEWKOD        = 1;  { LENTITY(M) + KODTABLE + PICKKOD(Up)     }
  tiPICKBUHNEWSCH        = 2;  { LENTITY(M) + KODTABLE + SCHET(Up) + PICKKOD(Up) }
  tiPICKBUHNEWPCK        = 3;  { LENTITY(M) + KODTABLE + PICK            }

const
  mtPICKBUHNEW = 'F_BUHREP::PICKBUHNEW';
{$endif __MTtabledef__}
