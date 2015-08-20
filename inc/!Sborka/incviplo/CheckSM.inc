{$IFDEF __type__}
{═════════════ Таблица : VIEWRAB "VIEWRAB" ══════════════}
type
  String21        = String[21];
  String80        = String[80];
  String255        = String[255];
  String150        = String[150];
  pVIEWRAB = ^tVIEWRAB;
  tVIEWRAB = record   { - VIEWRAB }
    CHECKDATE      : Date;            { CheckDate                             }
    CHECKENDDATE   : Date;            { CheckEndDate                          }
    BEGDATE        : Date;            { BegDate                               }
    ENDDATE        : Date;            { EndDate                               }
    MYTECSCHET     : String21;        { MyTecSchet                            }
    MYSUBSCHET     : String21;        { MySubSchet                            }
    FSCHET         : String80;        { fSchet                                }
    FNSUB          : String80;        { fNSub                                 }
    PARAM1         : Word;            { Param1                                }
    FCHECK         : Word;            { fCheck                                }
    ISOKSAL        : Boolean;         { isOkSal                               }
    ISOKOB         : Boolean;         { isOkOb                                }
    MYPLANSNO      : Comp;            { myPlansNo                             }
    CKAU1          : Comp;            { cKau1                                 }
    WKAU1          : Word;            { wKau1                                 }
    MULTIKAU       : Word;            { MultiKau                              }
    SKAU1          : String;          { SKAU1                                 }
    NAME           : String150;       { Наименование счета/субсчета           }
    SCHET          : String21;        { Номер счета                           }
    SUBSCH         : String21;        { Номер субсчета                        }
    FPLANSCH       : String;          { FPLANSCH                              }
  end;

type
    prVIEWRAB = pVIEWRAB;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNBUHSCHET=2;
    TNBUHSCHETSUB=3;
    TNOBOROT=0;
    TNPICKBUH=4;
    TNSALDMOUN=1;
    FNBEGDATE=2;
    FNCHECKDATE=0;
    FNCHECKENDDATE=1;
    FNCKAU1=13;
    FNENDDATE=3;
    FNFCHECK=9;
    FNFNSUB=7;
    FNFPLANSCH=23;
    FNFSCHET=6;
    FNISOKOB=11;
    FNISOKSAL=10;
    FNMULTIKAU=15;
    FNMYPLANSNO=12;
    FNMYSUBSCHET=5;
    FNMYTECSCHET=4;
    FNNAME=17;
    FNPARAM1=8;
    FNSCHET=18;
    FNSKAU1=16;
    FNSUBSCH=19;
    FNWKAU1=14;
    tbOBOROT_4_MODIF_0=0;
    tbOBOROT_4_MODIF_1=65536;
    tb4_MODIF_2=131072;
    tbSALDMOUN_4_MODIF_0=1;
    tbSALDMOUN_4_MODIF_1=65537;
{$ENDIF}
{$IFDEF __Type__}
type
   prVIEWRABVIEWRAB = pVIEWRAB;
   prCHECKTSALD = pVIEWRAB;
   pCHECKTSALD = pVIEWRAB;
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
{$endif __MTtabledef__}
