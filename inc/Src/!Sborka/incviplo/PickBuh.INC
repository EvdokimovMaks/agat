{
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ               ‘ซฎข เ์ : GALDICT " ซ ชโจช  9.1"                       บ
 บ     โ  แฎงค ญจ๏ 29/02/16                                             บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : F_BUHREP::PICKBUH "PICKBUH" ออออออออออออออ}
type
  pPICKBUH = ^tPICKBUH;
  tPICKBUH = record   { - PICKBUH }
    KODTABLE       : Word;            { โ กซจๆ                                }
    PICKREC        : Comp;            { ญฎฌฅเ ํซฅฌฅญโ  ข แฏจแชฅ               }
    PICKKOD        : String[21];      { ชฎค จซจ NRec ํซฅฌฅญโ                  }
    SCHET          : String[21];      { กใๅฃ.แ็ฅโ                             }
    SUBKAU         : String[21];      { แใกแ็ฅโ/€“                           }
    NAME           : String[250];     { จฌ๏ ไจซ์โเ                            }
    PICK           : LongInt;         { ฏฎเ๏คฎช ข๋กฎเ                         }
    PICKKOL        : Double;          { ชฎซจ็ฅแโขฎ                            }
  end;
const
  tiPICKBUHREC           = 0;  { KODTABLE(M) + PICKREC                   }
  tiPICKBUHKOD           = 1;  { KODTABLE(M) + PICKKOD(Up)               }
  tiPICKBUHSCH           = 2;  { KODTABLE(M) + SCHET(Up) + PICKKOD(Up)   }
  tiPICKBUHPCK           = 3;  { KODTABLE(M) + PICK                      }

const
  mtPICKBUH = 'F_BUHREP::PICKBUH';
{$endif __MTtabledef__}
