{
 �����������������������������������������������������������������������ͻ
 �               ������� : GALDICT "�����⨪� 9.1"                       �
 �    ��� ᮧ����� 04/04/16                                             �
 �����������������������������������������������������������������������ͼ
}

{$ifdef __MTtabledef__}
{������������� ������ : F_FPBUDGET::STRU_FPSPAXIS "STRU_FPSPAXIS" ��������������}
type
  pSTRU_FPSPAXIS = ^tSTRU_FPSPAXIS;
  tSTRU_FPSPAXIS = record   { - STRU_FPSPAXIS }
    NREC           : Comp;            { NRec                                  }
    ID             : LongInt;         { �����䨪��� ��ᨨ                  }
    ATTR           : Word;            { ��ਡ���                              }
    CHASHAN        : Comp;            { ��뫪� �� ���-�����⨪                }
    CMAIN          : Comp;            { ��뫪� �� ��� ⨯���� ���           }
    CMEAN          : Comp;            { ��뫪� �� ���祭�� �����⨪�          }
    CKAUNODE       : Comp;            { ��뫪� �� ������騩 ���             }
    CNODE          : Comp;            { ��뫪� �� ������騩 ������⥫�      }
    CODE           : String[20];      { ��� ������⥫� � 蠡����              }
    COTABLE        : Word;            { ��� ⠡���� �����⨪� � ᫮���       }
    CSLOJ          : Comp;            { ��뫪� �� ᫮� ������⥫��            }
    ISLEAF         : Word;            { �ਧ��� ����                         }
    KODGRKAU       : Word;            { �����⥬�� ��� �����⨪�           }
    LEVELCODE      : String[20];      { ��� ������⥫� ����� ��㯯�          }
    NAME           : String[80];      { ������������ ������⥫�               }
  end;
const
  tiSTRU_FPSPAXIS01      = 0;  { ID(Un M) + NREC                         }
  tiSTRU_FPSPAXIS02      = 1;  { ID(M) + CMAIN + CNODE + LEVELCODE(Up)   }
  tiSTRU_FPSPAXIS03      = 2;  { ID(M) + CMAIN + CNODE + NAME(Up)        }
  tiSTRU_FPSPAXIS04      = 3;  { ID(M) + CMAIN + CODE(Up)                }
  tiSTRU_FPSPAXIS05      = 4;  { ID(M) + CMAIN + NAME(Up)                }
  tiSTRU_FPSPAXIS06      = 5;  { ID(M) + CMAIN + CKAUNODE + KODGRKAU + CMEAN }
  tiSTRU_FPSPAXIS07      = 6;  { ID(M) + CMAIN + KODGRKAU + CNODE + LEVELCODE(Up) }

const
  mtSTRU_FPSPAXIS = 'F_FPBUDGET::STRU_FPSPAXIS';
{$endif __MTtabledef__}