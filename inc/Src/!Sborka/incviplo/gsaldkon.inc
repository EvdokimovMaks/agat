{$IFDEF __type__}
{様様様様様様� ��゛��� : GSALDKON "GSALDKON" 様様様様様様様}
type
  pGSALDKON = ^tGSALDKON;
  tGSALDKON = record   { - GSALDKON }
    C1             : Comp;            { c1                                    }
    D1             : Date;            { d1                                    }
    TIPBAL         : Word;            { TipBal                                }
  end;

type
    prGSALDKON = pGSALDKON;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNCURSVAL=1;
    TNKATORG=2;
    TNKLVAL=0;
    FNC1=0;
    FND1=1;
    FNTIPBAL=2;
    tb4_MODIF_0=2;
{$ENDIF}
{$IFDEF __Type__}
type
   prGSALDKONGSALDKON = pGSALDKON;
{$endif}
