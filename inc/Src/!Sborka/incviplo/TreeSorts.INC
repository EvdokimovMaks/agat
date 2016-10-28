{
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ               ‘ซฎข เ์ : GALDICT " ซ ชโจช  9.1"                       บ
 บ     โ  แฎงค ญจ๏ 28/04/16                                             บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : C_TREE::TREESORTS "TREESORTS" ออออออออออออออ}
type
  pTREESORTS = ^tTREESORTS;
  tTREESORTS = record   { - TREESORTS }
    RECNO          : LongInt;         { RECNO                                 }
    SORTNAME       : String;          { SORTNAME                              }
    NPP            : LongInt;         { NPP                                   }
  end;
const
  tiTREESORTS01          = 0;  { RECNO(Un M A)                           }
  tiTREESORTS02          = 1;  { SORTNAME(M Up)                          }

const
  mtTREESORTS = 'C_TREE::TREESORTS';
{$endif __MTtabledef__}
