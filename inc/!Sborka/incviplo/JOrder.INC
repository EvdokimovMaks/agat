{
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ               ‘ซฎข เ์ : GALDICT " ซ ชโจช  9.1"                       บ
 บ     โ  แฎงค ญจ๏ 04/01/16                                             บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : F_BUHREP::JORDER "JORDER" ออออออออออออออ}
type
  pJORDER = ^tJORDER;
  tJORDER = record   { - JORDER }
    NREC           : Comp;            { NREC                                  }
    TIPDATA        : Word;            { TIPDATA                               }
    FIRSTDAY       : Date;            { FIRSTDAY                              }
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
    OPODRK         : LongInt;         { OPODRK                                }
    KODVALUT       : Comp;            { KODVALUT                              }
    CVALMAIN       : Comp;            { CVALMAIN                              }
    COBOROT        : Comp;            { COBOROT                               }
    CSOPRHOZ       : Comp;            { CSOPRHOZ                              }
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
  end;
const
  tiJORDER01             = 0;  { CVALMAIN(M) + SCHETO(Up) + FIRSTDAY + SUBOSSCH(Up) +  }
                               { OPODRO + OKAUOS[1] + OKAUOS[2] + OKAUOS[3] +  }
                               { OKAUOS[4] + OKAUOS[5] + OKAUOS[6] + DATOB +  }
                               { SCHETK(Up) + SUBSCHK(Up) + OPODRK       }
  tiJORDER02             = 1;  { TIPDATA(M) + SCHETK(Up) + SUBSCHK(Up) +  }
                               { KODKS[1]                                }
  tiJORDER03             = 2;  { TIPDATA(M) + SCHETO(Up) + SCHETK(Up) + SUBSCHK(Up) +  }
                               { KODKS[1]                                }
  tiJORDER04             = 3;  { TIPDATA(M) + SCHETK(Up) + KODKS[1]      }
  tiJORDER05             = 4;  { TIPDATA(M) + SCHETO(Up) + SCHETK(Up) + KODKS[1] }
  tiJORDER06             = 5;  { SCHETO(M Up) + OPODRO                   }
  tiJORDER07             = 6;  { SCHETO(M Up) + OKAUOS[1]                }
  tiJORDER08             = 7;  { SCHETO(M Up) + OKAUOS[2]                }
  tiJORDER09             = 8;  { SCHETO(M Up) + OKAUOS[3]                }
  tiJORDER10             = 9;  { SCHETO(M Up) + SUBOSSCH(Up)             }
  tiJORDER11             = 10; { SCHETO(M Up) + OKAUOS[4]                }
  tiJORDER12             = 11; { SCHETO(M Up) + OKAUOS[5]                }
  tiJORDER13             = 12; { SCHETO(M Up) + OKAUOS[6]                }
  tiJORDER99             = 13; { NREC(Sur Un M)                          }

const
  mtJORDER = 'F_BUHREP::JORDER';
{$endif __MTtabledef__}
