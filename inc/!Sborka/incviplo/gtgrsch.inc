{$IFDEF __type__}
{═════════════ Таблица : GETGROUPSCH "GETGROUPSCH" ══════════════}
type
  String20        = String[20];
  String255        = String[255];
  String120        = String[120];
  pGETGROUPSCH = ^tGETGROUPSCH;
  tGETGROUPSCH = record   { - GETGROUPSCH }
    WMODE          : Word;            { wMode                                 }
    WTITLE         : Word;            { wTitle                                }
    WCURFRMT       : Word;            { wCurFrmt                              }
    WSOME          : Boolean;         { wSome                                 }
    WGSCH          : Comp;            { wGSch                                 }
    WISPICGR       : Boolean;         { wIsPicGr                              }
    ISPICGR        : Boolean;         { IsPicGr                               }
    ONELEVEL       : Boolean;         { OneLevel                              }
    ISREPORT       : Boolean;         { IsReport                              }
    NODE           : Comp;            { Node                                  }
    TMPCOMP        : Comp;            { TmpComp                               }
    TMPCOMP_1      : Comp;            { TmpComp_1                             }
    TEK1           : String20;        { tek1                                  }
    TEK2           : String20;        { tek2                                  }
    TEKLEN         : Byte;            { teklen                                }
    TEMPS          : String;          { temps                                 }
    REC            : Comp;            { rec                                   }
    WASRESET       : Boolean;         { WasReset                              }
    NEEDBACK       : Boolean;         { NeedBack                              }
    ISFILTRKONTR   : Boolean;         { isFiltrKontr                          }
    FORMAT         : Word;            { format                                }
    VIDDOG         : Comp;            { VidDog                                }
    IEXTATTR       : TReferenceBuf;   { iExtAttr                              }
    ISPICKED       : Boolean;         { Выражение номер 0                     }
    PICKEDLABEL    : String;          { Выражение номер 1                     }
    NAME           : String120;       { наим.группы                           }
    KOD            : String20;        { Код группы                            }
  end;
const
  tiBYNAME               = 0;  { NAME(nM Up)                             }
  tiBYKOD                = 1;  { KOD(nM Up)                              }

type
    prGETGROUPSCH = pGETGROUPSCH;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNBASEDOC=11;
    TNBASEDOC2=15;
    TNCALPLAN=19;
    TNDOGOVOR=7;
    TNDOGOVOR1=8;
    TNGROUPSCH=0;
    TNGROUPSCH2=3;
    TNKATNOTES=9;
    TNKATNOTES1=10;
    TNKATNOTESBDOC=17;
    TNKATNOTESBDOC2=18;
    TNKATORG=4;
    TNKATORG1=5;
    TNKATORG2=16;
    TNPICK=6;
    TNPICKREP=21;
    TNSPGRSCH=12;
    TNSPGRSCH2=13;
    TNSPGRSCH3=14;
    TNSUBKAT=1;
    TNSUBKAT2=2;
    TNUSERDESKREP=20;
    TCGRSCHVIDDOG=68;
    FNFORMAT=20;
    FNIEXTATTR=22;
    FNISFILTRKONTR=19;
    FNISPICGR=6;
    FNISPICKED=24;
    FNISREPORT=8;
    FNKOD=66;
    FNNAME=65;
    FNNEEDBACK=18;
    FNNODE=9;
    FNONELEVEL=7;
    FNPICKEDLABEL=25;
    FNREC=16;
    FNTEK1=12;
    FNTEK2=13;
    FNTEKLEN=14;
    FNTEMPS=15;
    FNTMPCOMP=10;
    FNTMPCOMP_1=11;
    FNVIDDOG=21;
    FNWASRESET=17;
    FNWCURFRMT=2;
    FNWGSCH=4;
    FNWISPICGR=5;
    FNWMODE=0;
    FNWSOME=3;
    FNWTITLE=1;
    tbBOUNDNODENAME=0;
    tbBOUNDNODEKOD=65536;
    tbKONTRBOUND=131072;
    tbGROUPSCH_4_MODIF_0=196608;
    tbGROUPSCH_4_MODIF_1=262144;
    tbPICK_4_MODIF_0=65542;
    tbPICK_4_MODIF_1=131078;
    tbPICKREP_4_MODIF_0=21;
    tbUSERDESKREP_4_MODIF_0=20;
{$ENDIF}
{$IFDEF __Type__}
type
   prGETGROUPSCHGETGROUPSCH = pGETGROUPSCH;
{$endif}
