{
 �����������������������������������������������������������������������ͻ
 �               ������� : GALDICT "�����⨪� 9.1"                       �
 �    ��� ᮧ����� 04/04/16                                             �
 �����������������������������������������������������������������������ͼ
}

{$ifdef __MTtabledef__}
{������������� ������ : F_FPBUDGET::FPCURTYPOPERIOD "FPCURTYPOPERIOD" ��������������}
type
  pFPCURTYPOPERIOD = ^tFPCURTYPOPERIOD;
  tFPCURTYPOPERIOD = object(tAtlAndBranchRecordHeader)   { - FPCURTYPOPERIOD }
    ABBR           : String[20];      { ���ॢ�����                          }
    ATTR           : Word;            { ��ਡ���                              }
    CMAIN          : Comp;            { ���設� ���ᠭ�� ⨯� ��ਮ��         }
    CNODE          : Comp;            { ��뫪� �� ������騩 ��ਮ�          }
    CODE           : String[20];      { ��� ��ਮ��                           }
    CPREV          : Comp;            { ��뫪� �� �।��騩 ��ਮ�           }
    CTPER          : Comp;            { ��뫪� �� ⨯ ⥪�饣� ��ਮ��        }
    DBEG           : Date;            { ��� ��砫�                           }
    DEND           : Date;            { ��� ����砭��                        }
    FLAGS          : Word;            { �����                                 }
    ISLEAF         : Word;            { �ਧ��� ����                         }
    LEVELCODE      : String[20];      { ��� ��ਮ�� ����� ��㯯�             }
    NAME           : String[80];      { ������������ ��ਮ��                  }
    SIZE           : Double;          { ����� � ����                          }
    SIZERAB        : LongInt;         { ����� � ࠡ��� ����                  }
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