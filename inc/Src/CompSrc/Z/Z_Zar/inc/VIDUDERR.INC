{$IFDEF __type__}
{������������� ������ : VIDUDERREESTR "VIDUDERREESTR" ��������������}
type
  String60        = String[60];
  pVIDUDERREESTR = ^tVIDUDERREESTR;
  tVIDUDERREESTR = record   { - VIDUDERREESTR }
    CHOICE         : Word;       { ��� ����⪨-��楢.���,���쭨��...  }
    CPODR          : Comp;       { ��� �������.���ࠧ�                 }
    FIELD1         : Comp;       { ���� 1                                }
    FIELD2         : LongInt;    { ���� 2                                }
    FIO            : String60;   { �������, ���, ����⢮                }
    LSCHET_CEX     : Comp;       { ���                                   }
    LSCHET_TABN    : LongInt;    { ������� �����                       }
    MARKED         : Char;       { '+' - ���� ����祭�                   }
    PRVIDUD        : Word;       { PRVIDUD                               }
    SUMUD          : Double;     { �㬬� 㤥ঠ���                       }
    UDER_CEX       : Comp;       { ��� ���. ���稭����                   }
    UDER_TABN      : LongInt;    { ������� �����                       }
    VIDUDS         : Word;       { ���⥬�� ��� 㤥ঠ���               }
  end;
const
  tiBYFIO                = 0;  { FIO(nM Up)                              }
  tiBYTABN               = 1;  { LSCHET_TABN(nM)                         }

type
    prVIDUDERREESTR = pVIDUDERREESTR;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNFORMARKS=4;
    TNKLVIDUD=2;
    TNLSCHET=1;
    TNPERSONS=3;
    TNUDER=0;
    TCSTANDARD=19;
    FNCHOICE=12;
    FNCPODR=4;
    FNFIELD1=9;
    FNFIELD2=10;
    FNFIO=3;
    FNLSCHET_CEX=1;
    FNLSCHET_TABN=2;
    FNMARKED=11;
    FNPRVIDUD=0;
    FNSUMUD=7;
    FNUDER_CEX=5;
    FNUDER_TABN=6;
    FNVIDUDS=8;
{$ENDIF}