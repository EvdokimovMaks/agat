{
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �               �����瑕 : GALDICT "�����皋�� ERP 9.1"                   �
 �    ���� 甌Г���� 01/02/19                                             �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
}

{$ifdef __MTtabledef__}
{様様様様様様� ��゛��� : F_TXO::TXOAPIKAU "TXOAPIKAU" 様様様様様様様}
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
{様様様様様様� ��゛��� : F_TXO::TXOPROVKAU "TXOPROVKAU" 様様様様様様様}
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
{様様様様様様� ��゛��� : F_TXO::TXOROLLKAU "TXOROLLKAU" 様様様様様様様}
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
