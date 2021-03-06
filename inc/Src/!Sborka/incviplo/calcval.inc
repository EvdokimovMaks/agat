{$IFDEF __type__}
{様様様様様様� ��゛��� : VVALUT "VVALUT" 様様様様様様様}
type
  String255        = String[255];
  pVVALUT = ^tVVALUT;
  tVVALUT = record   { - VVALUT }
    ALLDELOB       : Word;            { AllDelOb                              }
    ALLDELBS       : Word;            { AllDelBS                              }
    MYPLANSNO      : Comp;            { myPlansNo                             }
    CFILVAL        : Comp;            { cFilVal                               }
    MYCASH         : Comp;            { myCash                                }
    MYSPCASH       : Comp;            { mySpCash                              }
    MYTIDKUSER     : Word;            { myTiDkUser                            }
    MYMODE         : Word;            { myMode                                }
    MYFILTR        : Word;            { myFiltr                               }
    MYMAKEPROV     : Word;            { myMakeProv                            }
    DOPMAKEPROV    : Word;            { DopMakeProv                           }
    ALLPICK        : Word;            { AllPick                               }
    BEGDATE        : Date;            { BegDate                               }
    ENDDATE        : Date;            { EndDate                               }
    DBKAU          : String;          { �諤�Ε�┘ ���ム 0                     }
    KRKAU          : String;          { �諤�Ε�┘ ���ム 1                     }
    KRKAU1         : String;          { �諤�Ε�┘ ���ム 2                     }
    DBPODR         : String;          { �諤�Ε�┘ ���ム 3                     }
    KRPODR         : String;          { �諤�Ε�┘ ���ム 4                     }
    KRPODR1        : String;          { �諤�Ε�┘ ���ム 5                     }
    DEBET          : String;          { �諤�Ε�┘ ���ム 6                     }
    KREDITPLUS     : String;          { �諤�Ε�┘ ���ム 7                     }
    KREDITMINUS    : String;          { �諤�Ε�┘ ���ム 8                     }
  end;

type
    prVVALUT = pVVALUT;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNBASEFIN=5;
    TNKLVAL=0;
    TNOBOROT=3;
    TNOBOROTSYN=6;
    TNPICK=7;
    TNPLPOR=2;
    TNSOPRHOZ=4;
    TNVALUT=1;
    FNALLDELBS=1;
    FNALLDELOB=0;
    FNALLPICK=11;
    FNBEGDATE=12;
    FNCFILVAL=3;
    FNDBKAU=28;
    FNDBPODR=60;
    FNDEBET=66;
    FNDOPMAKEPROV=10;
    FNENDDATE=13;
    FNKREDITMINUS=72;
    FNKREDITPLUS=69;
    FNKRKAU=43;
    FNKRKAU1=58;
    FNKRPODR=62;
    FNKRPODR1=64;
    FNMYCASH=4;
    FNMYFILTR=8;
    FNMYMAKEPROV=9;
    FNMYMODE=7;
    FNMYPLANSNO=2;
    FNMYSPCASH=5;
    FNMYTIDKUSER=6;
    tbBYALLOB=3;
    tbBYVALOB=65539;
    tbOBOROT_4_MODIF_0=131075;
    tbBYCPICK=65543;
    tbPICK_4_MODIF_0=131079;
    tbVALUT_4_MODIF_0=65537;
{$ENDIF}
{$IFDEF __Type__}
type
   prVVALUTVVALUT = pVVALUT;
   prCALCVAL = pVVALUT;
   pCALCVAL = pVVALUT;
{$endif}
