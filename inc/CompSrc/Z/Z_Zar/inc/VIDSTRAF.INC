{$IFDEF __type__}
{═════════════ Таблица : VIDSTRAFREESTR "VIDSTRAFREESTR" ══════════════}
type
  String254        = String[254];
  String80        = String[80];
  String20        = String[20];
  String30        = String[30];
  String60        = String[60];
  pVIDSTRAFREESTR = ^tVIDSTRAFREESTR;
  tVIDSTRAFREESTR = record   { - VIDSTRAFREESTR }
    CBANKPOL       : Comp;       { Код Банка пол-теля                    }
    CHOICE         : Word;       { Тип пометки-Лицев.счет,Больничный...  }
    CPOL           : Comp;       { NRec для Catalogs                     }
    EXPR_N26       : String254;  { Выражение номер 26                    }
    EXPR_N27       : String254;  { Выражение номер 27                    }
    FIELD1         : Comp;       { Поле 1                                }
    FIELD2         : LongInt;    { Поле 2                                }
    KATBANK_NAME   : String80;   { наименование банка                    }
    KATORG_NAME    : String80;   { наим.организации или ФИО физ.лица     }
    KLVIDUD_VIDUD  : Word;       { Код вида удержаний sys                }
    LSCHET_CEX     : Comp;       { Цех                                   }
    LSCHET_CPODR   : Comp;       { Код вышестоящ.подразд                 }
    LSCHET_TABN    : LongInt;    { Табельный номер                       }
    MFO1           : String20;   { код МФО                               }
    NOMLSH         : String30;   { Лицевой счет                          }
    NREC           : Comp;       { NREC                                  }
    OKPO           : String20;   { код по ОКПО                           }
    PERSONS_FIO    : String60;   { Фамилия, Имя, Отчество                }
    POLAL          : LongInt;    { No получателя алим.                   }
    PRPER          : Word;       { Признак удержания                     }
    PRVIDUD        : Word;       { PRVIDUD                               }
    SCHET1         : String30;   { счет                                  }
    SHTRAF_CEX     : Comp;       { Подразделение                         }
    SHTRAF_CPODR   : Comp;       { Код вышестоящ.подразд                 }
    SHTRAF_FIO     : String60;   { Фамилия И.О. (кому)                   }
    SHTRAF_TABN    : LongInt;    { Табельный номер                       }
    SHTRAF_VIDUD   : Word;       { Вид удержания                         }
    SUMUDALL       : Double;     { Общая сумма удержан.                  }
    TPERSON        : Comp;       { Код работника из ФЛ                   }
  end;
const
  tiBYFIO                = 0;  { EXPR_N26(nM Up)                         }
  tiBYFIOPER             = 1;  { EXPR_N27(nM Up)                         }
  tiBYTABN               = 2;  { CPOL(nM) + CBANKPOL + FIELD2 + NOMLSH(Up) }
  tiBYTABNPER            = 3;  { CPOL(nM) + CBANKPOL + SHTRAF_TABN + SHTRAF_FIO(Up) +  }
                               { PERSONS_FIO(Up) + PRPER                 }

type
    prVIDSTRAFREESTR = pVIDSTRAFREESTR;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNFORMARKS=6;
    TNKATBANK=4;
    TNKATORG=3;
    TNKLVIDUD=2;
    TNLSCHET=1;
    TNPERSONS=5;
    TNSHTRAF=0;
    TCSTANDARD=32;
    FNCBANKPOL=14;
    FNCHOICE=26;
    FNCPOL=13;
    FNEXPR_N26=33;
    FNEXPR_N27=34;
    FNFIELD1=24;
    FNFIELD2=25;
    FNKATBANK_NAME=20;
    FNKATORG_NAME=18;
    FNKLVIDUD_VIDUD=22;
    FNLSCHET_CEX=1;
    FNLSCHET_CPODR=3;
    FNLSCHET_TABN=2;
    FNMFO1=19;
    FNNOMLSH=16;
    FNNREC=5;
    FNOKPO=17;
    FNPERSONS_FIO=23;
    FNPOLAL=6;
    FNPRPER=15;
    FNPRVIDUD=0;
    FNSCHET1=21;
    FNSHTRAF_CEX=8;
    FNSHTRAF_CPODR=7;
    FNSHTRAF_FIO=10;
    FNSHTRAF_TABN=9;
    FNSHTRAF_VIDUD=12;
    FNSUMUDALL=11;
    FNTPERSON=4;
{$ENDIF}
