{
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ               ‘ซฎข เ์ : GALDICT " ซ ชโจช  ERP 9.1"                   บ
 บ     โ  แฎงค ญจ๏ 01/02/19                                             บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : C_TREE::TREEHIERS "TREEHIERS" ออออออออออออออ}
type
  pTREEHIERS = ^tTREEHIERS;
  tTREEHIERS = record   { - TREEHIERS }
    COTABLE        : Word;            { COTABLE                               }
    CREC           : Comp;            { CREC                                  }
    NPP            : Word;            { NPP                                   }
    HIERLEVEL      : Word;            { HIERLEVEL                             }
    CGROUP         : Comp;            { CGROUP                                }
    NAME           : String;          { NAME                                  }
    SORT           : String;          { SORT                                  }
    PARAM          : Word;            { PARAM                                 }
  end;
const
  tiTREEHIERS01          = 0;  { COTABLE(M) + CREC + NPP + HIERLEVEL     }

const
  mtTREEHIERS = 'C_TREE::TREEHIERS';
{$endif __MTtabledef__}
