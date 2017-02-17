{$IFDEF __type__}
{อออออออออออออ ’ กซจๆ  : TUNEXTDO "TUNEXTDO" ออออออออออออออ}
type
  String255        = String[255];
  pTUNEXTDO = ^tTUNEXTDO;
  tTUNEXTDO = record   { - TUNEXTDO }
    PXLREPSETUP    : TReferenceBuf;   { pxlrepsetup                           }
    OUTSTART       : Date;            { OutStart                              }
    OUTEND         : Date;            { OutEnd                                }
    TIPDO          : Word;            { TipDO                                 }
    DENTOV         : Word;            { DenTov                                }
    KONDO          : Word;            { KonDO                                 }
    OURALL         : Word;            { OurAll                                }
    THEALL         : Word;            { TheAll                                }
    LOADONLY       : Word;            { LoadOnly                              }
    THINGSONPERIOD : Word;            { ThingsOnPeriod                        }
    MONEYONPERIOD  : Word;            { MoneyOnPeriod                         }
    DOTIPMONEY     : Word;            { DoTipMoney                            }
    TOC            : Word;            { toc                                   }
    TOC1           : Word;            { toc1                                  }
    ALLMONTOV      : Word;            { AllMonTov                             }
    OURMOVE        : Word;            { OurMove                               }
    KONMOVE        : Word;            { KonMove                               }
    ZAOTCH         : String;          { ZaOtch                                }
    FILTRDO        : String;          { FiltrDO                               }
    SXLTFILENAME   : String;          { sXLTFileName                          }
    ID             : String;          { ID                                    }
  end;

type
    prTUNEXTDO = pTUNEXTDO;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    FNALLMONTOV=14;
    FNDENTOV=4;
    FNDOTIPMONEY=11;
    FNFILTRDO=18;
    FNID=20;
    FNKONDO=5;
    FNKONMOVE=16;
    FNLOADONLY=8;
    FNMONEYONPERIOD=10;
    FNOURALL=6;
    FNOURMOVE=15;
    FNOUTEND=2;
    FNOUTSTART=1;
    FNPXLREPSETUP=0;
    FNSXLTFILENAME=19;
    FNTHEALL=7;
    FNTHINGSONPERIOD=9;
    FNTIPDO=3;
    FNTOC=12;
    FNTOC1=13;
    FNZAOTCH=17;
{$ENDIF}
{$IFDEF __Type__}
type
   prTUNEXTDOTUNEXTDO = pTUNEXTDO;
{$endif}
