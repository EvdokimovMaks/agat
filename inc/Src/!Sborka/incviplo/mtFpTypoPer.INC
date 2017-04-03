{
 ╔═══════════════════════════════════════════════════════════════════════╗
 ║               Словарь : GALDICT "Галактика 9.1"                       ║
 ║    Дата создания 23/03/17                                             ║
 ╚═══════════════════════════════════════════════════════════════════════╝
}

{$ifdef __MTtabledef__}
{═════════════ Таблица : F_FPBUDGET::FPCURTYPOPERIOD "FPCURTYPOPERIOD" ══════════════}
type
  pFPCURTYPOPERIOD = ^tFPCURTYPOPERIOD;
  tFPCURTYPOPERIOD = object(tAtlAndBranchRecordHeader)   { - FPCURTYPOPERIOD }
    ABBR           : String[20];      { Аббревиатура                          }
    ATTR           : Word;            { Атрибуты                              }
    CMAIN          : Comp;            { Вершина описания типа периода         }
    CNODE          : Comp;            { Ссылка на вышестоящий период          }
    CODE           : String[20];      { Код периода                           }
    CPREV          : Comp;            { Ссылка на предыдущий период           }
    CTPER          : Comp;            { Ссылка на тип текущего периода        }
    DBEG           : Date;            { Дата начала                           }
    DEND           : Date;            { Дата окончания                        }
    FLAGS          : Word;            { Флаги                                 }
    ISLEAF         : Word;            { Признак листа                         }
    LEVELCODE      : String[20];      { Код периода внутри группы             }
    NAME           : String[80];      { Наименование периода                  }
    SIZE           : Double;          { Длина в днях                          }
    SIZERAB        : LongInt;         { Длина в рабочих днях                  }
  end;
const
  tiFPPERIOD01           = 0;  { NREC(J Sur Un M)                        }
  tiFPPERIOD02           = 1;  { CMAIN(M) + CNODE + LEVELCODE(Up)        }
  tiFPPERIOD03           = 2;  { CMAIN(M) + CNODE + NAME(Up)             }
  tiFPPERIOD04           = 3;  { CMAIN(M) + CODE(Up)                     }
  tiFPPERIOD05           = 4;  { CMAIN(M) + NAME(Up)                     }
  tiFPPERIOD06           = 5;  { CMAIN(M) + ABBR(Up)                     }
  tiFPPERIOD07           = 6;  { CPREV(M)                                }
  tiFPPERIOD08           = 7;  { CTPER(M) + DBEG + DEND                  }
  tiFPPERIOD09           = 8;  { CNODE(M) + DBEG + DEND                  }
  tiFPPERIOD10           = 9;  { CMAIN(M) + DBEG + DEND(<)               }
  tiFPPERIODLM           = 10; { ATL_LASTDATE(M) + ATL_LASTTIME          }
  tiFPPERIODLU           = 11; { ATL_LASTUSER(M)                         }

const
  mtFPCURTYPOPERIOD = 'F_FPBUDGET::FPCURTYPOPERIOD';
{$endif __MTtabledef__}
