{
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ               ‘ซฎข เ์ : GALDICT " ซ ชโจช  9.1"                       บ
 บ     โ  แฎงค ญจ๏ 26/06/17                                             บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : F_BUHREP::MEMSALDO "MEMSALDO" ออออออออออออออ}
type
  pMEMSALDO = ^tMEMSALDO;
  tMEMSALDO = record   { - MEMSALDO }
    NREC           : Comp;            { NREC                                  }
    FILIALNO       : LongInt;         { FILIALNO                              }
    DATESAL        : Date;            { DATESAL                               }
    SCHETO         : String[21];      { SCHETO                                }
    SUBOSSCH       : String[21];      { SUBOSSCH                              }
    TBLOS          : array [1..6] of Word;{ TBLOS                             }
    KAUOS          : array [1..6] of Comp;{ KAUOS                             }
    KODSPO         : Comp;            { KODSPO                                }
    CFILKOR        : Comp;            { CFILKOR                               }
    SALDOD         : Double;          { SALDOD                                }
    SALDOVALD      : Double;          { SALDOVALD                             }
    SALDODBV       : Double;          { SALDODBV                              }
    SALDOKOLD      : Double;          { SALDOKOLD                             }
    SALDOK         : Double;          { SALDOK                                }
    SALDOVALK      : Double;          { SALDOVALK                             }
    SALDOKBV       : Double;          { SALDOKBV                              }
    SALDOKOLK      : Double;          { SALDOKOLK                             }
    KODVALUT       : Comp;            { KODVALUT                              }
    EDIZM          : Comp;            { EDIZM                                 }
  end;
const
  tiMEMSALDO01           = 0;  { SCHETO(M Up) + SUBOSSCH(Up) + KODSPO + KAUOS[1] +  }
                               { KAUOS[2] + KAUOS[3] + KAUOS[4] + KAUOS[5] +  }
                               { KAUOS[6] + FILIALNO                     }
  tiMEMSALDO02           = 1;  { KODVALUT(M) + SCHETO(Up) + SUBOSSCH(Up) +  }
                               { KODSPO + KAUOS[1] + KAUOS[2] + KAUOS[3] +  }
                               { KAUOS[4] + KAUOS[5] + KAUOS[6] + FILIALNO }

const
  mtMEMSALDO = 'F_BUHREP::MEMSALDO';
{$endif __MTtabledef__}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : F_BUHREP::REPSALDO "REPSALDO" ออออออออออออออ}
type
  pREPSALDO = ^tREPSALDO;
  tREPSALDO = record   { - REPSALDO }
    FILIALNO       : LongInt;         { FILIALNO                              }
    DATESAL        : Date;            { DATESAL                               }
    CFILKOR        : Comp;            { CFILKOR                               }
    SCHETO         : String[21];      { SCHETO                                }
    SUBOSSCH       : String[21];      { SUBOSSCH                              }
    TBLOS          : array [1..6] of Word;{ TBLOS                             }
    KAUOS          : array [1..6] of Comp;{ KAUOS                             }
    KODSPO         : Comp;            { KODSPO                                }
    CDAS           : Comp;            { CDAS                                  }
    OKAUOS         : array [1..6] of LongInt;{ OKAUOS                         }
    OPODRO         : LongInt;         { OPODRO                                }
    ODAS           : LongInt;         { ODAS                                  }
    SALDOD         : Double;          { SALDOD                                }
    SALDOVALD      : Double;          { SALDOVALD                             }
    SALDODBV       : Double;          { SALDODBV                              }
    SALDOKOLD      : Double;          { SALDOKOLD                             }
    SALDOK         : Double;          { SALDOK                                }
    SALDOVALK      : Double;          { SALDOVALK                             }
    SALDOKBV       : Double;          { SALDOKBV                              }
    SALDOKOLK      : Double;          { SALDOKOLK                             }
    KODVALUT       : Comp;            { KODVALUT                              }
  end;
const
  tiREPSALDO01           = 0;  { SCHETO(M Up) + SUBOSSCH(Up) + OPODRO + OKAUOS[1] +  }
                               { OKAUOS[2] + OKAUOS[3] + OKAUOS[4] + OKAUOS[5] +  }
                               { OKAUOS[6] + FILIALNO                    }
  tiREPSALDODAS          = 1;  { ODAS(M) + OKAUOS[1] + OKAUOS[2] + OKAUOS[3] +  }
                               { OKAUOS[4] + OKAUOS[5] + OKAUOS[6] + SCHETO(Up) +  }
                               { SUBOSSCH(Up) + OPODRO                   }
  tiREPSALDO02           = 2;  { SCHETO(M Up) + KODSPO                   }
  tiREPSALDO03           = 3;  { SCHETO(M Up) + KAUOS[1]                 }
  tiREPSALDO04           = 4;  { SCHETO(M Up) + KAUOS[2]                 }
  tiREPSALDO05           = 5;  { SCHETO(M Up) + KAUOS[3]                 }
  tiREPSALDO07           = 6;  { SCHETO(M Up) + KAUOS[4]                 }
  tiREPSALDO08           = 7;  { SCHETO(M Up) + KAUOS[5]                 }
  tiREPSALDO09           = 8;  { SCHETO(M Up) + KAUOS[6]                 }
  tiREPSALDO10           = 9;  { SCHETO(M Up) + SUBOSSCH(Up) + KODSPO    }
  tiREPSALDO11           = 10; { CDAS(M)                                 }

const
  mtREPSALDO = 'F_BUHREP::REPSALDO';
{$endif __MTtabledef__}
