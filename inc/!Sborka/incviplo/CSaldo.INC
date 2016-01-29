{
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ               ‘ซฎข เ์ : GALDICT " ซ ชโจช  9.1"                       บ
 บ     โ  แฎงค ญจ๏ 04/01/16                                             บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : F_BUHREP::CSALDO "CSALDO" ออออออออออออออ}
type
  pCSALDO = ^tCSALDO;
  tCSALDO = record   { - CSALDO }
    ATL_BRANCH     : Comp;            { ATL_BRANCH                            }
    FILIALNO       : LongInt;         { FILIALNO                              }
    CPLANSSCH      : Comp;            { CPLANSSCH                             }
    SCHETO         : String[21];      { SCHETO                                }
    SUBOSSCH       : String[21];      { SUBOSSCH                              }
    KODSPO         : Comp;            { KODSPO                                }
    TBLOS          : array [1..6] of Word;{ TBLOS                             }
    KAUOS          : array [1..6] of Comp;{ KAUOS                             }
    DESGR          : String[4];       { DESGR                                 }
    CFILKOR        : Comp;            { CFILKOR                               }
    KODVALUT       : Comp;            { KODVALUT                              }
    CED            : Comp;            { CED                                   }
    VIOB           : Word;            { VIOB                                  }
    SUMMA          : Double;          { SUMMA                                 }
    SUMMAVAL       : Double;          { SUMMAVAL                              }
    SUMMAKOL       : Double;          { SUMMAKOL                              }
  end;
const
  tiCSALDO01             = 0;  { FILIALNO(M) + SCHETO(Up) + SUBOSSCH(Up) +  }
                               { KODSPO + KAUOS[1] + KAUOS[2] + KAUOS[3] +  }
                               { KAUOS[4] + KAUOS[5] + KAUOS[6] + DESGR(Up) +  }
                               { CFILKOR + KODVALUT                      }
  tiCSALDO02             = 1;  { SCHETO(M Up) + SUBOSSCH(Up)             }
  tiCSALDO03             = 2;  { ATL_BRANCH(M) + FILIALNO + SCHETO(Up) +  }
                               { SUBOSSCH(Up) + KODSPO + KAUOS[1] + KAUOS[2] +  }
                               { KAUOS[3] + KAUOS[4] + KAUOS[5] + KAUOS[6] +  }
                               { DESGR(Up) + CFILKOR + KODVALUT          }

const
  mtCSALDO = 'F_BUHREP::CSALDO';
{$endif __MTtabledef__}
