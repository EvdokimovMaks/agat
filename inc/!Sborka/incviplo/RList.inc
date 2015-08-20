{$IFDEF __type__}
{═════════════ Таблица : RLIST "RLIST" ══════════════}
type
  String255        = String[255];
  String50        = String[50];
  String1        = String[1];
  String60        = String[60];
  pRLIST = ^tRLIST;
  tRLIST = record   { - RLIST }
    EA             : TReferenceBuf;   { EA                                    }
    RESPATH        : String;          { ResPath                               }
    WORKINGTIMEIS  : Word;            { WorkingTimeIs                         }
    PDO_PERIODBEGINNING: Date;        { PDO_PeriodBeginning                   }
    PDO_PERIODENDING: Date;           { PDO_PeriodEnding                      }
    SHOWINLASTDEP  : Boolean;         { ShowInlastDep                         }
    OBJTHFUNCS     : TReferenceBuf;   { objTHFuncs                            }
    I              : SmallInt;        { i                                     }
    _TMPKOLDN      : Double;          { _tmpKoldn                             }
    IERARHNAME     : String;          { IerarhName                            }
    WSENDMAIL      : Word;            { wSendMail                             }
    ALLLINKFCOUNT  : SmallInt;        { AllLinkFCount                         }
    RTFLINKFCOUNT  : SmallInt;        { RTFLinkFCount                         }
    SLKLINKFCOUNT  : SmallInt;        { SLKLinkFCount                         }
    PRIZPODR       : Boolean;         { PrizPodr                              }
    PRIZFIO        : Boolean;         { PrizFIO                               }
    TECCEX         : Comp;            { TecCex                                }
    KASSIRMARKER   : LongInt;         { KassirMarker                          }
    FOTMARKERS     : LongInt;         { FOTMarkers                            }
    NACHMARKERS    : LongInt;         { NachMarkers                           }
    NACHINDEXNO    : LongInt;         { NachIndexNo                           }
    MARKERS        : LongInt;         { Markers                               }
    INDEXNO        : LongInt;         { IndexNo                               }
    MY             : Word;            { My                                    }
    PRCEX          : Comp;            { prCex                                 }
    PRTABN         : LongInt;         { PrTabn                                }
    PNREC          : Comp;            { PnRec                                 }
    TRUEPNREC      : Comp;            { TruePnRec                             }
    TECAPPOINT     : Comp;            { TecAppoint                            }
    PRCPODR        : Comp;            { prCpodr                               }
    YEA            : SmallInt;        { Yea                                   }
    LASTDAYRAS     : Date;            { LastDayRas                            }
    MAXLINES       : Word;            { MaxLines                              }
    PAPER          : Word;            { Paper                                 }
    RLFORM         : Word;            { RlForm                                }
    SUMFLAG        : Word;            { SumFlag                               }
    SUMFLAG1       : Word;            { SumFlag1                              }
    ORIENT         : Word;            { Orient                                }
    COUNTR         : Word;            { CountR                                }
    COUNTT         : Word;            { CountT                                }
    PRIZF          : Boolean;         { PrizF                                 }
    FLAGDONE       : Boolean;         { FlagDone                              }
    NACHSUM        : Double;          { NachSum                               }
    UDERSUM        : Double;          { UderSum                               }
    STORESUMOB     : Double;          { StoreSumOb                            }
    STOREPODNAL    : Double;          { StorePodnal                           }
    STORENEOBL     : Double;          { StoreNeobl                            }
    STORESUMDOX    : Double;          { StoreSumDox                           }
    SAVEOPL        : LongInt;         { SaveOpl                               }
    SAVEOPLS       : LongInt;         { SaveOplS                              }
    SAVEUDS        : LongInt;         { SaveUdS                               }
    SAVEUD         : Word;            { SaveUd                                }
    MONTH1         : Word;            { Month1                                }
    MONTHBEGIN     : Word;            { MonthBegin                            }
    MONTHEND       : Word;            { MonthEnd                              }
    PRIZYEAR       : Word;            { PrizYear                              }
    XARNAME        : String50;        { XarName                               }
    IND            : SmallInt;        { ind                                   }
    SOVMIND        : SmallInt;        { sovmind                               }
    ERRFRM         : Boolean;         { errfrm                                }
    VIDRAB         : Word;            { VidRab                                }
    PAIDTIMEPRIZ   : Boolean;         { PaidTimePriz                          }
    PLANTIMEPRIZ   : Boolean;         { PlanTimePriz                          }
    FLAGNOCHECK    : Boolean;         { FlagNoCheck                           }
    FLAGSOVMEST    : Word;            { FlagSovmest                           }
    FLAGFOT        : Boolean;         { FlagFOT                               }
    FLAGESN        : Boolean;         { FlagESN                               }
    FLAGTARIF      : Boolean;         { FlagTarif                             }
    FLAGNEJAV      : Boolean;         { FlagNejav                             }
    TABELFLAG      : Boolean;         { TabelFlag                             }
    SOVMEST        : Word;            { Sovmest                               }
    CURABSENCE     : SmallInt;        { CurAbsence                            }
    MYSETDEFPARAM  : Word;            { mySetDefParam                         }
    XARFLAG6       : String1;         { XarFlag6                              }
    DEFDATIZM      : Date;            { DefDatIzm                             }
    TSF            : TReferenceBuf;   { TSF                                   }
    NACHMES        : Double;          { NachMes                               }
    SUMDOHMES      : Double;          { SumDohMes                             }
    NENACHDOH      : Double;          { NenachDoh                             }
    PODNALMES      : Double;          { PodNalMes                             }
    NALBASEMES     : Double;          { NalBaseMes                            }
    MINVIDPER      : Word;            { MinVidPer                             }
    KATPODR_KOD    : String;          { KatPodr_Kod                           }
    KATPODR_NAME   : String;          { KatPodr_Name                          }
    UNTAXEDSUMPERIOD: Word;           { UntaxedSumPeriod                      }
    SUMDOX         : Double;          { SUMDOX                                }
    SUMOB          : Double;          { SUMOB                                 }
    NEOBL1         : Double;          { NEOBL1                                }
    NEOBL2         : Double;          { NEOBL2                                }
    NEOBL3         : Double;          { NEOBL3                                }
    NEOBL4         : Double;          { NEOBL4                                }
    NEOBL5         : Double;          { NEOBL5                                }
    NEOBL6         : Double;          { NEOBL6                                }
    NEOBL7         : Double;          { NEOBL7                                }
    NEOBL8         : Double;          { NEOBL8                                }
    NEOBL9         : Double;          { NEOBL9                                }
    NEOBL10        : Double;          { NEOBL10                               }
    NEOBL11        : Double;          { NEOBL11                               }
    NEOBL12        : Double;          { NEOBL12                               }
    NEOBL          : Double;          { NEOBL                                 }
    PODNAL         : Double;          { PODNAL                                }
    SUMDOXP        : Double;          { SUMDOXP                               }
    SUMOBP         : Double;          { SUMOBP                                }
    NEOBL1P        : Double;          { NEOBL1P                               }
    NEOBL2P        : Double;          { NEOBL2P                               }
    NEOBL3P        : Double;          { NEOBL3P                               }
    NEOBL4P        : Double;          { NEOBL4P                               }
    NEOBL5P        : Double;          { NEOBL5P                               }
    NEOBL6P        : Double;          { NEOBL6P                               }
    NEOBL7P        : Double;          { NEOBL7P                               }
    NEOBL8P        : Double;          { NEOBL8P                               }
    NEOBL9P        : Double;          { NEOBL9P                               }
    NEOBL10P       : Double;          { NEOBL10P                              }
    NEOBL11P       : Double;          { NEOBL11P                              }
    NEOBL12P       : Double;          { NEOBL12P                              }
    NEOBLP         : Double;          { NEOBLP                                }
    PODNALP        : Double;          { PODNALP                               }
    YEARDOH        : Double;          { YEARDOH                               }
    YEARNAL        : Double;          { YEARNAL                               }
    YEARDOHP       : Double;          { YEARDOHP                              }
    YEARNALP       : Double;          { YEARNALP                              }
    FIELD2         : LongInt;         { Поле 2                                }
    FIELD1         : Comp;            { Поле 1                                }
    FIO            : String60;        { Фамилия,имя,отчество                  }
  end;
