{$IFDEF __type__}
{������������� ������ : PDRZ "PDRZ" ��������������}
type
  String20        = String[20];
  String150        = String[150];
  pPDRZ = ^tPDRZ;
  tPDRZ = record   { - PDRZ }
    PRPDRZ         : Comp;            { prPdrz                                }
    PRPODR         : Comp;            { prPodr                                }
    NREC           : Comp;            { ����� �����                          }
    KOD            : String20;        { ��� ���ࠧ�������                     }
    NAME           : String150;       { ������������ ���ࠧ�������            }
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