{
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �               �����瑕 : GALDICT "�����皋�� ERP 9.1"                   �
 �    ���� 甌Г���� 01/02/19                                             �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
}

{$ifdef __MTtabledef__}
{様様様様様様� ��゛��� : F_FPBUDGET::FPCURTYPOPERIOD "FPCURTYPOPERIOD" 様様様様様様様}
type
  pFPCURTYPOPERIOD = ^tFPCURTYPOPERIOD;
  tFPCURTYPOPERIOD = object(tAtlAndBranchRecordHeader)   { - FPCURTYPOPERIOD }
    ABBR           : String[20];      { �　爛※�矣��                          }
    ATTR           : Word;            { �矗─竄�                              }
    CMAIN          : Comp;            { �ム荐�� �������� 皋�� �ム┏��         }
    CNODE          : Comp;            { �瘠��� �� �謌メ皰濶┤ �ム┏�          }
    CODE           : String[20];      { ��� �ム┏��                           }
    CPREV          : Comp;            { �瘠��� �� �爛るゃ薑� �ム┏�           }
    CTPER          : Comp;            { �瘠��� �� 皋� 皀�竕ィ� �ム┏��        }
    DBEG           : Date;            { ���� ������                           }
    DEND           : Date;            { ���� ���������                        }
    FLAGS          : Word;            { �����                                 }
    ISLEAF         : Word;            { 踸Л�� ��痰�                         }
    LEVELCODE      : String[20];      { ��� �ム┏�� ↓竄爬 �珮���             }
    NAME           : String[80];      { ��━キ����┘ �ム┏��                  }
    SIZE           : Double;          { ��┃� � き閻                          }
    SIZERAB        : LongInt;         { ��┃� � ��｀腮� き閻                  }
  end;
const
  tiFPPERIOD01           = 0;  { NREC(J Sur Un M)                        }
  tiFPPERIOD02           = 1;  { CMAIN(M) + CNODE + LEVELCODE(Up)        }
  tiFPPERIOD03           = 2;  { CMAIN(M) + CNODE + NAME(Up)             }
  tiFPPERIOD04           = 3;  { CMAIN(M) + CODE(Up)                     }
  tiFPPERIOD05           = 4;  { CMAIN(M) + NAME(Up)                     }
  tiFPPERIOD06           = 5;  { CMAIN(M) + ABBR(Up)                     }
  tiFPPERIOD07           = 6;  { CPREV(M)                                }
  tiFPPERIOD08           = 7;  { CTPER(M) + DBEG + DEND                  }
  tiFPPERIOD09           = 8;  { CNODE(M) + DBEG + DEND                  }
  tiFPPERIOD10           = 9;  { CMAIN(M) + DBEG + DEND(<)               }
  tiFPPERIODLM           = 10; { ATL_LASTDATE(M) + ATL_LASTTIME          }
  tiFPPERIODLU           = 11; { ATL_LASTUSER(M)                         }

const
  mtFPCURTYPOPERIOD = 'F_FPBUDGET::FPCURTYPOPERIOD';
{$endif __MTtabledef__}
