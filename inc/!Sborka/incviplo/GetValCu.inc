{$IFDEF __type__}
{อออออออออออออ ’ กซจๆ  : GETVALCU "GETVALCU" ออออออออออออออ}
type
  pGETVALCU = ^tGETVALCU;
  tGETVALCU = record   { - GETVALCU }
    MYC            : Comp;            { myC                                   }
    MYD            : Date;            { myD                                   }
    MYD_           : Date;            { myd_                                  }
    CURSDATE       : Date;            { cursdate                              }
    SUMR           : Double;          { sumr                                  }
    SUMV           : Double;          { sumv                                  }
    CURS           : Double;          { Curs                                  }
    KLVAL_NREC     : Comp;            { ฎฌฅเ ง ฏจแจ                          }
    SUMVALUT       : Double;          { ‘ใฌฌ  ข ข ซ๎โฅ                        }
  end;

type
    prGETVALCU = pGETVALCU;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNCURSVAL=1;
    TNKLVAL=0;
    FNCURS=6;
    FNCURSDATE=3;
    FNKLVAL_NREC=7;
    FNMYC=0;
    FNMYD=1;
    FNMYD_=2;
    FNSUMR=4;
    FNSUMV=5;
    FNSUMVALUT=9;
{$ENDIF}
{$IFDEF __Type__}
type
   prGETVALCUGETVALCU = pGETVALCU;
{$endif}
