{
 �����������������������������������������������������������������������ͻ
 �               ������� : GALDICT "�����⨪� 9.1"                       �
 �    ��� ᮧ����� 05/06/14                                             �
 �����������������������������������������������������������������������ͼ
}

{$ifdef __MTtabledef__}
{������������� ������ : F_FA::FAEVAL "FAEVAL" ��������������}
type
  pFAEVAL = ^tFAEVAL;
  tFAEVAL = record   { - FAEVAL }
    NREC           : Comp;            { NREC                                  }
    CCO            : Comp;            { ��뫪� �� ��                          }
    CELLERR        : Word;            { �訡�� � ����樨                    }
    CGRCO          : Comp;            { ��뫪� �� ��㯯� ��                   }
    CGRINDEX       : Comp;            { ��뫪� �� ��㯯� �����ᮢ             }
    COMPVALUE      : Comp;            { ���祭�� ⨯� comp                    }
    COUTCYCLE      : Comp;            { �஢�ઠ 横��筮��                  }
    CPERIOD        : Comp;            { ��뫪� �� ��ਮ�                      }
    CVAL           : Comp;            { ��뫪� �� ������                      }
    CLEGEND        : Comp;            { ��뫪� �� �������                     }
    FORMULA        : String;          { ���㫠                               }
    FORMULERR      : Word;            { �訡�� � ��㫠�                     }
    IDTYPE         : Word;            { �����䨪��� ⨯�                    }
    ISCORRECT      : Boolean;         { ���� ���४⭮��                     }
    LNGVALUE       : LongInt;         { ����� ���祭��, ���, �६�           }
    NAMECELL       : String[80];      { ��� �祩��                            }
    NUMCELL        : String[6];       { ����� �祩��                          }
    STRVALUE       : String;          { ��ப���� ���祭��                    }
    VALUE          : Double;          { ���祭��                              }
    VALUEVAL       : Double;          { ���祭�� � �����                     }
  end;
const
  tiFAEVAL01             = 0;  { NREC(Sur Un M)                          }
  tiFAEVAL02             = 1;  { NUMCELL(M Up)                           }
  tiFAEVAL03             = 2;  { COUTCYCLE(M)                            }
  tiFAEVAL04             = 3;  { NAMECELL(M Up)                          }
  tiFAEVAL05             = 4;  { FORMULERR(M)                            }
  tiFAEVAL06             = 5;  { CELLERR(M)                              }
  tiFAEVAL07             = 6;  { ISCORRECT(M)                            }

const
  mtFAEVAL = 'F_FA::FAEVAL';
{$endif __MTtabledef__}