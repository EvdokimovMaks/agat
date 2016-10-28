{
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ               ‘ซฎข เ์ : GALDICT " ซ ชโจช  9.1"                       บ
 บ     โ  แฎงค ญจ๏ 19/09/16                                             บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : F_TXO::TXOAPIKAU "TXOAPIKAU" ออออออออออออออ}
type
  pTXOAPIKAU = ^tTXOAPIKAU;
  tTXOAPIKAU = record   { - TXOAPIKAU }
    PID            : LongInt;         { PID                                   }
    WKAU           : Word;            { WKAU                                  }
    FLKAU          : Word;            { FLKAU                                 }
    CKAU           : Comp;            { CKAU                                  }
  end;
const
  tiTXOAPIKAU01          = 0;  { PID(M)                                  }
  tiTXOAPIKAU02          = 1;  { PID(M) + FLKAU + WKAU                   }

const
  mtTXOAPIKAU = 'F_TXO::TXOAPIKAU';
{$endif __MTtabledef__}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : F_TXO::TXOPROVKAU "TXOPROVKAU" ออออออออออออออ}
type
  pTXOPROVKAU = ^tTXOPROVKAU;
  tTXOPROVKAU = record   { - TXOPROVKAU }
    PID            : LongInt;         { PID                                   }
    KIND           : Word;            { KIND                                  }
    LEVEL          : Word;            { LEVEL                                 }
    WKAU           : Word;            { WKAU                                  }
    CKAU           : Comp;            { CKAU                                  }
  end;
const
  tiTXOPROVKAU01         = 0;  { PID(M)                                  }
  tiTXOPROVKAU02         = 1;  { PID(M) + KIND + LEVEL                   }
  tiTXOPROVKAU03         = 2;  { PID(M) + KIND + WKAU                    }

const
  mtTXOPROVKAU = 'F_TXO::TXOPROVKAU';
{$endif __MTtabledef__}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : F_TXO::TXOROLLKAU "TXOROLLKAU" ออออออออออออออ}
type
  pTXOROLLKAU = ^tTXOROLLKAU;
  tTXOROLLKAU = record   { - TXOROLLKAU }
    PID            : LongInt;         { PID                                   }
    WKAU           : Word;            { WKAU                                  }
    FLKAU          : Word;            { FLKAU                                 }
    CKAU           : Comp;            { CKAU                                  }
    CROLLKAU       : Comp;            { CROLLKAU                              }
    LEVEL          : Word;            { LEVEL                                 }
    KIND           : Word;            { KIND                                  }
  end;
const
  tiTXOROLLKAU01         = 0;  { PID(M)                                  }
  tiTXOROLLKAU02         = 1;  { PID(M) + WKAU + FLKAU + LEVEL + KIND + CKAU }
  tiTXOROLLKAU03         = 2;  { PID(M) + WKAU + FLKAU + LEVEL + KIND + CROLLKAU }
  tiTXOROLLKAU04         = 3;  { PID(M) + WKAU + FLKAU + KIND + CROLLKAU }

const
  mtTXOROLLKAU = 'F_TXO::TXOROLLKAU';
{$endif __MTtabledef__}
