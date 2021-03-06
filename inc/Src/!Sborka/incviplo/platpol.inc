{$IFDEF __type__}
{様様様様様様� ��゛��� : VDANPLZ "VDANPLZ" 様様様様様様様}
type
  String1        = String[1];
  String20        = String[20];
  String255        = String[255];
  String40        = String[40];
  pVDANPLZ = ^tVDANPLZ;
  tVDANPLZ = record   { - VDANPLZ }
    PRCPODR        : Comp;            { prCpodr                               }
    PRCEX          : Comp;            { prCex                                 }
    P2             : Double;          { p2                                    }
    TSFLAG         : Word;            { TSFlag                                }
    VALIDFLAG      : Boolean;         { ValidFlag                             }
    PODRSHARE      : String1;         { ��痰祚 � ��む�Гカキ�鍖               }
    DANPLZ_CPODR   : Comp;            { (Nrec ├ KatPodr)                     }
    DANPLZ_CPLAT   : Comp;            { ��� ���皀�跚┴�                       }
    CBANKPLAT      : Comp;            { ��� ����� ����-��                     }
    CPOL           : Comp;            { ��� ���竍�皀��                        }
    CBANKPOL       : Comp;            { ��� ����� ���-皀��                    }
    KATPODR_KOD    : String20;        { ��� ��む�Гカキ��                     }
    KATPODR_NAME   : String;          { ��━キ����┘ ��む�Гカキ��            }
    KATORG_NAME    : String;          { ��━.�爍��├�罔� ┼� ��� 筥�.����     }
    KATORG_OKPO    : String20;        { ��� �� ����                           }
    KATBANK_MFO1   : String40;        { ��� ���                               }
    KATBANK_SCHET1 : String40;        { 瘍モ                                  }
    KATBANK_NAME   : String;          { ��━キ����┘ �����                    }
    KATBANK_SCHET2 : String40;        { 瘍モ � ���                            }
    KATORG1_NAME   : String;          { ��━.�爍��├�罔� ┼� ��� 筥�.����     }
    KATORG1_OKPO   : String20;        { ��� �� ����                           }
    KATBANK1_MFO1  : String40;        { ��� ���                               }
    KATBANK1_SCHET1: String40;        { 瘍モ                                  }
    KATBANK1_NAME  : String;          { ��━キ����┘ �����                    }
    KATBANK1_SCHET2: String40;        { 瘍モ � ���                            }
    KATPODR_NREC   : Comp;            { ���ム ����瓱                          }
    DANPLZ_CGRPODR : Comp;            { nrec �珮��� ��む�Гカキ┤             }
    KATPODR_CPODR  : Comp;            { Nrec �謌メ�. ��む�Гカキ��            }
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
    FNDANPLZ_CGRPODR=36;
    FNDANPLZ_CPLAT=8;
    FNDANPLZ_CPODR=6;
    FNKATBANK1_MFO1=32;
    FNKATBANK1_NAME=34;
    FNKATBANK1_SCHET1=33;
    FNKATBANK1_SCHET2=35;
    FNKATBANK_MFO1=26;
    FNKATBANK_NAME=28;
    FNKATBANK_SCHET1=27;
    FNKATBANK_SCHET2=29;
    FNKATORG1_NAME=30;
    FNKATORG1_OKPO=31;
    FNKATORG_NAME=24;
    FNKATORG_OKPO=25;
    FNKATPODR_CPODR=37;
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
