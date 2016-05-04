{$IFDEF __type__}
{������������� ������ : VIDSTRAFREESTR "VIDSTRAFREESTR" ��������������}
type
  String254        = String[254];
  String80        = String[80];
  String20        = String[20];
  String30        = String[30];
  String60        = String[60];
  pVIDSTRAFREESTR = ^tVIDSTRAFREESTR;
  tVIDSTRAFREESTR = record   { - VIDSTRAFREESTR }
    CBANKPOL       : Comp;       { ��� ����� ���-⥫�                    }
    CHOICE         : Word;       { ��� ����⪨-��楢.���,���쭨��...  }
    CPOL           : Comp;       { NRec ��� Catalogs                     }
    EXPR_N26       : String254;  { ��ࠦ���� ����� 26                    }
    EXPR_N27       : String254;  { ��ࠦ���� ����� 27                    }
    FIELD1         : Comp;       { ���� 1                                }
    FIELD2         : LongInt;    { ���� 2                                }
    KATBANK_NAME   : String80;   { ������������ �����                    }
    KATORG_NAME    : String80;   { ����.�࣠����樨 ��� ��� 䨧.���     }
    KLVIDUD_VIDUD  : Word;       { ��� ���� 㤥ঠ��� sys                }
    LSCHET_CEX     : Comp;       { ���                                   }
    LSCHET_CPODR   : Comp;       { ��� �������.���ࠧ�                 }
    LSCHET_TABN    : LongInt;    { ������� �����                       }
    MFO1           : String20;   { ��� ���                               }
    NOMLSH         : String30;   { ��楢�� ���                          }
    NREC           : Comp;       { NREC                                  }
    OKPO           : String20;   { ��� �� ����                           }
    PERSONS_FIO    : String60;   { �������, ���, ����⢮                }
    POLAL          : LongInt;    { No �����⥫� ����.                   }
    PRPER          : Word;       { �ਧ��� 㤥ঠ���                     }
    PRVIDUD        : Word;       { PRVIDUD                               }
    SCHET1         : String30;   { ���                                  }
    SHTRAF_CEX     : Comp;       { ���ࠧ�������                         }
    SHTRAF_CPODR   : Comp;       { ��� �������.���ࠧ�                 }
    SHTRAF_FIO     : String60;   { ������� �.�. (����)                   }
    SHTRAF_TABN    : LongInt;    { ������� �����                       }
    SHTRAF_VIDUD   : Word;       { ��� 㤥ঠ���                         }
    SUMUDALL       : Double;     { ���� �㬬� 㤥ঠ�.                  }
    TPERSON        : Comp;       { ��� ࠡ�⭨�� �� ��                   }
  end;
const
  tiBYFIO                = 0;  { EXPR_N26(nM Up)                         }
  tiBYFIOPER             = 1;  { EXPR_N27(nM Up)                         }
  tiBYTABN               = 2;  { CPOL(nM) + CBANKPOL + FIELD2 + NOMLSH(Up) }
  tiBYTABNPER            = 3;  { CPOL(nM) + CBANKPOL + SHTRAF_TABN + SHTRAF_FIO(Up) +  }
                               { PERSONS_FIO(Up) + PRPER                 }

type
    prVIDSTRAFREESTR = pVIDSTRAFREESTR;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNFORMARKS=6;
    TNKATBANK=4;
    TNKATORG=3;
    TNKLVIDUD=2;
    TNLSCHET=1;
    TNPERSONS=5;
    TNSHTRAF=0;
    TCSTANDARD=32;
    FNCBANKPOL=14;
    FNCHOICE=26;
    FNCPOL=13;
    FNEXPR_N26=33;
    FNEXPR_N27=34;
    FNFIELD1=24;
    FNFIELD2=25;
    FNKATBANK_NAME=20;
    FNKATORG_NAME=18;
    FNKLVIDUD_VIDUD=22;
    FNLSCHET_CEX=1;
    FNLSCHET_CPODR=3;
    FNLSCHET_TABN=2;
    FNMFO1=19;
    FNNOMLSH=16;
    FNNREC=5;
    FNOKPO=17;
    FNPERSONS_FIO=23;
    FNPOLAL=6;
    FNPRPER=15;
    FNPRVIDUD=0;
    FNSCHET1=21;
    FNSHTRAF_CEX=8;
    FNSHTRAF_CPODR=7;
    FNSHTRAF_FIO=10;
    FNSHTRAF_TABN=9;
    FNSHTRAF_VIDUD=12;
    FNSUMUDALL=11;
    FNTPERSON=4;
{$ENDIF}