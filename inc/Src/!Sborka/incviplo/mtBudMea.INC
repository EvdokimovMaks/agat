{
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �               �����瑕 : GALDICT "�����皋�� ERP 9.1"                   �
 �    ���� 甌Г���� 01/02/19                                             �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
}

{$ifdef __MTtabledef__}
{様様様様様様� ��゛��� : F_FPBUDGET::STRU_BUDMMEAN "STRU_BUDMMEAN" 様様様様様様様}
type
  pSTRU_BUDMMEAN = ^tSTRU_BUDMMEAN;
  tSTRU_BUDMMEAN = object(tAtlAndBranchRecordHeader)   { - STRU_BUDMMEAN }
    CNODE          : Comp;            { �瘠��� �� �謌メ皰濶┤                 }
    CMAIN          : Comp;            { �瘠��� �� 皋��≪� 筮爼�               }
    CMEAN          : Comp;            { �瘠��� �� Л�腑�┘ �����皋��          }
    CSLOJ          : Comp;            { �瘠��� �� 甄�� ������皀�ォ            }
    KODGRKAU       : Word;            { ｡薀瓱痰ガ�覃 ��� �����皋��           }
    COTABLE        : Word;            { ��� ��゛�肓 �����皋�� � 甄���爛       }
    ABBR           : String[20];      { �　爛※�矣��                          }
    NAME           : String;          { ��━キ����┘                          }
    HIERLEVEL      : Word;            { �牀▲�� � ┘��璢┬                    }
    LEVELIND       : LongInt;         { ��瑙お��覃 ���ム ↓竄爬 �珮���        }
    ATTR           : Word;            { �矗─竄�                              }
    UNARYOP        : Word;            { ���爿覃 ��ム�皰�                      }
    ISLEAF         : Word;            { 踸Л�� ��痰�                         }
  end;
const
  tiFPMEANTF01           = 0;  { NREC(J Sur Un M)                        }
  tiFPMEANTF02           = 1;  { CMAIN(M) + KODGRKAU + CMEAN             }
  tiFPMEANTF03           = 2;  { CMAIN(M) + KODGRKAU + CNODE + LEVELIND  }
  tiFPMEANTF04           = 3;  { CMAIN(M) + KODGRKAU + CNODE + NAME(Up)  }
  tiFPMEANTF05           = 4;  { CMAIN(M) + KODGRKAU + NAME(Up)          }
  tiFPMEANTFLM           = 5;  { ATL_LASTDATE(M) + ATL_LASTTIME          }
  tiFPMEANTFLU           = 6;  { ATL_LASTUSER(M)                         }

const
  mtSTRU_BUDMMEAN = 'F_FPBUDGET::STRU_BUDMMEAN';
{$endif __MTtabledef__}
