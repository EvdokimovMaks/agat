{
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ               ‘ซฎข เ์ : GALDICT " ซ ชโจช  9.1"                       บ
 บ     โ  แฎงค ญจ๏ 28/04/16                                             บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : C_TREE::TREENODES "TREENODES" ออออออออออออออ}
type
  pTREENODES = ^tTREENODES;
  tTREENODES = record   { - TREENODES }
    CUPNODE        : Comp;            { CUPNODE                               }
    CNODE          : Comp;            { CNODE                                 }
    COTABLE        : Word;            { COTABLE                               }
    CREC           : Comp;            { CREC                                  }
  end;
const
  tiTREENODES01          = 0;  { CUPNODE(M) + COTABLE + CREC             }

const
  mtTREENODES = 'C_TREE::TREENODES';
{$endif __MTtabledef__}
