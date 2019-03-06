{
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ               ‘ซฎข เ์ : GALDICT " ซ ชโจช  ERP 9.1"                   บ
 บ     โ  แฎงค ญจ๏ 21/02/19                                             บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : F_BUHREP::ANUCHREP "ANUCHREP" ออออออออออออออ}
type
  pANUCHREP = ^tANUCHREP;
  tANUCHREP = record   { - ANUCHREP }
    NREC           : Comp;            { NREC                                  }
    LASTDATE       : Date;            { LASTDATE                              }
    DATEDOC        : Date;            { DATEDOC                               }
    FILIALNO       : LongInt;         { FILIALNO                              }
    DATOB          : Date;            { DATOB                                 }
    NODOK          : String[20];      { NODOK                                 }
    SCHETO         : String[21];      { SCHETO                                }
    SUBOSSCH       : String[21];      { SUBOSSCH                              }
    TBLOS          : array [1..6] of Word;{ TBLOS                             }
    KODOS          : array [1..6] of Comp;{ KODOS                             }
    KODSPO         : Comp;            { KODSPO                                }
    OKAUOS         : array [1..6] of LongInt;{ OKAUOS                         }
    OPODRO         : LongInt;         { OPODRO                                }
    SCHETK         : String[21];      { SCHETK                                }
    SUBSCHK        : String[21];      { SUBSCHK                               }
    TBLKS          : array [1..6] of Word;{ TBLKS                             }
    KODKS          : array [1..6] of Comp;{ KODKS                             }
    KODSPK         : Comp;            { KODSPK                                }
    OKAUKS_1       : LongInt;         { OKAUKS_1                              }
    OPODRK         : LongInt;         { OPODRK                                }
    KODVALUT       : Comp;            { KODVALUT                              }
    COBOROT        : Comp;            { COBOROT                               }
    CSOPRHOZ       : Comp;            { CSOPRHOZ                              }
    CSOPRDOC       : Comp;            { CSOPRDOC                              }
    TIDK           : Word;            { TIDK                                  }
    EDIZM          : Comp;            { EDIZM                                 }
    SALDOVHD       : Double;          { SALDOVHD                              }
    SALDOVHDV      : Double;          { SALDOVHDV                             }
    SALDOVHDBV     : Double;          { SALDOVHDBV                            }
    SALDOVHKOLD    : Double;          { SALDOVHKOLD                           }
    SALDOVHK       : Double;          { SALDOVHK                              }
    SALDOVHKV      : Double;          { SALDOVHKV                             }
    SALDOVHKBV     : Double;          { SALDOVHKBV                            }
    SALDOVHKOLK    : Double;          { SALDOVHKOLK                           }
    OBORDEB        : Double;          { OBORDEB                               }
    OBORDEBV       : Double;          { OBORDEBV                              }
    OBORDEBBV      : Double;          { OBORDEBBV                             }
    OBORDEBKOL     : Double;          { OBORDEBKOL                            }
    OBORKRED       : Double;          { OBORKRED                              }
    OBORKREDV      : Double;          { OBORKREDV                             }
    OBORKREDBV     : Double;          { OBORKREDBV                            }
    OBORKREDKOL    : Double;          { OBORKREDKOL                           }
  end;
const
  tiANUCHREP01           = 0;  { SUBOSSCH(M Up) + OPODRO + OKAUOS[1] + OKAUOS[2] +  }
                               { OKAUOS[3] + OKAUOS[4] + OKAUOS[5] + OKAUOS[6] +  }
                               { FILIALNO + DATOB + SCHETK(Up) + SUBSCHK(Up) +  }
                               { OPODRK + OKAUKS_1 + NODOK(Up)           }
  tiANUCHREP03           = 1;  { SUBOSSCH(M Up) + OKAUOS[1]              }
  tiANUCHREP04           = 2;  { SUBOSSCH(M Up) + OKAUOS[2]              }
  tiANUCHREP05           = 3;  { SUBOSSCH(M Up) + OKAUOS[3]              }
  tiANUCHREP06           = 4;  { SUBOSSCH(M Up) + OKAUOS[4]              }
  tiANUCHREP07           = 5;  { SUBOSSCH(M Up) + OKAUOS[5]              }
  tiANUCHREP08           = 6;  { SUBOSSCH(M Up) + OKAUOS[6]              }
  tiANUCHREP09           = 7;  { SUBOSSCH(M Up) + OPODRO + OKAUOS[1] + OKAUOS[2] +  }
                               { OKAUOS[3] + OKAUOS[4] + OKAUOS[5] + OKAUOS[6] +  }
                               { FILIALNO + SCHETK(Up) + SUBSCHK(Up) + OPODRK +  }
                               { OKAUKS_1 + DATOB + NODOK(Up)            }
  tiANUCHREP99           = 8;  { NREC(Sur Un M)                          }

