{$IFDEF __type__}
{═════════════ Таблица : VBUHGMODE "VBUHGMODE" ══════════════}
type
  String21        = String[21];
  String255        = String[255];
  String150        = String[150];
  pVBUHGMODE = ^tVBUHGMODE;
  tVBUHGMODE = record   { - VBUHGMODE }
    WINITMODE      : Word;            { wInitMode                             }
    MYPLANSNO      : Comp;            { myPlansNo                             }
    WPARAM1        : Word;            { wParam1                               }
    WPARAM2        : Word;            { wParam2                               }
    SGETSCH        : String21;        { sGetSch                               }
    SGETSUB        : String21;        { sGetSub                               }
    WKAU           : Word;            { wKau                                  }
    CKAU           : Comp;            { cKau                                  }
    BEGDATE        : Date;            { BegDate                               }
    ENDDATE        : Date;            { EndDate                               }
    ISCHECKMON     : Boolean;         { isCheckMon                            }
    NFLTKAU        : String;          { NFLTKAU                               }
    SETSCHET       : String;          { SETSCHET                              }
    BUHSCHET_NAME  : String150;       { Наименование счета/субсчета           }
    BUHSCHETSUB_NAME: String150;      { Наименование счета/субсчета           }
  end;

type
    prVBUHGMODE = pVBUHGMODE;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNBUHSCHET=0;
    TNBUHSCHETSUB=1;
    FNBEGDATE=8;
    FNBUHSCHETSUB_NAME=14;
    FNBUHSCHET_NAME=13;
    FNCKAU=7;
    FNENDDATE=9;
    FNISCHECKMON=10;
    FNMYPLANSNO=1;
    FNNFLTKAU=11;
    FNSETSCHET=12;
    FNSGETSCH=4;
    FNSGETSUB=5;
    FNWINITMODE=0;
    FNWKAU=6;
    FNWPARAM1=2;
    FNWPARAM2=3;
{$ENDIF}
{$IFDEF __Type__}
type
   prVBUHGMODEVBUHGMODE = pVBUHGMODE;
   prBUHGMODE = pVBUHGMODE;
   pBUHGMODE = pVBUHGMODE;
{$endif}
