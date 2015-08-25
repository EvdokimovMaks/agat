{$IFDEF __type__}
{อออออออออออออ ’ กซจๆ  : TABLEBLAN "TABLEBLAN" ออออออออออออออ}
type
  String255        = String[255];
  pTABLEBLAN = ^tTABLEBLAN;
  tTABLEBLAN = record   { - TABLEBLAN }
    PMC            : Comp;            { pMC                                   }
    WHATPICK       : Word;            { WhatPick                              }
    ISMYOK         : Word;            { IsMyOk                                }
    REZVIB         : Word;            { RezVib                                }
    KAUREFFARRAY   : String;          { ๋เ ฆฅญจฅ ญฎฌฅเ 0                     }
  end;

type
    prTABLEBLAN = pTABLEBLAN;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNGROUPMC=1;
    TNKATMC=0;
    TNPICK=2;
    FNISMYOK=2;
    FNKAUREFFARRAY=5;
    FNPMC=0;
    FNREZVIB=3;
    FNWHATPICK=1;
    tb4_MODIF_0=2;
    tb4_MODIF_1=65538;
    tb4_MODIF_2=131074;
{$ENDIF}
{$IFDEF __Type__}
type
   prTABLEBLANTABLEBLAN = pTABLEBLAN;
   prGETSOMEMC = pTABLEBLAN;
   pGETSOMEMC = pTABLEBLAN;
{$endif}
