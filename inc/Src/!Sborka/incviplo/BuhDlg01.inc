{$IFDEF __type__}
{═════════════ Таблица : VBUHDLG "VBUHDLG" ══════════════}
type
  String21        = String[21];
  String255        = String[255];
  String2        = String[2];
  pVBUHDLG = ^tVBUHDLG;
  tVBUHDLG = record   { - VBUHDLG }
    WTUNE1         : Word;            { wTune1                                }
    WTUNE2         : Word;            { wTune2                                }
    WTUNE3         : Word;            { wTune3                                }
    WTUNE4         : Word;            { wTune4                                }
    WTUNE5         : Word;            { wTune5                                }
    WTUNE6         : Word;            { wTune6                                }
    IWTUNE1        : SmallInt;        { iwTune1                               }
    IWTUNE2        : SmallInt;        { iwTune2                               }
    IWTUNE3        : SmallInt;        { iwTune3                               }
    IWTUNE4        : SmallInt;        { iwTune4                               }
    IWTUNE5        : SmallInt;        { iwTune5                               }
    IWTUNE6        : SmallInt;        { iwTune6                               }
    ISTUNE1        : SmallInt;        { isTune1                               }
    ISTUNE2        : SmallInt;        { isTune2                               }
    ISTUNE3        : SmallInt;        { isTune3                               }
    WPARAM1        : Word;            { wParam1                               }
    WPARAM2        : Word;            { wParam2                               }
    WPARAM3        : Word;            { wParam3                               }
    WREPORT        : Word;            { wReport                               }
    MYPLANSNO      : Comp;            { myPlansNo                             }
    REPSALDO       : Word;            { RepSaldo                              }
    REPTYPE        : Word;            { RepType                               }
    REPSORT        : Word;            { RepSort                               }
    REPVAL         : Word;            { RepVal                                }
    SODRMODE       : Word;            { SodrMode                              }
    REPFLT         : Word;            { RepFlt                                }
    DAT_M_OT       : Date;            { Dat_M_Ot                              }
    BEGDATE        : Date;            { BegDate                               }
    ENDDATE        : Date;            { EndDate                               }
    _DLGSCHET      : String21;        { _DlgSchet                             }
    _DLGSUBSCH     : String21;        { _DlgSubSch                            }
    _DLGKATPODR    : Comp;            { _DlgKatPodr                           }
    _DLGBACKPODR   : Word;            { _DlgBackPodr                          }
    _DLGPOSTPOL    : Comp;            { _DlgPostPol                           }
    _DLGBACKPP     : Word;            { _DlgBackPP                            }
    _DLGTBLKAU1    : Word;            { _DlgTblKau1                           }
    _DLGRECKAU1    : Comp;            { _DlgRecKau1                           }
    _DLGBACKKAU1   : Word;            { _DlgBackKau1                          }
    _DLGTBLKAU2    : Word;            { _DlgTblKau2                           }
    _DLGRECKAU2    : Comp;            { _DlgRecKau2                           }
    _DLGBACKKAU2   : Word;            { _DlgBackKau2                          }
    _DLGTBLKAU3    : Word;            { _DlgTblKau3                           }
    _DLGRECKAU3    : Comp;            { _DlgRecKau3                           }
    _DLGBACKKAU3   : Word;            { _DlgBackKau3                          }
    _DLGTBLKAU4    : Word;            { _DlgTblKau4                           }
    _DLGRECKAU4    : Comp;            { _DlgRecKau4                           }
    _DLGBACKKAU4   : Word;            { _DlgBackKau4                          }
    _DLGTBLKAU5    : Word;            { _DlgTblKau5                           }
    _DLGRECKAU5    : Comp;            { _DlgRecKau5                           }
    _DLGBACKKAU5   : Word;            { _DlgBackKau5                          }
    _DLGTBLKAU6    : Word;            { _DlgTblKau6                           }
    _DLGRECKAU6    : Comp;            { _DlgRecKau6                           }
    _DLGBACKKAU6   : Word;            { _DlgBackKau6                          }
    _DLGKLVAL      : Comp;            { _DlgKlVal                             }
    _DLGTIDKUSER   : Word;            { _DlgTiDkUser                          }
    _DLGVALUT      : Comp;            { _DlgValut                             }
    _DLGCASHBANK   : Comp;            { _DlgCashBank                          }
    _DLGSPCASH     : Comp;            { _DlgSpCash                            }
    _DLGCOMP1      : Comp;            { _DlgComp1                             }
    _DLGMINSUMM    : Double;          { _DlgMinSumm                           }
    _DLGMAXSUMM    : Double;          { _DlgMaxSumm                           }
    _DLGSAVEREPORT : Word;            { _DlgSaveReport                        }
    _SALDOSOURCE   : Word;            { _SaldoSource                          }
    _DLGROUND      : Word;            { _DlgRound                             }
    _DLGDAS        : Word;            { _DlgDas                               }
    _DLGDASLEVEL   : Word;            { _DlgDasLevel                          }
    STUNE1         : String;          { STUNE1                                }
    STUNE2         : String;          { STUNE2                                }
    STUNE3         : String;          { STUNE3                                }
    SINAME         : String;          { SINAME                                }
    NPP            : Word;            { NPP                                   }
    TEXTFROM       : String2;         { TEXTFROM                              }
    TEXTTO         : String2;         { TEXTTO                                }
    SPTUNENAME     : String;          { SPTUNENAME                            }
    SPTUNEREZ      : String;          { SPTUNEREZ                             }
    BACKKAUFILTER  : String;          { BACKKAUFILTER                         }
  end;
