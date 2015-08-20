{$IFDEF __type__}
{═════════════ Таблица : VIDUDERREESTR "VIDUDERREESTR" ══════════════}
type
  String60        = String[60];
  pVIDUDERREESTR = ^tVIDUDERREESTR;
  tVIDUDERREESTR = record   { - VIDUDERREESTR }
    CHOICE         : Word;       { Тип пометки-Лицев.счет,Больничный...  }
    CPODR          : Comp;       { Код вышестоящ.подразд                 }
    FIELD1         : Comp;       { Поле 1                                }
    FIELD2         : LongInt;    { Поле 2                                }
    FIO            : String60;   { Фамилия, Имя, Отчество                }
    LSCHET_CEX     : Comp;       { Цех                                   }
    LSCHET_TABN    : LongInt;    { Табельный номер                       }
    MARKED         : Char;       { '+' - поле помечено                   }
    PRVIDUD        : Word;       { PRVIDUD                               }
    SUMUD          : Double;     { Сумма удержания                       }
    UDER_CEX       : Comp;       { Цех адм. подчинения                   }
    UDER_TABN      : LongInt;    { Табельный номер                       }
    VIDUDS         : Word;       { Системный Вид удержания               }
  end;
const
  tiBYFIO                = 0;  { FIO(nM Up)                              }
  tiBYTABN               = 1;  { LSCHET_TABN(nM)                         }

type
    prVIDUDERREESTR = pVIDUDERREESTR;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNFORMARKS=4;
    TNKLVIDUD=2;
    TNLSCHET=1;
    TNPERSONS=3;
    TNUDER=0;
    TCSTANDARD=19;
    FNCHOICE=12;
    FNCPODR=4;
    FNFIELD1=9;
    FNFIELD2=10;
    FNFIO=3;
    FNLSCHET_CEX=1;
    FNLSCHET_TABN=2;
    FNMARKED=11;
    FNPRVIDUD=0;
    FNSUMUD=7;
    FNUDER_CEX=5;
    FNUDER_TABN=6;
    FNVIDUDS=8;
{$ENDIF}
