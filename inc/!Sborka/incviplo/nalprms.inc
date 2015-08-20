{$IFDEF __type__}
{═════════════ Таблица : NALRP_V "NALRP_V" ══════════════}
type
  String255        = String[255];
  String2        = String[2];
  String150        = String[150];
  String220        = String[220];
  String80        = String[80];
  String250        = String[250];
  pNALRP_V = ^tNALRP_V;
  tNALRP_V = record   { - NALRP_V }
    PXLREPSETUP    : TReferenceBuf;   { pxlrepsetup                           }
    SXLTFILENAME   : String;          { sXLTFileName                          }
    SXLSFILENAME   : String;          { sXLSFileName                          }
    FLTMC          : String;          { fltMC                                 }
    FLTGR          : String;          { fltGr                                 }
    FLTPODR        : String;          { fltPodr                               }
    FLTMOL         : String;          { fltMOL                                }
    FLTPART        : String;          { fltPart                               }
    FLTPRLST       : String;          { fltPrLst                              }
    FLTVNKLF       : String;          { fltVnKlf                              }
    LFLTR          : String;          { lFltr                                 }
    LPAROTCH       : String;          { lParOtch                              }
    ID             : String;          { ID                                    }
    TYPEREPORT     : Word;            { typeReport                            }
    CBVED          : Word;            { cbVed                                 }
    CBFILTER       : Word;            { cbFilter                              }
    RBSORT         : Word;            { rbSort                                }
    RBGROUP        : Word;            { rbGroup                               }
    RBGROUPADD     : Word;            { rbGroupAdd                            }
    GROUPPOS       : Word;            { GroupPos                              }
    CLASSCODE      : Word;            { ClassCode                             }
    CLASSUNI       : Word;            { ClassUni                              }
    CBFILTEROLD    : Word;            { cbFilterOld                           }
    CBVEDOLD       : Word;            { cbVedOld                              }
    SKPR           : Word;            { SkPr                                  }
    KOLPICK        : Word;            { KolPick                               }
    TOC            : Word;            { toc                                   }
    VDRMET         : Word;            { vDrMet                                }
    WROUNDS        : Word;            { wRoundS                               }
    DDATE          : Date;            { dDate                                 }
    DFILTER1       : Date;            { dFilter1                              }
    DFILTER2       : Date;            { dFilter2                              }
    CKLPRICE       : Comp;            { cKlPrice                              }
    CSEG           : LongInt;         { cSeg                                  }
    CLASSNAME      : String;          { ClassName                             }
    SEGNAME        : String;          { SegName                               }
    PCKEXTCLASS    : String;          { pckExtClass                           }
    DSK_SKPR       : String2;         { dsk_SkPr                              }
    WLIST          : Word;            { код списка (таблицы)                  }
    PICK_CREC      : Comp;            { номер элемента в выбираемой таблице   }
    KATPODR_NREC   : Comp;            { Номер записи                          }
    KATPODR_NAME   : String150;       { наименование подразделения            }
    KATMC_NREC     : Comp;            { Номер записи                          }
    KATMC_NAME     : String;          { наименование товара                   }
    GROUPMC_NREC   : Comp;            { Номер записи                          }
    GROUPMC_NAME   : String220;       { Наименование группы                   }
    KATMOL_NREC    : Comp;            { Номер записи                          }
    KATMOL_NAME    : String80;        { ФИО                                   }
    EXCLASSSEG_NREC: Comp;            { NREC                                  }
    EXCLASSSEG_CLASSCODE: Word;       { Код классификации                     }
    EXCLASSSEG_NAME: String250;       { Имя уровня                            }
    EXCLASSNAME_CLASSCODE: Word;      { Код классификации                     }
    EXCLASSNAME_NAME: String80;       { Имя классификатора                    }
    KATPARTY_NREC  : Comp;            { Номер записи                          }
    KATPARTY_NAME  : String;          { наименование партии                   }
    KLPRICE_NREC   : Comp;            { Номер записи                          }
    KLPRICE_NAME   : String80;        { наименование                          }
  end;

type
    prNALRP_V = pNALRP_V;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNEXCLASSNAME=7;
    TNEXCLASSSEG=6;
    TNGROUPMC=5;
    TNKATMC=0;
    TNKATMOL=3;
    TNKATPARTY=4;
    TNKATPODR=2;
    TNKLPRICE=8;
    TNPICK=1;
    FNCBFILTER=15;
    FNCBFILTEROLD=22;
    FNCBVED=14;
    FNCBVEDOLD=23;
    FNCKLPRICE=32;
    FNCLASSCODE=20;
    FNCLASSNAME=34;
    FNCLASSUNI=21;
    FNCSEG=33;
    FNDDATE=29;
    FNDFILTER1=30;
    FNDFILTER2=31;
    FNDSK_SKPR=37;
    FNEXCLASSNAME_CLASSCODE=61;
    FNEXCLASSNAME_NAME=62;
    FNEXCLASSSEG_CLASSCODE=59;
    FNEXCLASSSEG_NAME=60;
    FNEXCLASSSEG_NREC=58;
    FNFLTGR=4;
    FNFLTMC=3;
    FNFLTMOL=6;
    FNFLTPART=7;
    FNFLTPODR=5;
    FNFLTPRLST=8;
    FNFLTVNKLF=9;
    FNGROUPMC_NAME=54;
    FNGROUPMC_NREC=53;
    FNGROUPPOS=19;
    FNID=12;
    FNKATMC_NAME=51;
    FNKATMC_NREC=50;
    FNKATMOL_NAME=57;
    FNKATMOL_NREC=56;
    FNKATPARTY_NAME=65;
    FNKATPARTY_NREC=64;
    FNKATPODR_NAME=48;
    FNKATPODR_NREC=47;
    FNKLPRICE_NAME=67;
    FNKLPRICE_NREC=66;
    FNKOLPICK=25;
    FNLFLTR=10;
    FNLPAROTCH=11;
    FNPCKEXTCLASS=36;
    FNPICK_CREC=46;
    FNPXLREPSETUP=0;
    FNRBGROUP=17;
    FNRBGROUPADD=18;
    FNRBSORT=16;
    FNSEGNAME=35;
    FNSKPR=24;
    FNSXLSFILENAME=2;
    FNSXLTFILENAME=1;
    FNTOC=26;
    FNTYPEREPORT=13;
    FNVDRMET=27;
    FNWLIST=38;
    FNWROUNDS=28;
    tbEXCLASSNAME_4_MODIF_0=7;
    tbEXCLASSNAME_4_MODIF_1=65543;
    tbEXCLASSSEG_4_MODIF_0=6;
    tbEXCLASSSEG_4_MODIF_1=65542;
    tbGROUPMC_4_MODIF_0=5;
    tbKATMC_4_MODIF_0=0;
    tbKATMOL_4_MODIF_0=3;
    tbKATPARTY_4_MODIF_0=4;
    tbKATPODR_4_MODIF_0=2;
    tbKLPRICE_4_MODIF_0=8;
    tbKLPRICE_4_MODIF_1=65544;
    tbPICK_4_MODIF_0=1;
    tbPICK_4_MODIF_1=65537;
    tb4_MODIF_2=131073;
    tb4_MODIF_3=196609;
    tb4_MODIF_4=262145;
    tb4_MODIF_5=327681;
    tb4_MODIF_6=393217;
    tb4_MODIF_7=458753;
    tb4_MODIF_8=524289;
    tb4_MODIF_9=589825;
    tb4_MODIF_10=655361;
{$ENDIF}
{$IFDEF __Type__}
type
   prNALRP_VNALRP_V = pNALRP_V;
{$endif}
