{$IFDEF __type__}
{様様様様様様� ��゛��� : GETVODPOS "GETVODPOS" 様様様様様様様}
type
  String255        = String[255];
  String40        = String[40];
  pGETVODPOS = ^tGETVODPOS;
  tGETVODPOS = record   { - GETVODPOS }
    PRVIDPOS       : Word;            { prVidPos                              }
    PRNPOS         : String;          { prNPos                                }
    VIDPOS         : Word;            { ��� ※�� ��甌；�                      }
    NPOS           : String40;        { ��━キ����┘ ��甌；�                  }
  end;

type
    prGETVODPOS = pGETVODPOS;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNKLVIDPOS=0;
    FNNPOS=3;
    FNPRNPOS=1;
    FNPRVIDPOS=0;
    FNVIDPOS=2;
{$ENDIF}
{$IFDEF __Type__}
type
   prGETVODPOSGETVODPOS = pGETVODPOS;
   prGETVIDPOS = pGETVODPOS;
   pGETVIDPOS = pGETVODPOS;
{$endif}
