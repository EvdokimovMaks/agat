{$IFDEF __type__}
{═════════════ Таблица : PDRZ "PDRZ" ══════════════}
type
  String20        = String[20];
  String255        = String[255];
  pPDRZ = ^tPDRZ;
  tPDRZ = record   { - PDRZ }
    PRPDRZ         : Comp;            { prPdrz                                }
    PRPODR         : Comp;            { prPodr                                }
    NREC           : Comp;            { Номер записи                          }
    KOD            : String20;        { код подразделения                     }
    NAME           : String;          { наименование подразделения            }
  end;
const
  tiSTANDARD             = 0;  { KOD(nM Up)                              }

type
    prPDRZ = pPDRZ;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNKATPODR=0;
    FNKOD=3;
    FNNAME=4;
    FNNREC=2;
    FNPRPDRZ=0;
    FNPRPODR=1;
{$ENDIF}
{$IFDEF __Type__}
type
   prPDRZPDRZ = pPDRZ;
{$endif}
