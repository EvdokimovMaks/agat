{$IFDEF __type__}
{様様様様様様� ��゛��� : KAST "KAST" 様様様様様様様}
type
  String255        = String[255];
  String20        = String[20];
  pKAST = ^tKAST;
  tKAST = record   { - KAST }
    PRCEX          : Comp;            { prCex                                 }
    PRCPODR        : Comp;            { PrCpODR                               }
    PRNAMP         : String;          { prNamP                                }
    PROT           : Boolean;         { PrOt                                  }
    NREC           : Comp;            { ���ム ����瓱                          }
    CPODR          : Comp;            { Nrec �謌メ�. ��む�Гカキ��            }
    NAME           : String;          { ��━キ����┘ ��む�Гカキ��            }
    KOD            : String20;        { ��� ��む�Гカキ��                     }
  end;
const
  tiSTANDARD             = 0;  { NAME(nM Up)                             }

type
    prKAST = pKAST;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNKATPODR=0;
    FNCPODR=5;
    FNKOD=7;
    FNNAME=6;
    FNNREC=4;
    FNPRCEX=0;
    FNPRCPODR=1;
    FNPRNAMP=2;
    FNPROT=3;
    tbPRCPODR=65536;
{$ENDIF}
{$IFDEF __Type__}
type
   prKASTKAST = pKAST;
   prGETPODRN = pKAST;
   pGETPODRN = pKAST;
{$endif}
