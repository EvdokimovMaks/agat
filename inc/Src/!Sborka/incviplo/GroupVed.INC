{
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �               �����瑕 : GALDICT "�����皋�� ERP 9.1"                   �
 �    ���� 甌Г���� 01/02/19                                             �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
}

{$ifdef __MTtabledef__}
{様様様様様様� ��゛��� : F_BUHREP::GROUPVED "GROUPVED" 様様様様様様様}
type
  pGROUPVED = ^tGROUPVED;
  tGROUPVED = record   { - GROUPVED }
    NREC           : Comp;            { NREC                                  }
    FILIALNO       : LongInt;         { FILIALNO                              }
    DATOB          : Date;            { DATOB                                 }
    SUBOSSCH       : String[21];      { SUBOSSCH                              }
    KODSPO         : Comp;            { KODSPO                                }
    NODOK          : String[20];      { NODOK                                 }
    PLATPOL        : String;          { PLATPOL                               }
    NAMEOPER       : String;          { NAMEOPER                              }
    NOPERDOP       : array [1..3] of String;{ NOPERDOP                        }
    KEYKORR        : String;          { KEYKORR                               }
    KODVALUT       : Comp;            { KODVALUT                              }
    SCHETK         : String[21];      { SCHETK                                }
    SUBSCHK        : String[21];      { SUBSCHK                               }
    OBORDEB        : Double;          { OBORDEB                               }
    OBORDEBBV      : Double;          { OBORDEBBV                             }
    SUMVALUTD      : Double;          { SUMVALUTD                             }
    OBORKRED       : Double;          { OBORKRED                              }
    OBORKREDBV     : Double;          { OBORKREDBV                            }
    SUMVALUTK      : Double;          { SUMVALUTK                             }
    DATEDOC        : Date;            { DATEDOC                               }
    CSOPRHOZ       : Comp;            { CSOPRHOZ                              }
  end;
const
  tiGROUPVED01           = 0;  { SUBOSSCH(M Up) + KODSPO + KEYKORR(Up) +  }
                               { DATOB + NODOK(Up)                       }
  tiGROUPVED02           = 1;  { SUBOSSCH(M Up) + SCHETK(Up) + SUBSCHK(Up) +  }
                               { KEYKORR(Up) + DATOB + NODOK(Up)         }

const
  mtGROUPVED = 'F_BUHREP::GROUPVED';
{$endif __MTtabledef__}
