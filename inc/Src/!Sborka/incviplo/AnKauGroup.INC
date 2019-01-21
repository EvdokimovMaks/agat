{
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ               ‘ซฎข เ์ : GALDICT " ซ ชโจช  ERP 9.1"                   บ
 บ     โ  แฎงค ญจ๏ 11/12/18                                             บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : F_BUHREP::ANKAUGROUP "ANKAUGROUP" ออออออออออออออ}
type
  pANKAUGROUP = ^tANKAUGROUP;
  tANKAUGROUP = record   { - ANKAUGROUP }
    NREC           : Comp;            { NREC                                  }
    FILIALNO       : LongInt;         { FILIALNO                              }
    TIPDATA        : Word;            { TIPDATA                               }
    LASTDATE       : Date;            { LASTDATE                              }
    FIRSTDAY       : Date;            { FIRSTDAY                              }
    DATOB          : Date;            { DATOB                                 }
    NODOK          : String[20];      { NODOK                                 }
    SCHETO         : String[21];      { SCHETO                                }
    SUBOSSCH       : String[21];      { SUBOSSCH                              }
    CDAS           : array [1..6] of Comp;{ CDAS                              }
    WDAS           : array [1..6] of Word;{ WDAS                              }
    ODAS           : LongInt;         { ODAS                                  }
    TBLOS          : array [1..6] of Word;{ TBLOS                             }
    KODOS          : array [1..6] of Comp;{ KODOS                             }
    OKAUOS         : array [1..6] of LongInt;{ OKAUOS                         }
    KODSPO         : Comp;            { KODSPO                                }
    SPONAME        : String[50];      { SPONAME                               }
    SCHETK         : String[21];      { SCHETK                                }
    SUBSCHK        : String[21];      { SUBSCHK                               }
    TBLKS          : array [1..6] of Word;{ TBLKS                             }
    KODKS          : array [1..6] of Comp;{ KODKS                             }
    KODSPK         : Comp;            { KODSPK                                }
    SPKNAME        : String[50];      { SPKNAME                               }
    OKAUKS_1       : LongInt;         { OKAUKS_1                              }
    OBNREC         : Comp;            { OBNREC                                }
    KODVALUT       : Comp;            { KODVALUT                              }
    CVALMAIN       : Comp;            { CVALMAIN                              }
    CVALKAU        : Comp;            { CVALKAU                               }
    SODPR          : String[80];      { SODPR                                 }
    PLATPOL        : String[150];     { PLATPOL                               }
    NAMEOPER       : String[200];     { NAMEOPER                              }
    SALDOVHD       : Double;          { SALDOVHD                              }
    SALDOVHDV      : Double;          { SALDOVHDV                             }
    SALDOVHDBV     : Double;          { SALDOVHDBV                            }
    SALDOVHK       : Double;          { SALDOVHK                              }
    SALDOVHKV      : Double;          { SALDOVHKV                             }
    SALDOVHKBV     : Double;          { SALDOVHKBV                            }
    OBORDEB        : Double;          { OBORDEB                               }
    OBORDEBV       : Double;          { OBORDEBV                              }
    OBORDEBBV      : Double;          { OBORDEBBV                             }
    OBORKRED       : Double;          { OBORKRED                              }
    OBORKREDV      : Double;          { OBORKREDV                             }
    OBORKREDBV     : Double;          { OBORKREDBV                            }
    FORSORT        : String[30];      { FORSORT                               }
    DATEDOC        : Date;            { DATEDOC                               }
  end;
const
  tiANKAUGROUP01         = 0;  { ODAS(M) + OKAUOS[1] + OKAUOS[2] + OKAUOS[3] +  }
                               { OKAUOS[4] + OKAUOS[5] + OKAUOS[6] + SCHETO(Up) +  }
                               { SUBOSSCH(Up) + KODSPO + FILIALNO + DATOB +  }
                               { FORSORT(Up) + KODSPK + OKAUKS_1         }
  tiANKAUGROUP02         = 1;  { OKAUOS[2](M)                            }
  tiANKAUGROUP03         = 2;  { OKAUOS[3](M)                            }
  tiANKAUGROUP04         = 3;  { SCHETO(M Up) + SUBOSSCH(Up)             }
  tiANKAUGROUP05         = 4;  { SCHETO(M Up) + KODSPO                   }
  tiANKAUGROUP06         = 5;  { OKAUOS[4](M)                            }
  tiANKAUGROUP07         = 6;  { OKAUOS[5](M)                            }
  tiANKAUGROUP08         = 7;  { OKAUOS[6](M)                            }
  tiANKAUGROUP09         = 8;  { ODAS(M) + OKAUOS[1] + OKAUOS[2] + OKAUOS[3] +  }
                               { OKAUOS[4] + OKAUOS[5] + OKAUOS[6] + SCHETO(Up) +  }
                               { SUBOSSCH(Up) + KODSPO + FILIALNO + FORSORT(Up) +  }
                               { KODSPK + OKAUKS_1 + DATOB               }
  tiANKAUGROUP10         = 9;  { ODAS(M) + OKAUOS[1] + OKAUOS[2] + OKAUOS[3] +  }
                               { OKAUOS[4] + OKAUOS[5] + OKAUOS[6] + SCHETO(Up) +  }
                               { SUBOSSCH(Up) + KODSPO + FILIALNO + DATOB +  }
                               { NODOK(Up) + FORSORT(Up) + KODSPK + OKAUKS_1 }
  tiANKAUGROUP99         = 10; { NREC(M)                                 }

