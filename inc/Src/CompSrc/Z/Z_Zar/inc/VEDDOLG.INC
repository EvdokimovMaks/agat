{$IFDEF __type__}
{様様様様様様� ��゛��� : VEDDOLG "VEDDOLG" 様様様様様様様}
type
  String60        = String[60];
  String80        = String[80];
  String40        = String[40];
  pVEDDOLG = ^tVEDDOLG;
  tVEDDOLG = record   { - VEDDOLG }
    CEX            : Comp;       { ��む�Гカキ┘                         }
    CHOICE         : Word;       { �┓ ���モ��-��罐�.瘍モ,���讚�膈覃...  }
    CPODR          : Comp;       { ��� �謌メ皰濶.��む�Г                 }
    FIELD1         : Comp;       { ���� 1                                }
    FIELD2         : LongInt;    { ���� 2                                }
    FIO            : String60;   { ���┼��, ���, �砒メ癶�                }
    KATPODR_NREC   : Comp;       { NREC                                  }
    KLVIDUD_VIDUD  : Word;       { ��� ※�� 磴ム���┤ sys                }
    LSCHET_TABN    : LongInt;    { ��．�讚覃 ���ム                       }
    MARKED         : Char;       { '+' - ���� ���ョキ�                   }
    NAME           : String80;   { ��━キ����┘ ��む�Гカキ��            }
    NVIDUD         : String40;   { ��━キ.    磴ム���┤                  }
    OSTAT          : Double;     { �痰�皰�                               }
    PERSONS_NREC   : Comp;       { NREC                                  }
    PRUDER         : Word;       { PRUDER                                }
    SHTRAF_TABN    : LongInt;    { ��．�讚覃 ���ム                       }
    SHTRAF_VIDUD   : Word;       { �┐ 磴ム�����                         }
    TPERSON        : Comp;       { ��� ��｀皚┴� ├ ��                   }
  end;
const
  tiBYFIO                = 0;  { NAME(nM Up) + FIO(Up)                   }
  tiBYTABN               = 1;  { NAME(nM Up) + SHTRAF_TABN               }

type
    prVEDDOLG = pVEDDOLG;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNFORMARKS=0;
    TNKATPODR=3;
    TNKLVIDUD=4;
    TNLSCHET=2;
    TNPERSONS=5;
    TNSHTRAF=1;
    TCSTANDARD=21;
    FNCEX=6;
    FNCHOICE=17;
    FNCPODR=5;
    FNFIELD1=14;
    FNFIELD2=15;
    FNFIO=3;
    FNKATPODR_NREC=10;
    FNKLVIDUD_VIDUD=12;
    FNLSCHET_TABN=1;
    FNMARKED=16;
    FNNAME=11;
    FNNVIDUD=13;
    FNOSTAT=8;
    FNPERSONS_NREC=4;
    FNPRUDER=0;
    FNSHTRAF_TABN=7;
    FNSHTRAF_VIDUD=9;
    FNTPERSON=2;
{$ENDIF}
