{$IFDEF __type__}
{═════════════ Таблица : GETSOMKATNAZNA "GETSOMKATNAZNA" ══════════════}
type
  String255        = String[255];
  String20        = String[20];
  String250        = String[250];
  pGETSOMKATNAZNA = ^tGETSOMKATNAZNA;
  tGETSOMKATNAZNA = record   { - GETSOMKATNAZNA }
    OKONE          : Boolean;         { OkOne                                 }
    BDONTSHOWMESSAGE: Boolean;        { bDontShowMessage                      }
    PKATNAZNA      : Comp;            { pKatNazna                             }
    NODE           : Comp;            { Node                                  }
    NEWNREC        : Comp;            { NewNRec                               }
    TMPCOMP        : Comp;            { TmpComp                               }
    CURFORMAT      : Word;            { curFormat                             }
    ONELEVEL       : Boolean;         { OneLevel                              }
    BVIEWONLY      : Boolean;         { bViewOnly                             }
    KREATELEVEL    : Boolean;         { KreateLevel                           }
    BSORTNAME      : Boolean;         { bSortName                             }
    MARKERKATNAZNA : LongInt;         { MarkerKatNazna                        }
    IBOUND         : LongInt;         { iBound                                }
    INDEXKATNAZNA  : LongInt;         { IndexKatNazna                         }
    TMPCOMP_1      : Comp;            { tmpComp_1                             }
    OLDCURROW      : SmallInt;        { oldCurRow                             }
    PICKED         : String;          { Выражение номер 0                     }
    KATNAZNA_NREC  : Comp;            { Номер записи                          }
    KATNAZNA_CSTZATR: Comp;           { Ссылка на статью затрат               }
    CSMET          : Comp;            { Ссылка на абстр. бюджет               }
    COWNER         : Comp;            { Ссылка на вышестоящее назначение      }
    KATNAZNA_NAME  : String;          { наименование назначения               }
    NAZCODE        : String20;        { Код назначения                        }
    STZATR_NAME    : String250;       { Наименование статьи расходов/доходов  }
    VIDNAZN        : Word;            { вид назначения(1-нет движ. в произв)  }
    VIDRASX        : Word;            { Основные/накладные расходы (0/1)      }
  end;

type
    prGETSOMKATNAZNA = pGETSOMKATNAZNA;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNALLMEMO=5;
    TNKATNAZNA=0;
    TNKATNAZNA2=1;
    TNKATNAZNAIE=2;
    TNSMET=6;
    TNSTZATR=4;
    TNSUBKAT=3;
    FNBDONTSHOWMESSAGE=1;
    FNBSORTNAME=10;
    FNBVIEWONLY=8;
    FNCOWNER=26;
    FNCSMET=24;
    FNCURFORMAT=6;
    FNIBOUND=12;
    FNINDEXKATNAZNA=13;
    FNKATNAZNA_CSTZATR=19;
    FNKATNAZNA_NAME=29;
    FNKATNAZNA_NREC=16;
    FNKREATELEVEL=9;
    FNMARKERKATNAZNA=11;
    FNNAZCODE=30;
    FNNEWNREC=4;
    FNNODE=3;
    FNOKONE=0;
    FNOLDCURROW=15;
    FNONELEVEL=7;
    FNPICKED=17;
    FNPKATNAZNA=2;
    FNSTZATR_NAME=32;
    FNTMPCOMP=5;
    FNTMPCOMP_1=14;
    FNVIDNAZN=33;
    FNVIDRASX=34;
    tbBOUNDNODENAME=0;
    tbBOUNDNODENAZCODE=65536;
    tbBYNAME=131072;
    tbBYCODE=196608;
    tbKATNAZNA_4_MODIF_0=262144;
    tb4_MODIF_1=327680;
    tb4_MODIF_2=393216;
    tb4_MODIF_3=458752;
    tbKATNAZNA2_4_MODIF_0=1;
{$ENDIF}
{$IFDEF __Type__}
type
   prGETSOMKATNAZNAGETSOMKATNAZNA = pGETSOMKATNAZNA;
{$endif}