const
  mtANUCHREP = 'F_BUHREP::ANUCHREP';
{$endif __MTtabledef__}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : F_BUHREP::ANUCHREPVAL "ANUCHREPVAL" ออออออออออออออ}
type
  pANUCHREPVAL = ^tANUCHREPVAL;
  tANUCHREPVAL = record   { - ANUCHREPVAL }
    NREC           : Comp;            { NREC                                  }
    LASTDATE       : Date;            { LASTDATE                              }
    DATEDOC        : Date;            { DATEDOC                               }
    FILIALNO       : LongInt;         { FILIALNO                              }
    DATOB          : Date;            { DATOB                                 }
    NODOK          : String[20];      { NODOK                                 }
    SCHETO         : String[21];      { SCHETO                                }
    SUBOSSCH       : String[21];      { SUBOSSCH                              }
    TBLOS          : array [1..6] of Word;{ TBLOS                             }
    KODOS          : array [1..6] of Comp;{ KODOS                             }
    KODSPO         : Comp;            { KODSPO                                }
    OKAUOS         : array [1..6] of LongInt;{ OKAUOS                         }
    OPODRO         : LongInt;         { OPODRO                                }
    SCHETK         : String[21];      { SCHETK                                }
    SUBSCHK        : String[21];      { SUBSCHK                               }
    TBLKS          : array [1..6] of Word;{ TBLKS                             }
    KODKS          : array [1..6] of Comp;{ KODKS                             }
    KODSPK         : Comp;            { KODSPK                                }
    OKAUKS_1       : LongInt;         { OKAUKS_1                              }
    OPODRK         : LongInt;         { OPODRK                                }
    KODVALUT       : Comp;            { KODVALUT                              }
    COBOROT        : Comp;            { COBOROT                               }
    CSOPRHOZ       : Comp;            { CSOPRHOZ                              }
    CSOPRDOC       : Comp;            { CSOPRDOC                              }
    TIDK           : Word;            { TIDK                                  }
    EDIZM          : Comp;            { EDIZM                                 }
    SALDOVHD       : Double;          { SALDOVHD                              }
    SALDOVHDV      : Double;          { SALDOVHDV                             }
    SALDOVHDBV     : Double;          { SALDOVHDBV                            }
    SALDOVHKOLD    : Double;          { SALDOVHKOLD                           }
    SALDOVHK       : Double;          { SALDOVHK                              }
    SALDOVHKV      : Double;          { SALDOVHKV                             }
    SALDOVHKBV     : Double;          { SALDOVHKBV                            }
    SALDOVHKOLK    : Double;          { SALDOVHKOLK                           }
    OBORDEB        : Double;          { OBORDEB                               }
    OBORDEBV       : Double;          { OBORDEBV                              }
    OBORDEBBV      : Double;          { OBORDEBBV                             }
    OBORDEBKOL     : Double;          { OBORDEBKOL                            }
    OBORKRED       : Double;          { OBORKRED                              }
    OBORKREDV      : Double;          { OBORKREDV                             }
    OBORKREDBV     : Double;          { OBORKREDBV                            }
    OBORKREDKOL    : Double;          { OBORKREDKOL                           }
  end;
const
  tiANUCHREPVAL01        = 0;  { KODVALUT(M) + SUBOSSCH(Up) + OPODRO + OKAUOS[1] +  }
                               { OKAUOS[2] + OKAUOS[3] + OKAUOS[4] + OKAUOS[5] +  }
                               { OKAUOS[6] + FILIALNO + DATOB + SCHETK(Up) +  }
                               { SUBSCHK(Up) + OPODRK + OKAUKS_1 + NODOK(Up) }
  tiANUCHREPVAL03        = 1;  { KODVALUT(M) + SUBOSSCH(Up) + OKAUOS[1]  }
  tiANUCHREPVAL04        = 2;  { KODVALUT(M) + SUBOSSCH(Up) + OKAUOS[2]  }
  tiANUCHREPVAL05        = 3;  { KODVALUT(M) + SUBOSSCH(Up) + OKAUOS[3]  }
  tiANUCHREPVAL06        = 4;  { KODVALUT(M) + SUBOSSCH(Up) + OKAUOS[4]  }
  tiANUCHREPVAL07        = 5;  { KODVALUT(M) + SUBOSSCH(Up) + OKAUOS[5]  }
  tiANUCHREPVAL08        = 6;  { KODVALUT(M) + SUBOSSCH(Up) + OKAUOS[6]  }
  tiANUCHREPVAL09        = 7;  { KODVALUT(M) + SUBOSSCH(Up) + OPODRO + OKAUOS[1] +  }
                               { OKAUOS[2] + OKAUOS[3] + OKAUOS[4] + OKAUOS[5] +  }
                               { OKAUOS[6] + FILIALNO + SCHETK(Up) + SUBSCHK(Up) +  }
                               { OPODRK + OKAUKS_1 + DATOB + NODOK(Up)   }
  tiANUCHREPVAL98        = 8;  { COBOROT(M)                              }
  tiANUCHREPVAL99        = 9;  { NREC(Sur Un M)                          }

const
  mtANUCHREPVAL = 'F_BUHREP::ANUCHREPVAL';
{$endif __MTtabledef__}
