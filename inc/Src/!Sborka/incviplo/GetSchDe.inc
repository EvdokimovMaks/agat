{$IFDEF __type__}
{様様様様様様� ��゛��� : VGETSCHDEF "VGETSCHDEF" 様様様様様様様}
type
  String21        = String[21];
  String42        = String[42];
  pVGETSCHDEF = ^tVGETSCHDEF;
  tVGETSCHDEF = record   { - VGETSCHDEF }
    MYPLANSNO      : Comp;            { myPlansNo                             }
    MYSETDEF       : Word;            { mySetDef                              }
    MYSCHET        : String21;        { mySchet                               }
    MYSUBSCH       : String21;        { mySubSch                              }
    CODE           : String42;        { ����覃 ��� 瘍モ�/痺＝腑��             }
  end;
const
  tiSTANDARD             = 0;  { CODE(nM Up)                             }

type
    prVGETSCHDEF = pVGETSCHDEF;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNBUHSCHET=0;
    FNCODE=5;
    FNMYPLANSNO=0;
    FNMYSCHET=2;
    FNMYSETDEF=1;
    FNMYSUBSCH=3;
    tbBYSETDEF=65536;
    tb4_MODIF_0=131072;
{$ENDIF}
{$IFDEF __Type__}
type
   prVGETSCHDEFVGETSCHDEF = pVGETSCHDEF;
   prGETSCHDEF = pVGETSCHDEF;
   pGETSCHDEF = pVGETSCHDEF;
{$endif}
