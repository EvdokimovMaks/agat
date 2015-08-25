{$IFDEF __type__}
{อออออออออออออ ’ กซจๆ  : TUNEXTDO "TUNEXTDO" ออออออออออออออ}
type
  String255        = String[255];
  pTUNEXTDO = ^tTUNEXTDO;
  tTUNEXTDO = record   { - TUNEXTDO }
    PXLREPSETUP    : TReferenceBuf;   { pxlrepsetup                           }
    DAT1           : Date;            { Dat1                                  }
    DAT2           : Date;            { Dat2                                  }
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
    FNDAT1=1;
    FNDAT2=2;
    FNDENTOV=4;
    FNDOTIPMONEY=11;
    FNFILTRDO=15;
    FNID=17;
    FNKONDO=5;
    FNLOADONLY=8;
    FNMONEYONPERIOD=10;
    FNOURALL=6;
    FNPXLREPSETUP=0;
    FNSXLTFILENAME=16;
    FNTHEALL=7;
    FNTHINGSONPERIOD=9;
    FNTIPDO=3;
    FNTOC=12;
    FNTOC1=13;
    FNZAOTCH=14;
{$ENDIF}
{$IFDEF __Type__}
type
   prTUNEXTDOTUNEXTDO = pTUNEXTDO;
{$endif}
