{$IFDEF __type__}
{═════════════ Таблица : VEDDOLG "VEDDOLG" ══════════════}
type
  String60        = String[60];
  String80        = String[80];
  String40        = String[40];
  pVEDDOLG = ^tVEDDOLG;
  tVEDDOLG = record   { - VEDDOLG }
    CEX            : Comp;       { Подразделение                         }
    CHOICE         : Word;       { Тип пометки-Лицев.счет,Больничный...  }
    CPODR          : Comp;       { Код вышестоящ.подразд                 }
    FIELD1         : Comp;       { Поле 1                                }
    FIELD2         : LongInt;    { Поле 2                                }
    FIO            : String60;   { Фамилия, Имя, Отчество                }
    KATPODR_NREC   : Comp;       { NREC                                  }
    KLVIDUD_VIDUD  : Word;       { Код вида удержаний sys                }
    LSCHET_TABN    : LongInt;    { Табельный номер                       }
    MARKED         : Char;       { '+' - поле помечено                   }
    NAME           : String80;   { наименование подразделения            }
    NVIDUD         : String40;   { Наимен.    удержаний                  }
    OSTAT          : Double;     { Остаток                               }
    PERSONS_NREC   : Comp;       { NREC                                  }
    PRUDER         : Word;       { PRUDER                                }
    SHTRAF_TABN    : LongInt;    { Табельный номер                       }
    SHTRAF_VIDUD   : Word;       { Вид удержания                         }
    TPERSON        : Comp;       { Код работника из ФЛ                   }
  end;
const
  tiBYFIO                = 0;  { NAME(nM Up) + FIO(Up)                   }
  tiBYTABN               = 1;  { NAME(nM Up) + SHTRAF_TABN               }

type
    prVEDDOLG = pVEDDOLG;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNFORMARKS=0;
    TNKATPODR=3;
    TNKLVIDUD=4;
    TNLSCHET=2;
    TNPERSONS=5;
    TNSHTRAF=1;
    TCSTANDARD=21;
    FNCEX=6;
    FNCHOICE=17;
    FNCPODR=5;
    FNFIELD1=14;
    FNFIELD2=15;
    FNFIO=3;
    FNKATPODR_NREC=10;
    FNKLVIDUD_VIDUD=12;
    FNLSCHET_TABN=1;
    FNMARKED=16;
    FNNAME=11;
    FNNVIDUD=13;
    FNOSTAT=8;
    FNPERSONS_NREC=4;
    FNPRUDER=0;
    FNSHTRAF_TABN=7;
    FNSHTRAF_VIDUD=9;
    FNTPERSON=2;
{$ENDIF}
