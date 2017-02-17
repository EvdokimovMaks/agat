{
 ╔═══════════════════════════════════════════════════════════════════════╗
 ║               Словарь : GALDICT "Галактика 9.1"                       ║
 ║    Дата создания 23/01/17                                             ║
 ╚═══════════════════════════════════════════════════════════════════════╝
}

{$ifdef __MTtabledef__}
{═════════════ Таблица : F_FPBUDGET::STRU_BUDMMEAN "STRU_BUDMMEAN" ══════════════}
type
  pSTRU_BUDMMEAN = ^tSTRU_BUDMMEAN;
  tSTRU_BUDMMEAN = object(tAtlAndBranchRecordHeader)   { - STRU_BUDMMEAN }
    CNODE          : Comp;            { Ссылка на вышестоящий                 }
    CMAIN          : Comp;            { Ссылка на типовую форму               }
    CMEAN          : Comp;            { Ссылка на значение аналитики          }
    CSLOJ          : Comp;            { Ссылка на слой показателей            }
    KODGRKAU       : Word;            { Общесистемный код аналитики           }
    COTABLE        : Word;            { Код таблицы аналитики в словаре       }
    ABBR           : String[20];      { Аббревиатура                          }
    NAME           : String[80];      { Наименование                          }
    HIERLEVEL      : Word;            { Уровень в иерархии                    }
    LEVELIND       : LongInt;         { Порядковый номер внутри группы        }
    ATTR           : Word;            { Атрибуты                              }
    UNARYOP        : Word;            { Унарный оператор                      }
    ISLEAF         : Word;            { Признак листа                         }
  end;
const
  tiFPMEANTF01           = 0;  { NREC(J Sur Un M)                        }
  tiFPMEANTF02           = 1;  { CMAIN(M) + KODGRKAU + CMEAN             }
  tiFPMEANTF03           = 2;  { CMAIN(M) + KODGRKAU + CNODE + LEVELIND  }
  tiFPMEANTF04           = 3;  { CMAIN(M) + KODGRKAU + CNODE + NAME(Up)  }
  tiFPMEANTF05           = 4;  { CMAIN(M) + KODGRKAU + NAME(Up)          }
  tiFPMEANTFLM           = 5;  { ATL_LASTDATE(M) + ATL_LASTTIME          }
  tiFPMEANTFLU           = 6;  { ATL_LASTUSER(M)                         }

const
  mtSTRU_BUDMMEAN = 'F_FPBUDGET::STRU_BUDMMEAN';
{$endif __MTtabledef__}
