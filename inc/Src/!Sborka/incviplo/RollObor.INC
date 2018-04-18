{
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ               ‘ซฎข เ์ : GALDICT " ซ ชโจช  ERP 9.1"                   บ
 บ     โ  แฎงค ญจ๏ 28/02/18                                             บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : F_DIFFRATE::ROLLOBOR "ROLLOBOR" ออออออออออออออ}
type
  pROLLOBOR = ^tROLLOBOR;
  tROLLOBOR = record   { - ROLLOBOR }
    TIDK           : Word;            { TIDK                                  }
    TIDKGAL        : Word;            { TIDKGAL                               }
    OBNREC         : Comp;            { OBNREC                                }
    CPLANSSCH      : Comp;            { CPLANSSCH                             }
    DESCR          : String[20];      { DESCR                                 }
    DESGR          : String[4];       { DESGR                                 }
    SCHETO         : String[21];      { SCHETO                                }
    SUBOSSCH       : String[21];      { SUBOSSCH                              }
    TBLOS          : array [1..6] of Word;{ TBLOS                             }
    KAUOS          : array [1..6] of Comp;{ KAUOS                             }
    KODSPO         : Comp;            { KODSPO                                }
    SCHETK         : String[21];      { SCHETK                                }
    SUBSCHK        : String[21];      { SUBSCHK                               }
    TBLKS          : array [1..6] of Word;{ TBLKS                             }
    KAUKS          : array [1..6] of Comp;{ KAUKS                             }
    KODSPK         : Comp;            { KODSPK                                }
    DATOB          : Date;            { DATOB                                 }
    VIDOB          : Word;            { VIDOB                                 }
    ROLLTYPE       : Word;            { ROLLTYPE                              }
    SUMOB          : Double;          { SUMOB                                 }
    SUMVALUT       : Double;          { SUMVALUT                              }
    KODVALUT       : Comp;            { KODVALUT                              }
    KOL            : Double;          { KOL                                   }
    CED            : Comp;            { CED                                   }
    VHPROP         : String[1];       { VHPROP                                }
    RUCHAUTO       : Word;            { RUCHAUTO                              }
    CFILKOR        : Comp;            { CFILKOR                               }
    CONVOB         : Word;            { CONVOB                                }
    CONVVAL        : Comp;            { CONVVAL                               }
    CONVSUM        : Double;          { CONVSUM                               }
  end;
const
  tiROLLOBOR01           = 0;  { SCHETO(M Up) + SUBOSSCH(Up) + KODSPO + KAUOS[1] +  }
                               { KAUOS[2] + KAUOS[3] + KAUOS[4] + KAUOS[5] +  }
                               { KAUOS[6] + SCHETK(Up) + SUBSCHK(Up) + KODSPK +  }
                               { KAUKS[1] + KAUKS[2] + KAUKS[3] + KAUKS[4] +  }
                               { KAUKS[5] + KAUKS[6] + KODVALUT + CED + DESGR(Up) +  }
                               { DESCR(Up)                               }

const
  mtROLLOBOR = 'F_DIFFRATE::ROLLOBOR';
{$endif __MTtabledef__}
