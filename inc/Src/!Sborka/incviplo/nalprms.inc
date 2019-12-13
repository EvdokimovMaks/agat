{$IFDEF __type__}
{═════════════ Таблица : NALRP_V "NALRP_V" ══════════════}
type
  String255        = String[255];
  String2        = String[2];
  String220        = String[220];
  String250        = String[250];
  String80        = String[80];
  pNALRP_V = ^tNALRP_V;
  tNALRP_V = record   { - NALRP_V }
    PXLREPSETUP    : TReferenceBuf;   { pxlrepsetup                           }
    PXL            : TReferenceBuf;   { pXL                                   }
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
    TOC            : Word;            { toc                                   }
    VDRMET         : Word;            { vDrMet                                }
    WROUNDS        : Word;            { wRoundS                               }
    DDATE          : Date;            { dDate                                 }
    DFILTER1       : Date;            { dFilter1                              }
    DFILTER2       : Date;            { dFilter2                              }
    CKLPRICE       : Comp;            { cKlPrice                              }
    CSEG           : LongInt;         { cSeg                                  }
    KOLPICK        : LongInt;         { KolPick                               }
    CLASSNAME      : String;          { ClassName                             }
    SEGNAME        : String;          { SegName                               }
    PCKEXTCLASS    : String;          { pckExtClass                           }
    DSK_SKPR       : String2;         { dsk_SkPr                              }
    WLIST          : Word;            { код списка (таблицы)                  }
    PICK_CREC      : Comp;            { номер элемента в выбираемой таблице   }
    KATPODR_NREC   : Comp;            { Номер записи                          }
    KATPODR_NAME   : String;          { наименование подразделения            }
    KATMC_NREC     : Comp;            { Номер записи                          }
    KATMC_NAME     : String;          { наименование товара                   }
    GROUPMC_NREC   : Comp;            { Номер записи                          }
    GROUPMC_NAME   : String220;       { Наименование группы                   }
    KATMOL_NREC    : Comp;            { Номер записи                          }
    KATMOL_NAME    : String;          { ФИО                                   }
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
    FNCBFILTER=16;
    FNCBFILTEROLD=23;
    FNCBVED=15;
    FNCBVEDOLD=24;
    FNCKLPRICE=32;
    FNCLASSCODE=21;
    FNCLASSNAME=35;
    FNCLASSUNI=22;
    FNCSEG=33;
    FNDDATE=29;
    FNDFILTER1=30;
    FNDFILTER2=31;
    FNDSK_SKPR=38;
    FNEXCLASSNAME_CLASSCODE=62;
    FNEXCLASSNAME_NAME=63;
    FNEXCLASSSEG_CLASSCODE=60;
    FNEXCLASSSEG_NAME=61;
    FNEXCLASSSEG_NREC=59;
    FNFLTGR=5;
    FNFLTMC=4;
    FNFLTMOL=7;
    FNFLTPART=8;
    FNFLTPODR=6;
    FNFLTPRLST=9;
    FNFLTVNKLF=10;
    FNGROUPMC_NAME=55;
    FNGROUPMC_NREC=54;
    FNGROUPPOS=20;
    FNID=13;
    FNKATMC_NAME=52;
    FNKATMC_NREC=51;
    FNKATMOL_NAME=58;
    FNKATMOL_NREC=57;
    FNKATPARTY_NAME=66;
    FNKATPARTY_NREC=65;
    FNKATPODR_NAME=49;
    FNKATPODR_NREC=48;
    FNKLPRICE_NAME=68;
    FNKLPRICE_NREC=67;
    FNKOLPICK=34;
    FNLFLTR=11;
    FNLPAROTCH=12;
    FNPCKEXTCLASS=37;
    FNPICK_CREC=47;
    FNPXL=1;
    FNPXLREPSETUP=0;
    FNRBGROUP=18;
    FNRBGROUPADD=19;
    FNRBSORT=17;
    FNSEGNAME=36;
    FNSKPR=25;
    FNSXLSFILENAME=3;
    FNSXLTFILENAME=2;
    FNTOC=26;
    FNTYPEREPORT=14;
    FNVDRMET=27;
    FNWLIST=39;
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
