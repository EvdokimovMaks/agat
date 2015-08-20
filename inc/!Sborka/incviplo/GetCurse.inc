{$IFDEF __type__}
{อออออออออออออ ’ กซจๆ  : GETCURSE "GETCURSE" ออออออออออออออ}
type
  pGETCURSE = ^tGETCURSE;
  tGETCURSE = record   { - GETCURSE }
    DATV           : Date;            { DatV                                  }
    CODEV          : Comp;            { CodeV                                 }
    CUR            : Double;          { Cur                                   }
  end;

type
    prGETCURSE = pGETCURSE;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    FNCODEV=1;
    FNCUR=2;
    FNDATV=0;
{$ENDIF}
{$IFDEF __Type__}
type
   prGETCURSEGETCURSE = pGETCURSE;
{$endif}