const
  tiBYFIELD2             = 0;  { FIELD2(nM)                              }
  tiBYFIELDS12           = 1;  { FIELD1(nM) + FIELD2                     }
  tiBYFIELD3             = 2;  { FIO(nM Up)                              }

type
    prRLIST = pRLIST;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNARCHRATES=11;
    TNATTRNAM=48;
    TNATTRVAL=49;
    TNCASEPSN=23;
    TNCATALOGS=28;
    TNCATALOGSFONEHOME=29;
    TNCOMMUNICATIONS1=30;
    TNCURMONTH=2;
    TNDOPLSCHET=43;
    TNDOPLSCHET2=44;
    TNDOPNAL=12;
    TNDOPNAL2=53;
    TNFORMARKS=13;
    TNFORMARKS2=41;
    TNINMEM_TMPSUMMS=21;
    TNKATPODR=33;
    TNKLKATEGO=36;
    TNKLNDR=40;
    TNKLREJIM=37;
    TNKLVIDOPL=34;
    TNKLVIDUD=35;
    TNLSCHET=27;
    TNLSTAB=38;
    TNNACHISL=4;
    TNNENACH=54;
    TNNOTES=50;
    TNPERECH=20;
    TNPEREVOD=51;
    TNPEREVODTEK=52;
    TNPEREXOD=26;
    TNPERSONS=31;
    TNPERSONSEMAIL=32;
    TNPRMONTH=3;
    TNPRVIDOPL=16;
    TNPRVIDOPLSYN=42;
    TNSHTRAF=15;
    TNSUMULBUD=9;
    TNSUMULPRO=10;
    TNSUMULSOC=25;
    TNSUMULTEC=8;
    TNSUMUPPRO=7;
    TNSUMUPTEC=6;
    TNSUMVIDOP=0;
    TNSUMVIDUD=1;
    TNSYN_SUMVIDUD=46;
    TNSYN_TMPSUMMS=19;
    TNSYN_UDER=45;
    TNSYS_MBF=47;
    TNTARSTAV=14;
    TNTMPESN=24;
    TNTMPLGOTDOH=22;
    TNTMPNFOT=17;
    TNTMPSUMMS=18;
    TNUDER=5;
    TNZAR_USER=39;
    TCOSNRAB=515;
    TCSOVMRAB=516;
    FNALLLINKFCOUNT=11;
    FNCOUNTR=38;
    FNCOUNTT=39;
    FNCURABSENCE=71;
    FNDEFDATIZM=74;
    FNEA=0;
    FNERRFRM=59;
    FNFIELD1=499;
    FNFIELD2=498;
    FNFIO=500;
    FNFLAGDONE=41;
    FNFLAGESN=66;
    FNFLAGFOT=65;
    FNFLAGNEJAV=68;
    FNFLAGNOCHECK=63;
    FNFLAGSOVMEST=64;
    FNFLAGTARIF=67;
    FNFOTMARKERS=18;
    FNI=7;
    FNIERARHNAME=9;
    FNIND=57;
    FNINDEXNO=22;
    FNKASSIRMARKER=17;
    FNKATPODR_KOD=82;
    FNKATPODR_NAME=83;
    FNLASTDAYRAS=31;
    FNMARKERS=21;
    FNMAXLINES=32;
    FNMINVIDPER=81;
    FNMONTH1=52;
    FNMONTHBEGIN=53;
    FNMONTHEND=54;
    FNMY=23;
    FNMYSETDEFPARAM=72;
    FNNACHINDEXNO=20;
    FNNACHMARKERS=19;
    FNNACHMES=76;
    FNNACHSUM=42;
    FNNALBASEMES=80;
    FNNENACHDOH=78;
    FNNEOBL=216;
    FNNEOBL1=204;
    FNNEOBL10=213;
    FNNEOBL10P=359;
    FNNEOBL11=214;
    FNNEOBL11P=360;
    FNNEOBL12=215;
    FNNEOBL12P=361;
    FNNEOBL1P=350;
    FNNEOBL2=205;
    FNNEOBL2P=351;
    FNNEOBL3=206;
    FNNEOBL3P=352;
    FNNEOBL4=207;
    FNNEOBL4P=353;
    FNNEOBL5=208;
    FNNEOBL5P=354;
    FNNEOBL6=209;
    FNNEOBL6P=355;
    FNNEOBL7=210;
    FNNEOBL7P=356;
    FNNEOBL8=211;
    FNNEOBL8P=357;
    FNNEOBL9=212;
    FNNEOBL9P=358;
    FNNEOBLP=362;
    FNOBJTHFUNCS=6;
    FNORIENT=37;
    FNPAIDTIMEPRIZ=61;
    FNPAPER=33;
    FNPDO_PERIODBEGINNING=3;
    FNPDO_PERIODENDING=4;
    FNPLANTIMEPRIZ=62;
    FNPNREC=26;
    FNPODNAL=243;
    FNPODNALMES=79;
    FNPODNALP=389;
    FNPRCEX=24;
    FNPRCPODR=29;
    FNPRIZF=40;
    FNPRIZFIO=15;
    FNPRIZPODR=14;
    FNPRIZYEAR=55;
    FNPRTABN=25;
    FNRESPATH=1;
    FNRLFORM=34;
    FNRTFLINKFCOUNT=12;
    FNSAVEOPL=48;
    FNSAVEOPLS=49;
    FNSAVEUD=51;
    FNSAVEUDS=50;
    FNSHOWINLASTDEP=5;
    FNSLKLINKFCOUNT=13;
    FNSOVMEST=70;
    FNSOVMIND=58;
    FNSTORENEOBL=46;
    FNSTOREPODNAL=45;
    FNSTORESUMDOX=47;
    FNSTORESUMOB=44;
    FNSUMDOHMES=77;
    FNSUMDOX=111;
    FNSUMDOXP=270;
    FNSUMFLAG=35;
    FNSUMFLAG1=36;
    FNSUMOB=138;
    FNSUMOBP=297;
    FNTABELFLAG=69;
    FNTECAPPOINT=28;
    FNTECCEX=16;
    FNTRUEPNREC=27;
    FNTSF=75;
    FNUDERSUM=43;
    FNUNTAXEDSUMPERIOD=84;
    FNVIDRAB=60;
    FNWORKINGTIMEIS=2;
    FNWSENDMAIL=10;
    FNXARFLAG6=73;
    FNXARNAME=56;
    FNYEA=30;
    FNYEARDOH=403;
    FNYEARDOHP=431;
    FNYEARNAL=417;
    FNYEARNALP=445;
    FN_TMPKOLDN=8;
    tbATTRNAM_4_MODIF_0=48;
    tbATTRVAL_4_MODIF_0=49;
    tbATTRVAL_4_MODIF_1=65585;
    tbATTRVAL_4_MODIF_2=131121;
    tbATTRVAL_4_MODIF_3=196657;
    tbCASEPSN_4_MODIF_0=23;
    tbCASEPSN_4_MODIF_1=65559;
    tbCATALOGS_4_MODIF_0=65564;
    tbCATALOGS_4_MODIF_1=131100;
    tbCATALOGS_4_MODIF_2=196636;
    tbCATALOGS_4_MODIF_3=262172;
    tbDOPLSCHET_4_MODIF_0=43;
    tbDOPLSCHET2_4_MODIF_0=44;
    tbFORMARKS2_4_MODIF_0=41;
    tbKATPODR_4_MODIF_0=65569;
    tbKATPODR_4_MODIF_1=131105;
    tbKLVIDOPL_4_MODIF_0=34;
    tbKLVIDOPL_4_MODIF_1=65570;
    tbKLVIDOPL_4_MODIF_2=131106;
    tbKLVIDOPL_4_MODIF_3=196642;
    tbKLVIDOPL_4_MODIF_4=262178;
    tbKLVIDOPL_4_MODIF_5=327714;
    tbKLVIDOPL_4_MODIF_6=393250;
    tbKLVIDOPL_4_MODIF_7=458786;
    tbKLVIDOPL_4_MODIF_8=524322;
    tbKLVIDOPL_4_MODIF_9=589858;
    tbKLVIDOPL_4_MODIF_10=655394;
    tbKLVIDOPL_4_MODIF_11=720930;
    tbKLVIDOPL_4_MODIF_12=786466;
    tbKLVIDOPL_4_MODIF_13=852002;
    tbKLVIDOPL_4_MODIF_14=917538;
    tbKLVIDOPL_4_MODIF_15=983074;
    tbKLVIDOPL_4_MODIF_16=1048610;
    tbKLVIDOPL_4_MODIF_17=1114146;
    tbKLVIDOPL_4_MODIF_18=1179682;
    tbKLVIDOPL_4_MODIF_19=1245218;
    tbKLVIDUD_4_MODIF_0=35;
    tbKLVIDUD_4_MODIF_1=65571;
    tbKLVIDUD_4_MODIF_2=131107;
    tbKLVIDUD_4_MODIF_3=196643;
    tbLSCHET_4_MODIF_0=65563;
    tbLSCHET_4_MODIF_1=131099;
    tbLSCHET_4_MODIF_2=196635;
    tbLSCHET_4_MODIF_3=262171;
    tbLSCHET_4_MODIF_4=327707;
    tbNACHISL_FUTURE=65540;
    tbNACHISL_4_MODIF_0=131076;
    tbNACHISL_4_MODIF_1=196612;
    tbNENACH_4_MODIF_0=65590;
    tbNOTES_4_MODIF_0=50;
    tbNOTES_4_MODIF_1=65586;
    tbNOTES_4_MODIF_2=131122;
    tbNOTES_4_MODIF_3=196658;
    tbPERECH_4_MODIF_0=20;
    tbPERECH_4_MODIF_1=65556;
    tbPERECH_4_MODIF_2=131092;
    tbPERECH_4_MODIF_3=196628;
    tbPEREVOD_4_MODIF_0=51;
    tbPEREVODTEK_4_MODIF_0=52;
    tbPRMONTH_4_MODIF_0=65539;
    tbPRMONTH_4_MODIF_1=131075;
    tbPRMONTH_4_MODIF_2=196611;
    tbPRMONTH_4_MODIF_3=262147;
    tbPRVIDOPL_4_MODIF_0=16;
    tbPRVIDOPL_4_MODIF_1=65552;
    tbPRVIDOPLSYN_4_MODIF_0=65578;
    tbPRVIDOPLSYN_4_MODIF_1=131114;
    tbPRVIDOPLSYN_4_MODIF_2=196650;
    tbPRVIDOPLSYN_4_MODIF_3=262186;
    tbSHTRAF_4_MODIF_0=15;
    tbSHTRAF_4_MODIF_1=65551;
    tbSHTRAF_4_MODIF_2=131087;
    tbSHTRAF_4_MODIF_3=196623;
    tbSHTRAF_4_MODIF_4=262159;
    tbSHTRAF_4_MODIF_5=327695;
    tbSUMULSOC_4_MODIF_0=25;
    tbSUMULSOC_4_MODIF_1=65561;
    tbSUMULSOC_4_MODIF_2=131097;
    tbSUMULSOC_4_MODIF_3=196633;
    tbSUMULTEC_4_MODIF_0=65544;
    tbSUMVIDOP_16=65536;
    tbSUMVIDOP_8=131072;
    tbSUMVIDOP_18=196608;
    tbSUMVIDUD_4_MODIF_0=65537;
    tbSYN_SUMVIDUD_4_MODIF_0=46;
    tbSYN_UDER_4_MODIF_0=45;
    tbSYS_MBF_4_MODIF_0=47;
    tbSYS_MBF_4_MODIF_1=65583;
    tbTMPESN_4_MODIF_0=24;
    tbTMPESN_4_MODIF_1=65560;
    tbTMPNFOT_4_MODIF_0=17;
    tbTMPNFOT_4_MODIF_1=65553;
    tbTMPSUMMS_4_MODIF_0=65554;
    tbTMPSUMMS_4_MODIF_1=131090;
    tbTMPSUMMS_4_MODIF_2=196626;
    tbTMPSUMMS_4_MODIF_3=262162;
    tbTMPSUMMS_4_MODIF_4=327698;
    tbTMPSUMMS_4_MODIF_5=393234;
    tbTMPSUMMS_4_MODIF_6=458770;
    tbTMPSUMMS_4_MODIF_7=524306;
    tbTMPSUMMS_4_MODIF_8=589842;
    tbTMPSUMMS_4_MODIF_9=655378;
    tbTMPSUMMS_4_MODIF_10=720914;
    tbTMPSUMMS_4_MODIF_11=786450;
    tbTMPSUMMS_4_MODIF_12=851986;
    tbTMPSUMMS_4_MODIF_13=917522;
    tbTMPSUMMS_4_MODIF_14=983058;
    tbTMPSUMMS_4_MODIF_15=1048594;
    tbTMPSUMMS_4_MODIF_16=1114130;
    tbTMPSUMMS_4_MODIF_17=1179666;
    tbTMPSUMMS_4_MODIF_18=1245202;
    tbTMPSUMMS_4_MODIF_19=1310738;
    tb4_MODIF_20=1376274;
    tb4_MODIF_21=1441810;
    tb4_MODIF_22=1507346;
    tb4_MODIF_23=1572882;
    tb4_MODIF_24=1638418;
    tb4_MODIF_25=1703954;
    tb4_MODIF_26=1769490;
    tb4_MODIF_27=1835026;
    tb4_MODIF_28=1900562;
    tb4_MODIF_29=1966098;
    tb4_MODIF_30=2031634;
    tb4_MODIF_31=2097170;
    tb4_MODIF_32=2162706;
    tb4_MODIF_33=2228242;
    tb4_MODIF_34=2293778;
    tb4_MODIF_35=2359314;
    tbUDER_FUTURE=65541;
    tbUDER_4_MODIF_0=131077;
{$ENDIF}
{$IFDEF __Type__}
type
   prRLISTRLIST = pRLIST;
{$endif}

