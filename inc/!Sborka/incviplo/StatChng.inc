{$IFDEF __type__}
{อออออออออออออ ’ กซจๆ  : STATUSCHANGER "STATUSCHANGER" ออออออออออออออ}
type
  String255        = String[255];
  pSTATUSCHANGER = ^tSTATUSCHANGER;
  tSTATUSCHANGER = record   { - STATUSCHANGER }
    _VIDDOC        : Word;            { _vidDoc                               }
    _CDOC          : Comp;            { _cDoc                                 }
    _OLDSTAT       : Word;            { _OldStat                              }
    _COLDNOTE      : Comp;            { _cOldNote                             }
    _NEWSTAT       : Word;            { _NewStat                              }
    _CNOTE         : Comp;            { _cNote                                }
    _COMMENT       : String;          { _Comment                              }
  end;

type
    prSTATUSCHANGER = pSTATUSCHANGER;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    FN_CDOC=1;
    FN_CNOTE=5;
    FN_COLDNOTE=3;
    FN_COMMENT=6;
    FN_NEWSTAT=4;
    FN_OLDSTAT=2;
    FN_VIDDOC=0;
{$ENDIF}
{$IFDEF __Type__}
type
   prSTATUSCHANGERSTATUSCHANGER = pSTATUSCHANGER;
{$endif}
