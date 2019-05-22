{
 ╔═══════════════════════════════════════════════════════════════════════╗
 ║               Словарь : GALDICT "Галактика ERP 9.1"                   ║
 ║    Дата создания 09/02/18                                             ║
 ╚═══════════════════════════════════════════════════════════════════════╝
}

{$ifdef __MTtabledef__}
{═════════════ Таблица : C_MAILER::TPLICENSEINFO "TPLICENSEINFO" ══════════════}
type
  pTPLICENSEINFO = ^tTPLICENSEINFO;
  tTPLICENSEINFO = record   { - TPLICENSEINFO }
    NREC           : Comp;            { Идентификатор                         }
    CPARENT        : Comp;            { Идентификатор родителя                }
    TITLE          : String[80];      { Наименование контура/модуля           }
    PRNNAME        : String[80];      { Строковый идентификатор родителя      }
    NAME           : String[80];      { Строковый идентификатор               }
    LICCOUNT       : Word;            { Число лицензий                        }
  end;
const
  tiTPLICENSEINFO0       = 0;  { NREC(Un M A)                            }
  tiTPLICENSEINFO1       = 1;  { NAME(M Up)                              }
  tiTPLICENSEINFO2       = 2;  { TITLE(M Up)                             }
  tiTPLICENSEINFO3       = 3;  { PRNNAME(M Up) + NAME(Up)                }
  tiTPLICENSEINFO4       = 4;  { CPARENT(M) + NREC                       }

const
  mtTPLICENSEINFO = 'C_MAILER::TPLICENSEINFO';
{$endif __MTtabledef__}

{$ifdef __MTtabledef__}
{═════════════ Таблица : C_MAILER::TPPATCHESLIST "TPPATCHESLIST" ══════════════}
type
  pTPPATCHESLIST = ^tTPPATCHESLIST;
  tTPPATCHESLIST = record   { - TPPATCHESLIST }
    NREC           : Comp;            { Идентификатор                         }
    CPARENT        : Comp;            { Ссылка на родителя                    }
    NAME           : String[80];      { Имя системы, патча                    }
  end;
const
  tiTPPATCHESLIST0       = 0;  { NREC(Un M A)                            }
  tiTPPATCHESLIST1       = 1;  { NAME(M Up)                              }
  tiTPPATCHESLIST2       = 2;  { CPARENT(M) + NREC                       }

const
  mtTPPATCHESLIST = 'C_MAILER::TPPATCHESLIST';
{$endif __MTtabledef__}

{$ifdef __MTtabledef__}
{═════════════ Таблица : C_MAILER::TPSUPPORTSERVICES "TPSUPPORTSERVICES" ══════════════}
type
  pTPSUPPORTSERVICES = ^tTPSUPPORTSERVICES;
  tTPSUPPORTSERVICES = record   { - TPSUPPORTSERVICES }
    NREC           : Comp;            { Идентификатор                         }
    EMAIL          : String[200];     { EMail                                 }
    NAME           : String[80];      { Наименование                          }
  end;
const
  tiTPSUPPORTSERVICES0   = 0;  { NREC(Un M A)                            }
  tiTPSUPPORTSERVICES1   = 1;  { NAME(M Up)                              }
  tiTPSUPPORTSERVICES2   = 2;  { EMAIL(M Up)                             }

const
  mtTPSUPPORTSERVICES = 'C_MAILER::TPSUPPORTSERVICES';
{$endif __MTtabledef__}

{$ifdef __MTtabledef__}
{═════════════ Таблица : C_MAILER::TPSYSTEMINFORMATION "TPSYSTEMINFORMATION" ══════════════}
type
  pTPSYSTEMINFORMATION = ^tTPSYSTEMINFORMATION;
  tTPSYSTEMINFORMATION = record   { - TPSYSTEMINFORMATION }
    NREC           : Comp;            { Идентификатор                         }
    OSVERSION      : String[200];     { Версия операционной системы           }
    ATLVERSION     : String[200];     { Версия атлантиса                      }
    GALVERSION     : String[200];     { Версия Галактики                      }
    DBDRIVER       : String[200];     { Драйвер БД                            }
    VERSION        : SmallInt;        { Версия lic файла                      }
    ORGANIZATION   : String;          { Организация                           }
    ENDSUPPORTDATE : Date;            { Дата приостановки обслуживания        }
    LICNUMBER      : LongInt;         { Клиентский номер                      }
  end;
const
  tiTPSYSTEMINFORMATION0 = 0;  { NREC(Un M A)                            }

const
  mtTPSYSTEMINFORMATION = 'C_MAILER::TPSYSTEMINFORMATION';
{$endif __MTtabledef__}

{$ifdef __MTtabledef__}
{═════════════ Таблица : C_MAILER::TPUSERINFORMATION "TPUSERINFORMATION" ══════════════}
type
  pTPUSERINFORMATION = ^tTPUSERINFORMATION;
  tTPUSERINFORMATION = record   { - TPUSERINFORMATION }
    NREC           : Comp;            { Идентификатор                         }
    EMAIL          : String[200];     { E-Mail клиента                        }
    FIO            : String[200];     { ФИО клиента                           }
    CMODULE        : Comp;            { ссылка на модуль                      }
    CSERVICE       : Comp;            { ссылка на службу техподдержки         }
    WERRORTYPE     : Word;            { тип запроса                           }
    CLONNAME       : String[200];     { наименование клона                    }
    SERRORDESCR    : String[200];     { описание запроса                      }
  end;
const
  tiTPUSERINFORMATION0   = 0;  { NREC(Un M A)                            }
  tiTPUSERINFORMATION1   = 1;  { CMODULE(M)                              }

const
  mtTPUSERINFORMATION = 'C_MAILER::TPUSERINFORMATION';
{$endif __MTtabledef__}
