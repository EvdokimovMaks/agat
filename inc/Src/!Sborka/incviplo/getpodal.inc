{$IFDEF __type__}
{様様様様様様� ��゛��� : GETPODALN "GETPODALN" 様様様様様様様}
type
  pGETPODALN = ^tGETPODALN;
  tGETPODALN = record   { - GETPODALN }
    PRCHANGE       : Comp;            { PrChange                              }
    PRCEX          : Comp;            { PrCex                                 }
    P1             : Double;          { P1                                    }
  end;

type
    prGETPODALN = pGETPODALN;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    FNP1=2;
    FNPRCEX=1;
    FNPRCHANGE=0;
{$ENDIF}
{$IFDEF __Type__}
type
   prGETPODALNGETPODALN = pGETPODALN;
{$endif}
