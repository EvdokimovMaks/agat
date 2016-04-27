{$IFDEF __type__}
{อออออออออออออ ’ กซจๆ  : CALCUSL "CALCUSL" ออออออออออออออ}
type
  pCALCUSL = ^tCALCUSL;
  tCALCUSL = record   { - CALCUSL }
    CCALCUSL       : Comp;            { cCalcUsl                              }
    CREC           : Comp;            { cRec                                  }
    TIPDOC         : Word;            { tipDoc                                }
    NALOGPRICE     : Double;          { nalogPrice                            }
  end;

type
    prCALCUSL = pCALCUSL;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNKATUSL=0;
    TNSPSOPR=1;
    TNSPSTEP=2;
    FNCCALCUSL=0;
    FNCREC=1;
    FNNALOGPRICE=3;
    FNTIPDOC=2;
    tbKATUSL_4_MODIF_0=0;
    tbSPSOPR_4_MODIF_0=1;
    tbSPSTEP_4_MODIF_0=2;
{$ENDIF}
{$IFDEF __Type__}
type
   prCALCUSLCALCUSL = pCALCUSL;
{$endif}
