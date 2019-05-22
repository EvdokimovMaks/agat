{
 ╔═══════════════════════════════════════════════════════════════════════╗
 ║               Словарь : GALDICT "Галактика ERP 9.1"                   ║
 ║    Дата создания 09/02/18                                             ║
 ╚═══════════════════════════════════════════════════════════════════════╝
}

{$ifdef __MTtabledef__}
{═════════════ Таблица : F_FA::FAEVAL "FAEVAL" ══════════════}
type
  pFAEVAL = ^tFAEVAL;
  tFAEVAL = record   { - FAEVAL }
    NREC           : Comp;            { NREC                                  }
    CCO            : Comp;            { Ссылка на ЦО                          }
    CELLERR        : Word;            { Ошибки в адресации                    }
    CGRCO          : Comp;            { Ссылка на группу ЦО                   }
    CGRINDEX       : Comp;            { Ссылка на группу индексов             }
    COMPVALUE      : Comp;            { Значение типа comp                    }
    COUTCYCLE      : Comp;            { Проверка цикличности                  }
    CPERIOD        : Comp;            { Ссылка на период                      }
    CVAL           : Comp;            { Ссылка на валюту                      }
    CLEGEND        : Comp;            { Ссылка на легенду                     }
    FORMULA        : String;          { Формула                               }
    FORMULERR      : Word;            { Ошибки в формулах                     }
    IDTYPE         : Word;            { Идентификатор типа                    }
    ISCORRECT      : Boolean;         { Флаг корректности                     }
    LNGVALUE       : LongInt;         { Целое значение, дата, время           }
    NAMECELL       : String[80];      { Имя ячейки                            }
    NUMCELL        : String[6];       { Номер ячейки                          }
    STRVALUE       : String;          { Строковое значение                    }
    VALUE          : Double;          { Значение                              }
    VALUEVAL       : Double;          { Значение в валюте                     }
  end;
const
  tiFAEVAL01             = 0;  { NREC(Sur Un M)                          }
  tiFAEVAL02             = 1;  { NUMCELL(M Up)                           }
  tiFAEVAL03             = 2;  { COUTCYCLE(M)                            }
  tiFAEVAL04             = 3;  { NAMECELL(M Up)                          }
  tiFAEVAL05             = 4;  { FORMULERR(M)                            }
  tiFAEVAL06             = 5;  { CELLERR(M)                              }
  tiFAEVAL07             = 6;  { ISCORRECT(M)                            }

const
  mtFAEVAL = 'F_FA::FAEVAL';
{$endif __MTtabledef__}
