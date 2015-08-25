{$IFDEF __type__}
{อออออออออออออ ’ กซจๆ  : VOBJFPVAL "VOBJFPVAL" ออออออออออออออ}
type
  pVOBJFPVAL = ^tVOBJFPVAL;
  tVOBJFPVAL = record   { - VOBJFPVAL }
    CURFPRATEPP    : Word;            { CurFpRatePP                           }
    CFIXMAINVAL    : Comp;            { cFixMainVal                           }
    CFIXPLANVAR    : Comp;            { cFixPlanVar                           }
    CFIXPEROD      : Comp;            { cFixPerod                             }
  end;

type
    prVOBJFPVAL = pVOBJFPVAL;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNFPFORECASTVAL=0;
    TNFPPERIOD=2;
    TNKLVAL=1;
    TNMAINKLVAL=4;
    TNPLANKLVAL=5;
    TNQUICKPERIOD=6;
    TNREALKLVAL=3;
    FNCFIXMAINVAL=1;
    FNCFIXPEROD=3;
    FNCFIXPLANVAR=2;
    FNCURFPRATEPP=0;
    tb4_MODIF_0=0;
    tb4_MODIF_1=65536;
{$ENDIF}
{$IFDEF __Type__}
type
   prVOBJFPVALVOBJFPVAL = pVOBJFPVAL;
   prOBJFPVAL = pVOBJFPVAL;
   pOBJFPVAL = pVOBJFPVAL;
{$endif}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : F_FPBUDGET::FPFORECASTVAL "FPFORECASTVAL" ออออออออออออออ}
type
  pFPFORECASTVAL = ^tFPFORECASTVAL;
  tFPFORECASTVAL = record   { - FPFORECASTVAL }
    CMATRIX        : LongInt;         { CMATRIX                               }
    CVALREAL       : Comp;            { CVALREAL                              }
    CVALFORECAST   : Comp;            { CVALFORECAST                          }
    CVARIANT       : Comp;            { CVARIANT                              }
  end;
const
  tiFPFORECASTVAL01      = 0;  { CMATRIX(M) + CVALREAL                   }
  tiFPFORECASTVAL02      = 1;  { CMATRIX(M) + CVALFORECAST               }
  tiFPFORECASTVAL03      = 2;  { CVARIANT(M) + CVALREAL                  }

const
  mtFPFORECASTVAL = 'F_FPBUDGET::FPFORECASTVAL';
{$endif __MTtabledef__}
