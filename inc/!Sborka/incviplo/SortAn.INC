{
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ               ‘ซฎข เ์ : GALDICT " ซ ชโจช  9.1"                       บ
 บ     โ  แฎงค ญจ๏ 04/01/16                                             บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : F_BUHREP::SORTAN "SORTAN" ออออออออออออออ}
type
  pSORTAN = ^tSORTAN;
  tSORTAN = record   { - SORTAN }
    NPP            : LongInt;         { NPP                                   }
    WKAU           : Word;            { WKAU                                  }
    CKAU           : Comp;            { CKAU                                  }
    SKAU           : String;          { SKAU                                  }
  end;
const
  tiSORTAN01             = 0;  { WKAU(M) + CKAU                          }
  tiSORTAN02             = 1;  { SKAU(M Up) + WKAU + CKAU                }

const
  mtSORTAN = 'F_BUHREP::SORTAN';
{$endif __MTtabledef__}
