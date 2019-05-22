{$IFDEF __type__}
{═════════════ Таблица : FAMI "FAMI" ══════════════}
type
  String20        = String[20];
  String150        = String[150];
  String60        = String[60];
  pFAMI = ^tFAMI;
  tFAMI = record   { - FAMI }
    PRCEX          : Comp;            { prCex                                 }
    PRTABN         : LongInt;         { prTabn                                }
    P2             : Double;          { p2                                    }
    TABN           : LongInt;         { Табельный номер                       }
    STRTABN        : String20;        { строковое значение табельного номера  }
    NAME           : String150;       { наименование подразделения            }
    FIO            : String60;        { Фамилия, Имя, Отчество                }
  end;
const
  tiSTANDARD             = 0;  { TABN(nM) + STRTABN(Up)                  }

type
    prFAMI = pFAMI;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNKATPODR=1;
    TNLSCHET=0;
    TNPERSONS=2;
    FNFIO=6;
    FNNAME=5;
    FNP2=2;
    FNPRCEX=0;
    FNPRTABN=1;
    FNSTRTABN=4;
    FNTABN=3;
{$ENDIF}
{$IFDEF __Type__}
type
   prFAMIFAMI = pFAMI;
   prFAM = pFAMI;
   pFAM = pFAMI;
{$endif}
