{$IFDEF __type__}
{様様様様様様� ��゛��� : MASTERALLIDENT "MASTERALLIDENT" 様様様様様様様}
type
  String255        = String[255];
  pMASTERALLIDENT = ^tMASTERALLIDENT;
  tMASTERALLIDENT = record   { - MASTERALLIDENT }
    WTABBED        : Word;            { wTabbed                               }
    MYTIDK         : Word;            { myTiDk                                }
    MYSYSOPER      : Word;            { mySysOper                             }
    MYHOZOPER      : Comp;            { myHozOper                             }
    MYPICKMODEPAT  : Word;            { myPickModePAT                         }
    MYPICKMODETYPICAL: Word;          { myPickModeTypical                     }
    MYIDENT        : String;          { myIdent                               }
  end;

type
    prMASTERALLIDENT = pMASTERALLIDENT;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    FNMYHOZOPER=3;
    FNMYIDENT=6;
    FNMYPICKMODEPAT=4;
    FNMYPICKMODETYPICAL=5;
    FNMYSYSOPER=2;
    FNMYTIDK=1;
    FNWTABBED=0;
{$ENDIF}
{$IFDEF __Type__}
type
   prMASTERALLIDENTMASTERALLIDENT = pMASTERALLIDENT;
{$endif}
