{$IFDEF __type__}
{═════════════ Таблица : GETKONDO "GETKONDO" ══════════════}
type
  String255        = String[255];
  pGETKONDO = ^tGETKONDO;
  tGETKONDO = record   { - GETKONDO }
    ALLORG         : Word;            { AllOrg                                }
    TPDO           : Word;            { TpDO                                  }
    WPARAM         : Word;            { wParam                                }
    MYSTOPPED      : Boolean;         { MyStopped                             }
    D1             : Date;            { d1                                    }
    D2             : Date;            { d2                                    }
    PICKED         : String;          { Выражение номер 0                     }
    BOISPICKED     : Boolean;         { Выражение номер 1                     }
    VIDD           : String;          { Выражение номер 2                     }
    VALDO          : String;          { Выражение номер 3                     }
  end;

type
    prGETKONDO = pGETKONDO;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNBASEDOC=0;
    TNBASEFIN=6;
    TNKATORG=1;
    TNKATSOPR=7;
    TNPICK=3;
    TNPICK6=4;
    TNSTEPDOC=5;
    TNTEMPDB=2;
    TCSETRUB=28;
    TCSETRUBANDRUBVAL=32;
    TCSETRUBANDVAL=31;
    TCSETRUBVAL=29;
    TCSETVAL=30;
    TCSETVALANDRUBVAL=33;
    FNALLORG=0;
    FNBOISPICKED=9;
    FND1=4;
    FND2=5;
    FNMYSTOPPED=3;
    FNPICKED=7;
    FNTPDO=1;
    FNVALDO=13;
    FNVIDD=11;
    FNWPARAM=2;
    tbBASEDOC_4_MODIF_0=65536;
    tbPICK_4_MODIF_0=65539;
    tb4_MODIF_1=131075;
    tbPICK6_4_MODIF_0=4;
{$ENDIF}
{$IFDEF __Type__}
type
   prGETKONDOGETKONDO = pGETKONDO;
{$endif}