const
  tiBYNPP                = 0;  { NPP(nM)                                 }

type
    prVBUHDLG = pVBUHDLG;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNANSCHNEW=0;
    TNBANKDOCF=16;
    TNBUHSCHET=1;
    TNBUHSCHETFLT=2;
    TNCASHBANK=8;
    TNJORNTUNE=10;
    TNKATH=11;
    TNKATKAU=5;
    TNLISTGD=6;
    TNPICK=14;
    TNPICKBUH=12;
    TNPICKBUHTMP=13;
    TNREPPARAM=19;
    TNSEARCHBUH=3;
    TNSEARCHSUB=4;
    TNSPBUHREP=22;
    TNSPCASH=9;
    TNSPLISTGD=7;
    TNTEMPDESCR18=18;
    TNTEMPIER=20;
    TNUSERDESKREP=17;
    TNUSERSDOC=21;
    TNVALUT=15;
    FNBACKKAUFILTER=105;
    FNBEGDATE=27;
    FNDAT_M_OT=26;
    FNENDDATE=28;
    FNISTUNE1=12;
    FNISTUNE2=13;
    FNISTUNE3=14;
    FNIWTUNE1=6;
    FNIWTUNE2=7;
    FNIWTUNE3=8;
    FNIWTUNE4=9;
    FNIWTUNE5=10;
    FNIWTUNE6=11;
    FNMYPLANSNO=19;
    FNNPP=75;
    FNREPFLT=25;
    FNREPSALDO=20;
    FNREPSORT=22;
    FNREPTYPE=21;
    FNREPVAL=23;
    FNSINAME=69;
    FNSODRMODE=24;
    FNSPTUNENAME=103;
    FNSPTUNEREZ=104;
    FNSTUNE1=66;
    FNSTUNE2=67;
    FNSTUNE3=68;
    FNTEXTFROM=101;
    FNTEXTTO=102;
    FNWPARAM1=15;
    FNWPARAM2=16;
    FNWPARAM3=17;
    FNWREPORT=18;
    FNWTUNE1=0;
    FNWTUNE2=1;
    FNWTUNE3=2;
    FNWTUNE4=3;
    FNWTUNE5=4;
    FNWTUNE6=5;
    FN_DLGBACKKAU1=37;
    FN_DLGBACKKAU2=40;
    FN_DLGBACKKAU3=43;
    FN_DLGBACKKAU4=46;
    FN_DLGBACKKAU5=49;
    FN_DLGBACKKAU6=52;
    FN_DLGBACKPODR=32;
    FN_DLGBACKPP=34;
    FN_DLGCASHBANK=56;
    FN_DLGCOMP1=58;
    FN_DLGDAS=64;
    FN_DLGDASLEVEL=65;
    FN_DLGKATPODR=31;
    FN_DLGKLVAL=53;
    FN_DLGMAXSUMM=60;
    FN_DLGMINSUMM=59;
    FN_DLGPOSTPOL=33;
    FN_DLGRECKAU1=36;
    FN_DLGRECKAU2=39;
    FN_DLGRECKAU3=42;
    FN_DLGRECKAU4=45;
    FN_DLGRECKAU5=48;
    FN_DLGRECKAU6=51;
    FN_DLGROUND=63;
    FN_DLGSAVEREPORT=61;
    FN_DLGSCHET=29;
    FN_DLGSPCASH=57;
    FN_DLGSUBSCH=30;
    FN_DLGTBLKAU1=35;
    FN_DLGTBLKAU2=38;
    FN_DLGTBLKAU3=41;
    FN_DLGTBLKAU4=44;
    FN_DLGTBLKAU5=47;
    FN_DLGTBLKAU6=50;
    FN_DLGTIDKUSER=54;
    FN_DLGVALUT=55;
    FN_SALDOSOURCE=62;
    tbBANKDOCF_4_MODIF_0=16;
    tbBUHSCHET_4_MODIF_0=1;
    tbBUHSCHET_4_MODIF_1=65537;
    tbBUHSCHET_4_MODIF_2=131073;
    tbBUHSCHET_4_MODIF_3=196609;
    tbBUHSCHET_4_MODIF_4=262145;
    tb4_MODIF_5=327681;
    tb4_MODIF_6=393217;
    tb4_MODIF_7=458753;
    tbCASHBANK_4_MODIF_0=8;
    tbJORNTUNE_4_MODIF_0=10;
    tbKATH_4_MODIF_0=11;
    tbKATH_4_MODIF_1=65547;
    tbKATH_4_MODIF_2=131083;
    tbKATH_4_MODIF_3=196619;
    tbKATH_4_MODIF_4=262155;
    tbPICK_4_MODIF_0=14;
    tbPICK_4_MODIF_1=65550;
    tbPICK_4_MODIF_2=131086;
    tbPICKBUH_4_MODIF_0=12;
    tbPICKBUH_4_MODIF_1=65548;
    tbSEARCHBUH_4_MODIF_0=65539;
    tbSEARCHBUH_4_MODIF_1=131075;
    tbSPCASH_4_MODIF_0=9;
    tbUSERSDOC_4_MODIF_0=21;
    tbUSERSDOC_4_MODIF_1=65557;
    tbVALUT_4_MODIF_0=15;
    tbVALUT_4_MODIF_1=65551;
{$ENDIF}
{$IFDEF __Type__}
type
   prVBUHDLGVBUHDLG = pVBUHDLG;
   prBUHDLG01 = pVBUHDLG;
   pBUHDLG01 = pVBUHDLG;
{$endif}

