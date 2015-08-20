{$IFDEF __type__}
{อออออออออออออ ’ กซจๆ  : GETVOZRGR "GETVOZRGR" ออออออออออออออ}
type
  String30        = String[30];
  pGETVOZRGR = ^tGETVOZRGR;
  tGETVOZRGR = record   { - GETVOZRGR }
    PRYEAR         : Word;            { prYear                                }
    PRMONTH        : Word;            { prMonth                               }
    NAMEVOZ        : String30;        { NAMEVOZ                               }
    YEARINT        : Word;            { YEARINT                               }
    MONTHINT       : Word;            { MONTHINT                              }
  end;

type
    prGETVOZRGR = pGETVOZRGR;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNCHILDVOZ=0;
    FNMONTHINT=4;
    FNNAMEVOZ=2;
    FNPRMONTH=1;
    FNPRYEAR=0;
    FNYEARINT=3;
{$ENDIF}
{$IFDEF __Type__}
type
   prGETVOZRGRGETVOZRGR = pGETVOZRGR;
{$endif}
