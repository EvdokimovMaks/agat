{
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ               ‘ซฎข เ์ : GALDICT " ซ ชโจช  ERP 9.1"                   บ
 บ     โ  แฎงค ญจ๏ 11/12/18                                             บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : F_BUHREP::OBVED "OBVED" ออออออออออออออ}
type
  pOBVED = ^tOBVED;
  tOBVED = record   { - OBVED }
    NREC           : Comp;            { NREC                                  }
    DATOB          : Date;            { DATOB                                 }
    NODOK          : String[20];      { NODOK                                 }
    SCHETK         : String[21];      { SCHETK                                }
    SUBSCHK        : String[21];      { SUBSCHK                               }
    KODSPK         : Comp;            { KODSPK                                }
    OPODRK         : LongInt;         { OPODRK                                }
    COBOROT        : Comp;            { COBOROT                               }
    CSOPRHOZ       : Comp;            { CSOPRHOZ                              }
    OBORDEB        : Double;          { OBORDEB                               }
    OBORDEBBV      : Double;          { OBORDEBBV                             }
    OBORKRED       : Double;          { OBORKRED                              }
    OBORKREDBV     : Double;          { OBORKREDBV                            }
  end;
const
  tiOBVED01              = 0;  { SCHETK(M Up) + SUBSCHK(Up) + OPODRK + DATOB }
  tiOBVED99              = 1;  { NREC(Sur Un M)                          }

const
  mtOBVED = 'F_BUHREP::OBVED';
{$endif __MTtabledef__}
