{$IFDEF __type__}
{═════════════ Таблица : VDANPLZ "VDANPLZ" ══════════════}
type
  String1        = String[1];
  String20        = String[20];
  String150        = String[150];
  String255        = String[255];
  String40        = String[40];
  pVDANPLZ = ^tVDANPLZ;
  tVDANPLZ = record   { - VDANPLZ }
    PRCPODR        : Comp;            { prCpodr                               }
    PRCEX          : Comp;            { prCex                                 }
    P2             : Double;          { p2                                    }
    TSFLAG         : Word;            { TSFlag                                }
    VALIDFLAG      : Boolean;         { ValidFlag                             }
    PODRSHARE      : String1;         { Доступ к подразделениям               }
    DANPLZ_CPODR   : Comp;            { (Nrec из KatPodr)                     }
    DANPLZ_CPLAT   : Comp;            { Код Плательщика                       }
    CBANKPLAT      : Comp;            { Код Банка плат-ка                     }
    CPOL           : Comp;            { Код Получателя                        }
    CBANKPOL       : Comp;            { Код Банка пол-теля                    }
    KATPODR_KOD    : String20;        { код подразделения                     }
    KATPODR_NAME   : String150;       { наименование подразделения            }
    KATORG_NAME    : String;          { наим.организации или ФИО физ.лица     }
    KATORG_OKPO    : String20;        { код по ОКПО                           }
    KATBANK_MFO1   : String20;        { код МФО                               }
    KATBANK_SCHET1 : String40;        { счет                                  }
    KATBANK_NAME   : String;          { наименование банка                    }
    KATBANK_SCHET2 : String40;        { счет в РКЦ                            }
    KATORG1_NAME   : String;          { наим.организации или ФИО физ.лица     }
    KATORG1_OKPO   : String20;        { код по ОКПО                           }
    KATBANK1_MFO1  : String20;        { код МФО                               }
    KATBANK1_SCHET1: String40;        { счет                                  }
    KATBANK1_NAME  : String;          { наименование банка                    }
    KATBANK1_SCHET2: String40;        { счет в РКЦ                            }
    KATPODR_NREC   : Comp;            { Номер записи                          }
    DANPLZ_CGRPODR : Comp;            { nrec группы подразделений             }
    KATPODR_CPODR  : Comp;            { Nrec вышест. подразделения            }
  end;

type
    prVDANPLZ = pVDANPLZ;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNDANPLZ=8;
    TNKATBANK=2;
    TNKATBANK1=3;
    TNKATBANKPP=4;
    TNKATORG=5;
    TNKATORG1=7;
    TNKATPODR=1;
    TNUSERRIGHTS=6;
    TNZAR_USER=0;
    FNCBANKPLAT=10;
    FNCBANKPOL=14;
    FNCPOL=12;
    FNDANPLZ_CGRPODR=36;
    FNDANPLZ_CPLAT=8;
    FNDANPLZ_CPODR=6;
    FNKATBANK1_MFO1=32;
    FNKATBANK1_NAME=34;
    FNKATBANK1_SCHET1=33;
    FNKATBANK1_SCHET2=35;
    FNKATBANK_MFO1=26;
    FNKATBANK_NAME=28;
    FNKATBANK_SCHET1=27;
    FNKATBANK_SCHET2=29;
    FNKATORG1_NAME=30;
    FNKATORG1_OKPO=31;
    FNKATORG_NAME=24;
    FNKATORG_OKPO=25;
    FNKATPODR_CPODR=37;
    FNKATPODR_KOD=21;
    FNKATPODR_NAME=23;
    FNKATPODR_NREC=7;
    FNP2=2;
    FNPODRSHARE=5;
    FNPRCEX=1;
    FNPRCPODR=0;
    FNTSFLAG=3;
    FNVALIDFLAG=4;
    tbDANPLZ_4_MODIF_0=8;
    tbKATPODR_4_MODIF_0=65537;
    tbRIGHTS=65542;
{$ENDIF}
{$IFDEF __Type__}
type
   prVDANPLZVDANPLZ = pVDANPLZ;
   prPLATPOL = pVDANPLZ;
   pPLATPOL = pVDANPLZ;
{$endif}
