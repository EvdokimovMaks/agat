{$IFDEF __type__}
{様様様様様様� ��゛��� : FAMI "FAMI" 様様様様様様様}
type
  String20        = String[20];
  String255        = String[255];
  String60        = String[60];
  pFAMI = ^tFAMI;
  tFAMI = record   { - FAMI }
    PRCEX          : Comp;            { prCex                                 }
    PRTABN         : LongInt;         { prTabn                                }
    P2             : Double;          { p2                                    }
    TABN           : LongInt;         { ��．�讚覃 ���ム                       }
    STRTABN        : String20;        { 痰牀��〓� Л�腑�┘ ��．�讚��� ���ム�  }
    NAME           : String;          { ��━キ����┘ ��む�Гカキ��            }
    FIO            : String60;        { ���┼��, ���, �砒メ癶�                }
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
