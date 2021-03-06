{$IFDEF __type__}
{様様様様様様� ��゛��� : NALSERV "NALSERV" 様様様様様様様}
type
  String10        = String[10];
  String80        = String[80];
  String255        = String[255];
  pNALSERV = ^tNALSERV;
  tNALSERV = record   { - NALSERV }
    CCGRNAL        : Comp;            { ccGrNal                               }
    DNALOG         : Date;            { dNalog                                }
    SPGRNAL_NREC   : Comp;            { ���ム ����瓱                          }
    SPGRNAL_ATL_LASTDATE: Date;       { ���� ��甄イ�ォ ��え筥��罔�            }
    SPGRNAL_ATL_LASTTIME: Time;       { �爛�� ��甄イ�ォ ��え筥��罔�           }
    SPGRNAL_ATL_LASTUSER: Comp;       { ��� ���讌���皀��                      }
    SPGRNAL_ATL_ORIGINOFFICE: Word;   { ���ム �筥��, � ��皰牀� ���メキ� ����瘡 }
    SPGRNAL_ATL_OWNER: Comp;          { ��� ←�ぅ�趾� ����瓱                  }
    SPGRNAL_ATL_BRANCH: Comp;         { �┼���                                }
    CGRNAL         : Comp;            { 瘁覊�� �� KatGrNal                    }
    CNALOG         : Comp;            { 瘁覊�� �� ����� ( Katnalog )          }
    NALOG          : Double;          { 痰�→� ������                         }
    SUMNAL         : Double;          { 痺��� ������ � 竍モ��� イ┃�肓 � ���. }
    CVAL           : Comp;            { ��� ���鈞�                            }
    NALD1          : Date;            { ���� ������ ぅ�痰※�                  }
    NALD2          : Date;            { ���� ��������� ぅ�痰※�               }
    SPGRNAL_ISCUSTOM: Word;           { 0-�モ,1-√�え� � �����.               }
    CCOUNTRY       : Comp;            { -> 痰����, か� ��皰牀� �爬�キ━ ����� }
    CORG           : Comp;            { �爍��├�罔�-���竍�皀�� ������         }
    DOPNALOG       : Double;          { ぎ�. 痰�→� ������                    }
    NALUCH         : Word;            { 0-�� √�え� � ���.竍モ, 1-√�え�      }
    TOLERANS       : array [1..2] of Double;{ 踳ぅ�讚�� �皖���キ┘ 珮膈諷 ������� }
    WCONTROL       : Word;            { ���矗��� �皖���キ��                   }
    KATNALOG_NREC  : Comp;            { ���ム ����瓱                          }
    KATNALOG_ATL_LASTDATE: Date;      { ���� ��甄イ�ォ ��え筥��罔�            }
    KATNALOG_ATL_LASTTIME: Time;      { �爛�� ��甄イ�ォ ��え筥��罔�           }
    KATNALOG_ATL_LASTUSER: Comp;      { ��� ���讌���皀��                      }
    KATNALOG_ATL_ORIGINOFFICE: Word;  { ���ム �筥��, � ��皰牀� ���メキ� ����瘡 }
    KATNALOG_ATL_OWNER: Comp;         { ��� ←�ぅ�趾� ����瓱                  }
    KATNALOG_ATL_BRANCH: Comp;        { �┼���                                }
    KOD            : String10;        { 瓱�〓� ������                         }
    NAME           : String80;        { ��━キ����┘ ������                   }
    FORMULA        : String;          { �諤�Ε�┘ 筮爼祀� ��瘍モ�             }
    PRIOR          : Word;            { �爬�爬皀� ������                      }
    KATNALOG_ISCUSTOM: Word;          { 0-�モ,1-√�え� � �����.               }
    CVIDNAL        : Comp;            { �瘠��� �� ※� ������                  }
    TIPNALOG       : Word;            { �あ��./甎ユ��./����.                  }
    NPP            : Word;            { ��� 甌珥�牀→� � �ョ�皋               }
    ISAGREG        : Boolean;         { ��爛��牀��碎 �� 痰�→�� - ��/�モ      }
    OUTUCH         : Word;            { 1-�� √�え� � 竍モ�竡 罐��, 0 - √�え� }
    CUSL           : Comp;            { 瘁覊�� �� ������≪� 竅�磽�            }
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
    FNCUSL=42;
    FNCVAL=13;
    FNCVIDNAL=37;
    FNDNALOG=1;
    FNDOPNALOG=19;
    FNFORMULA=34;
    FNISAGREG=40;
    FNKATNALOG_ATL_BRANCH=31;
    FNKATNALOG_ATL_LASTDATE=26;
    FNKATNALOG_ATL_LASTTIME=27;
    FNKATNALOG_ATL_LASTUSER=28;
    FNKATNALOG_ATL_ORIGINOFFICE=29;
    FNKATNALOG_ATL_OWNER=30;
    FNKATNALOG_ISCUSTOM=36;
    FNKATNALOG_NREC=25;
    FNKOD=32;
    FNNALD1=14;
    FNNALD2=15;
    FNNALOG=11;
    FNNALUCH=20;
    FNNAME=33;
    FNNPP=39;
    FNOUTUCH=41;
    FNPRIOR=35;
    FNSPGRNAL_ATL_BRANCH=8;
    FNSPGRNAL_ATL_LASTDATE=3;
    FNSPGRNAL_ATL_LASTTIME=4;
    FNSPGRNAL_ATL_LASTUSER=5;
    FNSPGRNAL_ATL_ORIGINOFFICE=6;
    FNSPGRNAL_ATL_OWNER=7;
    FNSPGRNAL_ISCUSTOM=16;
    FNSPGRNAL_NREC=2;
    FNSUMNAL=12;
    FNTIPNALOG=38;
    FNTOLERANS1=21;
    FNTOLERANS2=22;
    FNWCONTROL=24;
{$ENDIF}