{$ifdef __MTtabledef__}
{═════════════ Таблица : BUHDLG01_KATH "BUHDLG01=>KATH" ══════════════}
type
  pBUHDLG01_KATH = ^tBUHDLG01_KATH;
  tBUHDLG01_KATH = record   { - BUHDLG01=>KATH }
    NPP            : Word;            { NPP                                   }
    IKAU           : Word;            { IKAU                                  }
    WKAU           : Word;            { WKAU                                  }
    CKAU           : Comp;            { CKAU                                  }
    WBACK          : Word;            { WBACK                                 }
    PICK           : Word;            { PICK                                  }
    SCH            : String[21];      { SCH                                   }
    SUB            : String[21];      { SUB                                   }
    NMARK          : String[50];      { NMARK                                 }
    CANEDIT        : Boolean;         { CANEDIT                               }
  end;
const
  tiKATH01               = 0;  { NPP(M)                                  }
  tiKATH02               = 1;  { WKAU(M)                                 }
  tiKATH03               = 2;  { IKAU(M)                                 }

const
  mtBUHDLG01_KATH = 'BUHDLG01=>KATH';
{═════════════ Таблица : F_BUHREP::PICKBUH "PICKBUH" ══════════════}
type
  pPICKBUH = ^tPICKBUH;
  tPICKBUH = record   { - PICKBUH }
    KODTABLE       : Word;            { таблица                               }
    PICKREC        : Comp;            { номер элемента в списке               }
    PICKKOD        : String[21];      { код или NRec элемента                 }
    SCHET          : String[21];      { бухг.счет                             }
    SUBKAU         : String[21];      { субсчет/КАУ                           }
    NAME           : String[250];     { имя фильтра                           }
    PICK           : LongInt;         { порядок выбора                        }
    PICKKOL        : Double;          { количество                            }
  end;
const
  tiPICKBUHREC           = 0;  { KODTABLE(M) + PICKREC                   }
  tiPICKBUHKOD           = 1;  { KODTABLE(M) + PICKKOD(Up)               }
  tiPICKBUHSCH           = 2;  { KODTABLE(M) + SCHET(Up) + PICKKOD(Up)   }
  tiPICKBUHPCK           = 3;  { KODTABLE(M) + PICK                      }

const
  mtPICKBUH = 'F_BUHREP::PICKBUH';
{$endif __MTtabledef__}
