{
 �����������������������������������������������������������������������ͻ
 �               ������� : GALDICT "�����⨪� 9.1"                       �
 �    ��� ᮧ����� 04/04/16                                             �
 �����������������������������������������������������������������������ͼ
}

{$ifdef __MTtabledef__}
{������������� ������ : F_FPBUDGET::STRU_BUDMMEAN "STRU_BUDMMEAN" ��������������}
type
  pSTRU_BUDMMEAN = ^tSTRU_BUDMMEAN;
  tSTRU_BUDMMEAN = object(tAtlAndBranchRecordHeader)   { - STRU_BUDMMEAN }
    CNODE          : Comp;            { ��뫪� �� ������騩                 }
    CMAIN          : Comp;            { ��뫪� �� ⨯���� ���               }
    CMEAN          : Comp;            { ��뫪� �� ���祭�� �����⨪�          }
    CSLOJ          : Comp;            { ��뫪� �� ᫮� ������⥫��            }
    KODGRKAU       : Word;            { �����⥬�� ��� �����⨪�           }
    COTABLE        : Word;            { ��� ⠡���� �����⨪� � ᫮���       }
    ABBR           : String[20];      { ���ॢ�����                          }
    NAME           : String[80];      { ������������                          }
    HIERLEVEL      : Word;            { �஢��� � ����娨                    }
    LEVELIND       : LongInt;         { ���浪��� ����� ����� ��㯯�        }
    ATTR           : Word;            { ��ਡ���                              }
    UNARYOP        : Word;            { ����� ������                      }
    ISLEAF         : Word;            { �ਧ��� ����                         }
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