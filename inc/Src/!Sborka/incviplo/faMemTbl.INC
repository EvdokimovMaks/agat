{
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �               �����瑕 : GALDICT "�����皋�� ERP 9.1"                   �
 �    ���� 甌Г���� 01/02/19                                             �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
}

{$ifdef __MTtabledef__}
{様様様様様様� ��゛��� : F_FA::FAEVAL "FAEVAL" 様様様様様様様}
type
  pFAEVAL = ^tFAEVAL;
  tFAEVAL = record   { - FAEVAL }
    NREC           : Comp;            { NREC                                  }
    CCO            : Comp;            { �瘠��� �� ��                          }
    CELLERR        : Word;            { �荐！� � �むメ�罔�                    }
    CGRCO          : Comp;            { �瘠��� �� �珮��� ��                   }
    CGRINDEX       : Comp;            { �瘠��� �� �珮��� ┃ぅ�甌�             }
    COMPVALUE      : Comp;            { ���腑�┘ 皋�� comp                    }
    COUTCYCLE      : Comp;            { 蹍▲爲� 罔���膈�痰�                  }
    CPERIOD        : Comp;            { �瘠��� �� �ム┏�                      }
    CVAL           : Comp;            { �瘠��� �� ���鈞�                      }
    CLEGEND        : Comp;            { �瘠��� �� �ィキゃ                     }
    FORMULA        : String;          { ��爼祀�                               }
    FORMULERR      : Word;            { �荐！� � 筮爼祀��                     }
    IDTYPE         : Word;            { �ぅ�皋筥��皰� 皋��                    }
    ISCORRECT      : Boolean;         { ���� ��玻オ皚�痰�                     }
    LNGVALUE       : LongInt;         { �カ�� Л�腑�┘, ����, ∇ガ�           }
    NAMECELL       : String[80];      { ��� 閾ォ��                            }
    NUMCELL        : String[6];       { ���ム 閾ォ��                          }
    STRVALUE       : String;          { �矗���〓� Л�腑�┘                    }
    VALUE          : Double;          { ���腑�┘                              }
    VALUEVAL       : Double;          { ���腑�┘ � ���鈞�                     }
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