const
  mtANKAUGROUP = 'F_BUHREP::ANKAUGROUP';
{$endif __MTtabledef__}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : F_BUHREP::ANKAUGROUPTMP "ANKAUGROUPTMP" ออออออออออออออ}
type
  pANKAUGROUPTMP = ^tANKAUGROUPTMP;
  tANKAUGROUPTMP = record   { - ANKAUGROUPTMP }
    NREC           : Comp;            { NREC                                  }
    FILIALNO       : LongInt;         { FILIALNO                              }
    TIPDATA        : Word;            { TIPDATA                               }
    LASTDATE       : Date;            { LASTDATE                              }
    FIRSTDAY       : Date;            { FIRSTDAY                              }
    DATOB          : Date;            { DATOB                                 }
    NODOK          : String[20];      { NODOK                                 }
    SCHETO         : String[21];      { SCHETO                                }
    SUBOSSCH       : String[21];      { SUBOSSCH                              }
    CDAS           : array [1..6] of Comp;{ CDAS                              }
    WDAS           : array [1..6] of Word;{ WDAS                              }
    ODAS           : LongInt;         { ODAS                                  }
    TBLOS          : array [1..6] of Word;{ TBLOS                             }
    KODOS          : array [1..6] of Comp;{ KODOS                             }
    OKAUOS         : array [1..6] of LongInt;{ OKAUOS                         }
    KODSPO         : Comp;            { KODSPO                                }
    SPONAME        : String[50];      { SPONAME                               }
    SCHETK         : String[21];      { SCHETK                                }
    SUBSCHK        : String[21];      { SUBSCHK                               }
    TBLKS          : array [1..6] of Word;{ TBLKS                             }
    KODKS          : array [1..6] of Comp;{ KODKS                             }
    KODSPK         : Comp;            { KODSPK                                }
    SPKNAME        : String[50];      { SPKNAME                               }
    OKAUKS_1       : LongInt;         { OKAUKS_1                              }
    OBNREC         : Comp;            { OBNREC                                }
    KODVALUT       : Comp;            { KODVALUT                              }
    CVALMAIN       : Comp;            { CVALMAIN                              }
    CVALKAU        : Comp;            { CVALKAU                               }
    SODPR          : String[80];      { SODPR                                 }
    PLATPOL        : String[150];     { PLATPOL                               }
    NAMEOPER       : String[200];     { NAMEOPER                              }
    SALDOVHD       : Double;          { SALDOVHD                              }
    SALDOVHDV      : Double;          { SALDOVHDV                             }
    SALDOVHDBV     : Double;          { SALDOVHDBV                            }
    SALDOVHK       : Double;          { SALDOVHK                              }
    SALDOVHKV      : Double;          { SALDOVHKV                             }
    SALDOVHKBV     : Double;          { SALDOVHKBV                            }
    OBORDEB        : Double;          { OBORDEB                               }
    OBORDEBV       : Double;          { OBORDEBV                              }
    OBORDEBBV      : Double;          { OBORDEBBV                             }
    OBORKRED       : Double;          { OBORKRED                              }
    OBORKREDV      : Double;          { OBORKREDV                             }
    OBORKREDBV     : Double;          { OBORKREDBV                            }
    FORSORT        : String[30];      { FORSORT                               }
    DATEDOC        : Date;            { DATEDOC                               }
  end;
const
  tiANKAUGROUPTMP01      = 0;  { ODAS(M) + OKAUOS[1] + OKAUOS[2] + OKAUOS[3] +  }
                               { OKAUOS[4] + OKAUOS[5] + OKAUOS[6] + SCHETO(Up) +  }
                               { SUBOSSCH(Up) + KODSPO + FILIALNO        }

const
  mtANKAUGROUPTMP = 'F_BUHREP::ANKAUGROUPTMP';
{$endif __MTtabledef__}
