{$IFDEF __type__}
{������������� ������ : VDANPLZ "VDANPLZ" ��������������}
type
  String1        = String[1];
  String20        = String[20];
  String150        = String[150];
  String255        = String[255];
  String40        = String[40];
  pVDANPLZ = ^tVDANPLZ;
  tVDANPLZ = record   { - VDANPLZ }
    PRCPODR        : Comp;            { prCpodr                               }
    PRCEX          : Comp;            { prCex                                 }
    P2             : Double;          { p2                                    }
    TSFLAG         : Word;            { TSFlag                                }
    VALIDFLAG      : Boolean;         { ValidFlag                             }
    PODRSHARE      : String1;         { ����� � ���ࠧ�������               }
    DANPLZ_CPODR   : Comp;            { (Nrec �� KatPodr)                     }
    DANPLZ_CPLAT   : Comp;            { ��� ���⥫�騪�                       }
    CBANKPLAT      : Comp;            { ��� ����� ����-��                     }
    CPOL           : Comp;            { ��� �����⥫�                        }
    CBANKPOL       : Comp;            { ��� ����� ���-⥫�                    }
    KATPODR_KOD    : String20;        { ��� ���ࠧ�������                     }
    KATPODR_NAME   : String150;       { ������������ ���ࠧ�������            }
    KATORG_NAME    : String;          { ����.�࣠����樨 ��� ��� 䨧.���     }
    KATORG_OKPO    : String20;        { ��� �� ����                           }
    KATBANK_MFO1   : String20;        { ��� ���                               }
    KATBANK_SCHET1 : String40;        { ���                                  }
    KATBANK_NAME   : String;          { ������������ �����                    }
    KATBANK_SCHET2 : String40;        { ��� � ���                            }
    KATORG1_NAME   : String;          { ����.�࣠����樨 ��� ��� 䨧.���     }
    KATORG1_OKPO   : String20;        { ��� �� ����                           }
    KATBANK1_MFO1  : String20;        { ��� ���                               }
    KATBANK1_SCHET1: String40;        { ���                                  }
    KATBANK1_NAME  : String;          { ������������ �����                    }
    KATBANK1_SCHET2: String40;        { ��� � ���                            }
    KATPODR_NREC   : Comp;            { ����� �����                          }
    DANPLZ_CGRPODR : Comp;            { nrec ��㯯� ���ࠧ�������             }
    KATPODR_CPODR  : Comp;            { Nrec �����. ���ࠧ�������            }
  end;

type
    prVDANPLZ = pVDANPLZ;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNDANPLZ=8;
    TNKATBANK=2;
    TNKATBANK1=3;
    TNKATBANKPP=4;
    TNKATORG=5;
    TNKATORG1=7;
    TNKATPODR=1;
    TNUSERRIGHTS=6;
    TNZAR_USER=0;
    FNCBANKPLAT=10;
    FNCBANKPOL=14;
    FNCPOL=12;
    FNDANPLZ_CGRPODR=37;
    FNDANPLZ_CPLAT=8;
    FNDANPLZ_CPODR=6;
    FNKATBANK1_MFO1=33;
    FNKATBANK1_NAME=35;
    FNKATBANK1_SCHET1=34;
    FNKATBANK1_SCHET2=36;
    FNKATBANK_MFO1=27;
    FNKATBANK_NAME=29;
    FNKATBANK_SCHET1=28;
    FNKATBANK_SCHET2=30;
    FNKATORG1_NAME=31;
    FNKATORG1_OKPO=32;
    FNKATORG_NAME=25;
    FNKATORG_OKPO=26;
    FNKATPODR_CPODR=38;
    FNKATPODR_KOD=21;
    FNKATPODR_NAME=23;
    FNKATPODR_NREC=7;
    FNP2=2;
    FNPODRSHARE=5;
    FNPRCEX=1;
    FNPRCPODR=0;
    FNTSFLAG=3;
    FNVALIDFLAG=4;
    tbDANPLZ_4_MODIF_0=8;
    tbKATPODR_4_MODIF_0=65537;
    tbRIGHTS=65542;
{$ENDIF}
{$IFDEF __Type__}
type
   prVDANPLZVDANPLZ = pVDANPLZ;
   prPLATPOL = pVDANPLZ;
   pPLATPOL = pVDANPLZ;
{$endif}