{$ifdef __MTtabledef__}
{═════════════ Таблица : RLIST_INMEM_TMPSUMMS "RLIST=>INMEM_TMPSUMMS" ══════════════}
type
  pRLIST_INMEM_TMPSUMMS = ^tRLIST_INMEM_TMPSUMMS;
  tRLIST_INMEM_TMPSUMMS = record   { - RLIST=>INMEM_TMPSUMMS }
    SAVEMES        : Word;            { Месяц начисления                      }
    VID            : LongInt;         { Вид начисл/удерж                      }
    VIDS           : LongInt;         { Вид начисл/удерж(сист.)               }
    SUMMA          : Double;          { Сумма                                 }
    KOLDN          : Double;          { Кол. дней                             }
    KOLCH          : Double;          { Кол. часов                            }
    KOLCHB         : Double;          { Кол. часов баланс                     }
    YEAR           : SmallInt;        { Год                                   }
  end;
const
  tiINMEM_TMPSUMMS00     = 0;  { VID(M) + SUMMA                          }

const
  mtRLIST_INMEM_TMPSUMMS = 'RLIST=>INMEM_TMPSUMMS';
{═════════════ Таблица : RLIST_TMPSUMMS "RLIST=>TMPSUMMS" ══════════════}
type
  pRLIST_TMPSUMMS = ^tRLIST_TMPSUMMS;
  tRLIST_TMPSUMMS = record   { - RLIST=>TMPSUMMS }
    CLSCHET        : Comp;            { ссылка на лиц. счет                   }
    CPODR          : Comp;            { ссылка на источник                    }
    CPODROZ        : Comp;            { ссылка на источник ОЗ                 }
    LASTTIME       : LongInt;         { код источника                         }
    CHOICE         : Word;            { тип записей                           }
    SAVEMES        : Word;            { Месяц начисления                      }
    SAVEMESZA      : Word;            { Месяц за который начисл.              }
    SAVEMESV       : Word;            { Месяц выплаты                         }
    YEARN          : SmallInt;        { год в котором нач.                    }
    YEAR           : SmallInt;        { год за который                        }
    YEARV          : SmallInt;        { год выплаты                           }
    KOLDN          : Double;          { Кол. дней                             }
    KOLCH          : Double;          { Кол. часов                            }
    KOLCHB         : Double;          { Кол. часов баланс                     }
    DATAN          : Date;            { Дата начала                           }
    DATOK          : Date;            { Дата окончания                        }
    VID            : LongInt;         { Вид начис/удер                        }
    VIDS           : LongInt;         { Вид начис/удер                        }
    NAMEVID        : String;          { название начисления/удержания         }
    TECPROC        : Double;          { Процент из начислений                 }
    SUMMA          : Double;          {  сумма                                }
    TECTARIF       : Double;          { Тариф из начислений                   }
    SRCNREC        : Comp;            { Ключ записи источника                 }
  end;
