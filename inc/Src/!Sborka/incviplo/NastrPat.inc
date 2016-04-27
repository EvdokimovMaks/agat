{$IFDEF __type__}
{═════════════ Таблица : NASTRPARAMPAT "NASTRPARAMPAT" ══════════════}
type
  String3        = String[3];
  String1        = String[1];
  String255        = String[255];
  String30        = String[30];
  pNASTRPARAMPAT = ^tNASTRPARAMPAT;
  tNASTRPARAMPAT = record   { - NASTRPARAMPAT }
    ECSEPT         : Word;            { Ecsept                                }
    ZEROES         : Word;            { Zeroes                                }
    ZEROSYMB       : String3;         { ZeroSymb                              }
    COMMA3DIG      : String1;         { Comma3dig                             }
    MASCHTAB       : LongInt;         { Maschtab                              }
    OKRUGL         : Byte;            { Okrugl                                }
    SETUPAUTOPERIOD: Byte;            { SetupAutoPeriod                       }
    AUTOBEGINDATE  : Date;            { AutoBeginDate                         }
    AUTOENDDATE    : Date;            { AutoEndDate                           }
    AUTOBASEDATE   : Date;            { AutoBaseDate                          }
    NEGATIVEINBRACKETS: Word;         { NegativeInBrackets                    }
    COUNTINMONEY   : Byte;            { CountInMoney                          }
    CURRENTPAGE    : String;          { CurrentPage                           }
    NAMEVALUT      : String;          { NAMEVALUT                             }
    NREC           : Comp;            { Номер записи                          }
    DOLLAR         : String30;        { Наименование одной единицы            }
  end;

type
    prNASTRPARAMPAT = pNASTRPARAMPAT;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNKLVAL=0;
    FNAUTOBASEDATE=9;
    FNAUTOBEGINDATE=7;
    FNAUTOENDDATE=8;
    FNCOMMA3DIG=3;
    FNCOUNTINMONEY=11;
    FNCURRENTPAGE=12;
    FNDOLLAR=13;
    FNECSEPT=0;
    FNMASCHTAB=4;
    FNNAMEVALUT=14;
    FNNEGATIVEINBRACKETS=10;
    FNNREC=15;
    FNOKRUGL=5;
    FNSETUPAUTOPERIOD=6;
    FNZEROES=1;
    FNZEROSYMB=2;
{$ENDIF}
{$IFDEF __Type__}
type
   prNASTRPARAMPATNASTRPARAMPAT = pNASTRPARAMPAT;
{$endif}
