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
    BONEEDKILLPICK : Boolean;         { boNeedKillPick                        }
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
    WFORMAT        : Word;            { wFormat                               }
    VIDDOG         : Comp;            { VidDog                                }
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
    TNBASEDOC=12;
    TNBASEDOC2=17;
    TNCALPLAN=22;
    TNDOGOVOR=8;
    TNDOGOVOR1=9;
    TNGROUPSCH=0;
    TNGROUPSCH2=3;
    TNKATNOTES=10;
    TNKATNOTES1=11;
    TNKATNOTESBDOC=19;
    TNKATNOTESBDOC2=20;
    TNKATNOTESPLPOR=21;
    TNKATORG=4;
    TNKATORG1=5;
    TNKATORG2=18;
    TNPICK=6;
    TNPICK2=7;
    TNPICKREP=24;
    TNPLPOR=25;
    TNSPGRSCH=13;
    TNSPGRSCH2=14;
    TNSPGRSCH3=15;
    TNSPGRSCH4=16;
    TNSUBKAT=1;
    TNSUBKAT2=2;
    TNUSERDESKREP=23;
    TCGRSCHVIDDOG=75;
    FNBONEEDKILLPICK=6;
    FNISFILTRKONTR=20;
    FNISPICGR=7;
    FNISPICKED=24;
    FNISREPORT=9;
    FNKOD=73;
    FNNAME=72;
    FNNEEDBACK=19;
    FNNODE=10;
    FNONELEVEL=8;
    FNPICKEDLABEL=25;
    FNREC=17;
    FNTEK1=13;
    FNTEK2=14;
    FNTEKLEN=15;
    FNTEMPS=16;
    FNTMPCOMP=11;
    FNTMPCOMP_1=12;
    FNVIDDOG=22;
    FNWASRESET=18;
    FNWCURFRMT=2;
    FNWFORMAT=21;
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
    tbPICK2_4_MODIF_0=7;
    tbPICK2_4_MODIF_1=65543;
    tb4_MODIF_2=131079;
    tbPICKREP_4_MODIF_0=24;
    tbUSERDESKREP_4_MODIF_0=23;
{$ENDIF}
{$IFDEF __Type__}
type
   prGETGROUPSCHGETGROUPSCH = pGETGROUPSCH;
{$endif}