const
  tiTMPSUMMS00           = 0;  { SAVEMES(M) + VID + SUMMA                }
  tiTMPSUMMS01           = 1;  { VID(M) + SUMMA                          }

const
  mtRLIST_TMPSUMMS = 'RLIST=>TMPSUMMS';
{═════════════ Таблица : RLIST_TMPESN "RLIST=>TMPESN" ══════════════}
type
  pRLIST_TMPESN = ^tRLIST_TMPESN;
  tRLIST_TMPESN = record   { - RLIST=>TMPESN }
    NALCODE        : Word;            { Код налога                            }
    NALNAME        : String[50];      { Название налога                       }
    SUMMAVIP       : Double;          { Сумма с которой брали                 }
    NALSUMMA       : Double;          { Сумма налога                          }
  end;
const
  tiESN00                = 0;  { NALCODE(M)                              }

const
  mtRLIST_TMPESN = 'RLIST=>TMPESN';
{═════════════ Таблица : RLIST_TMPLGOTDOH "RLIST=>TMPLGOTDOH" ══════════════}
type
  pRLIST_TMPLGOTDOH = ^tRLIST_TMPLGOTDOH;
  tRLIST_TMPLGOTDOH = record   { - RLIST=>TMPLGOTDOH }
    DOHODCODE      : String[5];       { Код вида дохода                       }
    SKIDCODE       : String[5];       { Код налогового вычета                 }
    SUMMA1         : Double;          { Общая сумма дохода с начала года      }
    SUMMA2         : Double;          { Необлагаемая сумма                    }
  end;
const
  tiDOH00                = 0;  { DOHODCODE(M Up)                         }

const
  mtRLIST_TMPLGOTDOH = 'RLIST=>TMPLGOTDOH';
{═════════════ Таблица : RLIST_TMPNFOT "RLIST=>TMPNFOT" ══════════════}
type
  pRLIST_TMPNFOT = ^tRLIST_TMPNFOT;
  tRLIST_TMPNFOT = record   { - RLIST=>TMPNFOT }
    NALCODE        : Word;            { Код перечисления                      }
    NALNAME        : String[50];      { Название налога                       }
    NALSUMMA       : Double;          { Сумма налога                          }
  end;
const
  tiNFOT00               = 0;  { NALCODE(M)                              }

const
  mtRLIST_TMPNFOT = 'RLIST=>TMPNFOT';
{$endif __MTtabledef__}
