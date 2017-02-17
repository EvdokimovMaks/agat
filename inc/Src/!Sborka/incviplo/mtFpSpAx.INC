{
 ╔═══════════════════════════════════════════════════════════════════════╗
 ║               Словарь : GALDICT "Галактика 9.1"                       ║
 ║    Дата создания 23/01/17                                             ║
 ╚═══════════════════════════════════════════════════════════════════════╝
}

{$ifdef __MTtabledef__}
{═════════════ Таблица : F_FPBUDGET::STRU_FPSPAXIS "STRU_FPSPAXIS" ══════════════}
type
  pSTRU_FPSPAXIS = ^tSTRU_FPSPAXIS;
  tSTRU_FPSPAXIS = record   { - STRU_FPSPAXIS }
    NREC           : Comp;            { NRec                                  }
    ID             : LongInt;         { Идентификатор сессии                  }
    ATTR           : Word;            { Атрибуты                              }
    CHASHAN        : Comp;            { Ссылка на хэш-аналитик                }
    CMAIN          : Comp;            { Ссылка на ось типовой формы           }
    CMEAN          : Comp;            { Ссылка на значение аналитики          }
    CKAUNODE       : Comp;            { Ссылка на вышестоящий КАУ             }
    CNODE          : Comp;            { Ссылка на вышестоящий показатель      }
    CODE           : String[20];      { Код показателя в шаблоне              }
    COTABLE        : Word;            { Код таблицы аналитики в словаре       }
    CSLOJ          : Comp;            { Ссылка на слой показателей            }
    ISLEAF         : Word;            { Признак листа                         }
    KODGRKAU       : Word;            { Общесистемный код аналитики           }
    LEVELCODE      : String[20];      { Код показателя внутри группы          }
    NAME           : String[80];      { Наименование показателя               }
  end;
const
  tiSTRU_FPSPAXIS01      = 0;  { ID(Un M) + NREC                         }
  tiSTRU_FPSPAXIS02      = 1;  { ID(M) + CMAIN + CNODE + LEVELCODE(Up)   }
  tiSTRU_FPSPAXIS03      = 2;  { ID(M) + CMAIN + CNODE + NAME(Up)        }
  tiSTRU_FPSPAXIS04      = 3;  { ID(M) + CMAIN + CODE(Up)                }
  tiSTRU_FPSPAXIS05      = 4;  { ID(M) + CMAIN + NAME(Up)                }
  tiSTRU_FPSPAXIS06      = 5;  { ID(M) + CMAIN + CKAUNODE + KODGRKAU + CMEAN }
  tiSTRU_FPSPAXIS07      = 6;  { ID(M) + CMAIN + KODGRKAU + CNODE + LEVELCODE(Up) }

const
  mtSTRU_FPSPAXIS = 'F_FPBUDGET::STRU_FPSPAXIS';
{$endif __MTtabledef__}
