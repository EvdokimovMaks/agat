{$IFDEF __type__}
{様様様様様様� ��゛��� : VIDUDERREESTR "VIDUDERREESTR" 様様様様様様様}
type
  String60        = String[60];
  pVIDUDERREESTR = ^tVIDUDERREESTR;
  tVIDUDERREESTR = record   { - VIDUDERREESTR }
    CHOICE         : Word;       { �┓ ���モ��-��罐�.瘍モ,���讚�膈覃...  }
    CPODR          : Comp;       { ��� �謌メ皰濶.��む�Г                 }
    FIELD1         : Comp;       { ���� 1                                }
    FIELD2         : LongInt;    { ���� 2                                }
    FIO            : String60;   { ���┼��, ���, �砒メ癶�                }
    LSCHET_CEX     : Comp;       { �ュ                                   }
    LSCHET_TABN    : LongInt;    { ��．�讚覃 ���ム                       }
    MARKED         : Char;       { '+' - ���� ���ョキ�                   }
    PRVIDUD        : Word;       { PRVIDUD                               }
    SUMUD          : Double;     { �祠�� 磴ム�����                       }
    UDER_CEX       : Comp;       { �ュ �が. ��ょ┃キ��                   }
    UDER_TABN      : LongInt;    { ��．�讚覃 ���ム                       }
    VIDUDS         : Word;       { ��痰ガ�覃 �┐ 磴ム�����               }
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
