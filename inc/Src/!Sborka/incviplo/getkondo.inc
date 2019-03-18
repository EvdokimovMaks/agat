{$IFDEF __type__}
{อออออออออออออ ’ กซจๆ  : GETKONDO "GETKONDO" ออออออออออออออ}
type
  String255        = String[255];
  pGETKONDO = ^tGETKONDO;
  tGETKONDO = record   { - GETKONDO }
    ALLORG         : Word;            { AllOrg                                }
    TPDO           : Word;            { TpDO                                  }
    WPARAM         : Word;            { wParam                                }
    WTIPDO         : Word;            { wTipDO                                }
    MYSTOPPED      : Boolean;         { MyStopped                             }
    D1             : Date;            { d1                                    }
    D2             : Date;            { d2                                    }
    PMARKER        : TReferenceBuf;   { pMarker                               }
    VALDO          : String;          { ๋เ ฆฅญจฅ ญฎฌฅเ 0                     }
  end;

type
    prGETKONDO = pGETKONDO;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNBASEDOC=0;
    TNBASEFIN=5;
    TNKATORG=1;
    TNKATSOPR=6;
    TNPICK6=3;
    TNPMARKER=7;
    TNSTEPDOC=4;
    TNTEMPDB=2;
    TCSETRUB=21;
    TCSETRUBANDRUBVAL=25;
    TCSETRUBANDVAL=24;
    TCSETRUBVAL=22;
    TCSETVAL=23;
    TCSETVALANDRUBVAL=26;
    FNALLORG=0;
    FND1=5;
    FND2=6;
    FNMYSTOPPED=4;
    FNPMARKER=7;
    FNTPDO=1;
    FNVALDO=9;
    FNWPARAM=2;
    FNWTIPDO=3;
    tbBASEDOC_4_MODIF_0=65536;
    tbPICK6_4_MODIF_0=3;
    tbRMTEMPDB1=7;
    tbRMTEMPDB2=65538;
{$ENDIF}
{$IFDEF __Type__}
type
   prGETKONDOGETKONDO = pGETKONDO;
{$endif}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : L_COMMON::ILMARKER_PMARKER "L_COMMON::ILMarker=>PMARKER" ออออออออออออออ}
type
  pILMARKER_PMARKER = ^tILMARKER_PMARKER;
  tILMARKER_PMARKER = record   { - L_COMMON::ILMarker=>PMARKER }
    PNREC          : Comp;            { pNRec                                 }
    OWNER          : LongInt;         { Owner                                 }
    IMAGENAME      : String;          { ImageName                             }
    STORENAME      : String;          { StoreName                             }
    AUTOSAVE       : Boolean;         { AutoSave                              }
    LOADAUTO       : Boolean;         { LoadAuto                              }
    COUNT          : LongInt;         { Count                                 }
    ISCAPTION      : Boolean;         { IsCaption                             }
    CAPTION        : String;          { Caption                               }
    SHOWCAPTISZERO : Boolean;         { ShowCaptIsZero                        }
    DISABLE        : Boolean;         { Disable                               }
    SENDPOSCHANGEDWHITHGROUPDELETE: Boolean;{ SendPosChangedWhithGroupDelete  }
    ISMARKNESTEDTREENODE: Boolean;    { IsMarkNestedTreeNode                  }
    ISMARKTREENODEUP: Boolean;        { IsMarkTreeNodeUp                      }
    ISNEEDCHECKDELETE: Boolean;       { IsNeedCheckDelete                     }
    NPP            : LongInt;         { NPP                                   }
    KOL            : Double;          { Kol                                   }
    WPICK          : Word;            { wPick                                 }
    FIRSTMARKREC   : Comp;            { FirstMarkRec                          }
  end;
const
  tiIBYNREC              = 0;  { PNREC(Un M Up)                          }
  tiIBYNPP               = 1;  { NPP(M Up)                               }

const
  mtILMARKER_PMARKER = 'L_COMMON::ILMARKER=>PMARKER';
{$endif __MTtabledef__}
