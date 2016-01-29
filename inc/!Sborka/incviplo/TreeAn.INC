{
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ               ‘ซฎข เ์ : GALDICT " ซ ชโจช  9.1"                       บ
 บ     โ  แฎงค ญจ๏ 04/01/16                                             บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : HIERANALITREPORT_TREEAN "HIERANALITREPORT=>TREEAN" ออออออออออออออ}
type
  pHIERANALITREPORT_TREEAN = ^tHIERANALITREPORT_TREEAN;
  tHIERANALITREPORT_TREEAN = record   { - HIERANALITREPORT=>TREEAN }
    NREC           : Comp;            { NREC                                  }
    CODE           : Word;            { CODE                                  }
    SUM            : array [1..4] of Double;{ SUM                             }
    COBOROT        : Comp;            { COBOROT                               }
    CSALDO         : Comp;            { CSALDO                                }
    VIDSUM         : Word;            { VIDSUM                                }
    ATL_BRANCH     : Comp;            { ATL_BRANCH                            }
    TIDKGAL        : Word;            { TIDKGAL                               }
    CSOPRDOC       : Comp;            { CSOPRDOC                              }
    CHOZOPER       : Comp;            { CHOZOPER                              }
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
    NODOK          : String[20];      { NODOK                                 }
    KODVALUT       : Comp;            { KODVALUT                              }
    RUCHAUTO       : Word;            { RUCHAUTO                              }
    CONVOB         : Word;            { CONVOB                                }
    CONVVAL        : Comp;            { CONVVAL                               }
    STATUS         : Word;            { STATUS                                }
    CNOTE          : Comp;            { CNOTE                                 }
    CED            : Comp;            { CED                                   }
  end;
const
  tiTREEAN01             = 0;  { NREC(Sur Un M)                          }

const
  mtHIERANALITREPORT_TREEAN = 'HIERANALITREPORT=>TREEAN';
{$endif __MTtabledef__}
