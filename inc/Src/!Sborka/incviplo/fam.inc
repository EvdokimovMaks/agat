{$IFDEF __type__}
{������������� ������ : FAMI "FAMI" ��������������}
type
  String20        = String[20];
  String150        = String[150];
  String60        = String[60];
  pFAMI = ^tFAMI;
  tFAMI = record   { - FAMI }
    PRCEX          : Comp;            { prCex                                 }
    PRTABN         : LongInt;         { prTabn                                }
    P2             : Double;          { p2                                    }
    TABN           : LongInt;         { ������� �����                       }
    STRTABN        : String20;        { ��ப���� ���祭�� ⠡��쭮�� �����  }
    NAME           : String150;       { ������������ ���ࠧ�������            }
    FIO            : String60;        { �������, ���, ����⢮                }
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