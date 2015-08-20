{$IFDEF __type__}
{อออออออออออออ ’ กซจๆ  : SELGROUP_V "SELGROUP_V" ออออออออออออออ}
type
  String20        = String[20];
  String220        = String[220];
  pSELGROUP_V = ^tSELGROUP_V;
  tSELGROUP_V = record   { - SELGROUP_V }
    KODGR          : String20;        { kodgr                                 }
    KOD            : String20;        { ฎค ฃเใฏฏ๋                            }
    NAME           : String220;       {  จฌฅญฎข ญจฅ ฃเใฏฏ๋                   }
  end;
const
  tiSTANDARD             = 0;  { KOD(nM Up)                              }

type
    prSELGROUP_V = pSELGROUP_V;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNGROUPMC=0;
    FNKOD=1;
    FNKODGR=0;
    FNNAME=2;
{$ENDIF}
{$IFDEF __Type__}
type
   prSELGROUP_VSELGROUP_V = pSELGROUP_V;
{$endif}
