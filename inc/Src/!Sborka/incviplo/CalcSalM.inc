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
    PICKSCH        : String21;        { PickSch                               }
    PICKSUB        : String21;        { PickSub                               }
    PICKPLANSNO    : Comp;            { PickPlansNo                           }
    MULTISCH       : Word;            { MultiSch                              }
    MULTISUB       : Word;            { MultiSub                              }
    ISOKSAL        : Boolean;         { isOkSal                               }
    ISOKOB         : Boolean;         { isOkOb                                }
    FIRSTMON       : String;          { FIRSTMON                              }
    PLANNAME       : String;          { PLANNAME                              }
    NAME           : String150;       { Наименование счета/субсчета           }
  end;

type
    prVCALCSALM = pVCALCSALM;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNBUHSCHET=0;
    TNOBOROT=1;
    TNPICKBUH=3;
    TNPICKBUHS=4;
    TNSALDMOUN=2;
    FNBEGDATE=2;
    FNENDDATE=3;
    FNFIRSTMON=14;
    FNISOKOB=13;
    FNISOKSAL=12;
    FNMULTISCH=10;
    FNMULTISUB=11;
    FNMYPLANSNO=0;
    FNNAME=16;
    FNPARAM1=4;
    FNPICKPLANSNO=9;
    FNPICKSCH=7;
    FNPICKSUB=8;
    FNPLANNAME=15;
    FNSCHNAME=5;
    FNSUBNAME=6;
    FNTECDATE=1;
    tbBUHSCHET_4_MODIF_0=0;
    tbBUHSCHET_4_MODIF_1=65536;
    tbOBOROT_4_MODIF_0=1;
    tbOBOROT_4_MODIF_1=65537;
    tbOBOROT_4_MODIF_2=131073;
    tbOBOROT_4_MODIF_3=196609;
    tb4_MODIF_4=262145;
    tbPICKBUH_4_MODIF_0=3;
    tbSALDOALL=2;
    tbSALDOPLAN=65538;
    tbSALDOSCH=131074;
    tbSALDMOUN_4_MODIF_0=196610;
    tbSALDMOUN_4_MODIF_1=262146;
    tbSALDMOUN_4_MODIF_2=327682;
    tbSALDMOUN_4_MODIF_3=393218;
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
{$endif __MTtabledef__}
