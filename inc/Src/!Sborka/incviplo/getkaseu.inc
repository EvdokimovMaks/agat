{$IFDEF __type__}
{様様様様様様� ��゛��� : KAST "KAST" 様様様様様様様}
type
  String255        = String[255];
  String20        = String[20];
  pKAST = ^tKAST;
  tKAST = record   { - KAST }
    PRCEX          : Comp;            { prCex                                 }
    PRNAMP         : String;          { prNamP                                }
    NREC           : Comp;            { ���ム ����瓱                          }
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
    FNKOD=4;
    FNNAME=3;
    FNNREC=2;
    FNPRCEX=0;
    FNPRNAMP=1;
    tbPRCPODR=0;
{$ENDIF}
{$IFDEF __Type__}
type
   prKASTKAST = pKAST;
   prGETKASEUG = pKAST;
   pGETKASEUG = pKAST;
{$endif}
