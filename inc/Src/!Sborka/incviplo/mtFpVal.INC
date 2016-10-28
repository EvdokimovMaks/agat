{
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ               ‘ซฎข เ์ : GALDICT " ซ ชโจช  9.1"                       บ
 บ     โ  แฎงค ญจ๏ 05/09/16                                             บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
}

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
