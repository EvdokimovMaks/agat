{
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �               �����瑕 : GALDICT "�����皋�� ERP 9.1"                   �
 �    ���� 甌Г���� 01/02/19                                             �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
}

{$ifdef __MTtabledef__}
{様様様様様様� ��゛��� : F_FPBUDGET::STRU_FPSPAXIS "STRU_FPSPAXIS" 様様様様様様様}
type
  pSTRU_FPSPAXIS = ^tSTRU_FPSPAXIS;
  tSTRU_FPSPAXIS = record   { - STRU_FPSPAXIS }
    NREC           : Comp;            { NRec                                  }
    ID             : LongInt;         { �ぅ�皋筥��皰� 瓮瘁┬                  }
    ATTR           : Word;            { �矗─竄�                              }
    CHASHAN        : Comp;            { �瘠��� �� 纃�-�����皋�                }
    CMAIN          : Comp;            { �瘠��� �� �瘡 皋��〓� 筮爼�           }
    CMEAN          : Comp;            { �瘠��� �� Л�腑�┘ �����皋��          }
    CKAUNODE       : Comp;            { �瘠��� �� �謌メ皰濶┤ ���             }
    CNODE          : Comp;            { �瘠��� �� �謌メ皰濶┤ ������皀��      }
    CODE           : String[20];      { ��� ������皀�� � ��゛���              }
    COTABLE        : Word;            { ��� ��゛�肓 �����皋�� � 甄���爛       }
    CSLOJ          : Comp;            { �瘠��� �� 甄�� ������皀�ォ            }
    ISLEAF         : Word;            { 踸Л�� ��痰�                         }
    KODGRKAU       : Word;            { ｡薀瓱痰ガ�覃 ��� �����皋��           }
    LEVELCODE      : String[20];      { ��� ������皀�� ↓竄爬 �珮���          }
    NAME           : String[80];      { ��━キ����┘ ������皀��               }
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
