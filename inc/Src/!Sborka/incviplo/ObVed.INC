{
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �               �����瑕 : GALDICT "�����皋�� ERP 9.1"                   �
 �    ���� 甌Г���� 01/02/19                                             �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
}

{$ifdef __MTtabledef__}
{様様様様様様� ��゛��� : F_BUHREP::OBVED "OBVED" 様様様様様様様}
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
