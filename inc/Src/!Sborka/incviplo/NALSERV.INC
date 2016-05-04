{$IFDEF __type__}
{������������� ������ : NALSERV "NALSERV" ��������������}
type
  String10        = String[10];
  String80        = String[80];
  String255        = String[255];
  pNALSERV = ^tNALSERV;
  tNALSERV = record   { - NALSERV }
    CCGRNAL        : Comp;            { ccGrNal                               }
    DNALOG         : Date;            { dNalog                                }
    SPGRNAL_NREC   : Comp;            { ����� �����                          }
    SPGRNAL_ATL_LASTDATE: Date;       { ��� ��᫥���� ����䨪�樨            }
    SPGRNAL_ATL_LASTTIME: Time;       { �६� ��᫥���� ����䨪�樨           }
    SPGRNAL_ATL_LASTUSER: Comp;       { ��� ���짮��⥫�                      }
    SPGRNAL_ATL_ORIGINOFFICE: Word;   { ����� ���, � ���஬ ����ᥭ� ������ }
    SPGRNAL_ATL_OWNER: Comp;          { ��� �������� �����                  }
    SPGRNAL_ATL_BRANCH: Comp;         { ������                                }
    CGRNAL         : Comp;            { ��뫪� �� KatGrNal                    }
    CNALOG         : Comp;            { ��뫪� �� ����� ( Katnalog )          }
    NALOG          : Double;          { �⠢�� ������                         }
    SUMNAL         : Double;          { �㬬� ������ � ��⭮� ������� � ���. }
    CVAL           : Comp;            { ��� ������                            }
    NALD1          : Date;            { ��� ��砫� ����⢨�                  }
    NALD2          : Date;            { ��� ����砭�� ����⢨�               }
    SPGRNAL_ISCUSTOM: Word;           { 0-���,1-�室�� � ⠬��.               }
    CCOUNTRY       : Comp;            { -> ��࠭�, ��� ���ன �ਬ���� ����� }
    CORG           : Comp;            { �࣠������-�����⥫� ������         }
    DOPNALOG       : Double;          { ���. �⠢�� ������                    }
    NALUCH         : Word;            { 0-�� �室�� � ���.���, 1-�室��      }
    KATNALOG_NREC  : Comp;            { ����� �����                          }
    KATNALOG_ATL_LASTDATE: Date;      { ��� ��᫥���� ����䨪�樨            }
    KATNALOG_ATL_LASTTIME: Time;      { �६� ��᫥���� ����䨪�樨           }
    KATNALOG_ATL_LASTUSER: Comp;      { ��� ���짮��⥫�                      }
    KATNALOG_ATL_ORIGINOFFICE: Word;  { ����� ���, � ���஬ ����ᥭ� ������ }
    KATNALOG_ATL_OWNER: Comp;         { ��� �������� �����                  }
    KATNALOG_ATL_BRANCH: Comp;        { ������                                }
    KOD            : String10;        { ᨬ��� ������                         }
    NAME           : String80;        { ������������ ������                   }
    FORMULA        : String;          { ��ࠦ���� ���� ����             }
    PRIOR          : Word;            { �ਮ��� ������                      }
    KATNALOG_ISCUSTOM: Word;          { 0-���,1-�室�� � ⠬��.               }
    CVIDNAL        : Comp;            { ��뫪� �� ��� ������                  }
    TIPNALOG       : Word;            { �����./ᯥ��./����.                  }
    NPP            : Word;            { ��� ���஢�� � ����               }
    ISAGREG        : Boolean;         { ��ॣ�஢��� �� �⠢��� - ��/���      }
    OUTUCH         : Word;            { 1-�� �室�� � ����� 業�, 0 - �室�� }
    CUSL           : Comp;            { ��뫪� �� ��������� ����            }
  end;
const
  tiMAININD              = 0;  { PRIOR(nM)                               }

type
    prNALSERV = pNALSERV;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNKATNALOG=1;
    TNSPGRNAL=0;
    FNCCGRNAL=0;
    FNCCOUNTRY=17;
    FNCGRNAL=9;
    FNCNALOG=10;
    FNCORG=18;
    FNCUSL=38;
    FNCVAL=13;
    FNCVIDNAL=33;
    FNDNALOG=1;
    FNDOPNALOG=19;
    FNFORMULA=30;
    FNISAGREG=36;
    FNKATNALOG_ATL_BRANCH=27;
    FNKATNALOG_ATL_LASTDATE=22;
    FNKATNALOG_ATL_LASTTIME=23;
    FNKATNALOG_ATL_LASTUSER=24;
    FNKATNALOG_ATL_ORIGINOFFICE=25;
    FNKATNALOG_ATL_OWNER=26;
    FNKATNALOG_ISCUSTOM=32;
    FNKATNALOG_NREC=21;
    FNKOD=28;
    FNNALD1=14;
    FNNALD2=15;
    FNNALOG=11;
    FNNALUCH=20;
    FNNAME=29;
    FNNPP=35;
    FNOUTUCH=37;
    FNPRIOR=31;
    FNSPGRNAL_ATL_BRANCH=8;
    FNSPGRNAL_ATL_LASTDATE=3;
    FNSPGRNAL_ATL_LASTTIME=4;
    FNSPGRNAL_ATL_LASTUSER=5;
    FNSPGRNAL_ATL_ORIGINOFFICE=6;
    FNSPGRNAL_ATL_OWNER=7;
    FNSPGRNAL_ISCUSTOM=16;
    FNSPGRNAL_NREC=2;
    FNSUMNAL=12;
    FNTIPNALOG=34;
{$ENDIF}