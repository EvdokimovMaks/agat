{
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ               ‘ซฎข เ์ : GALDICT " ซ ชโจช  9.1"                       บ
 บ     โ  แฎงค ญจ๏ 24/10/17                                             บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : C_TUNE::MFILIALS "MFILIALS" ออออออออออออออ}
type
  pMFILIALS = ^tMFILIALS;
  tMFILIALS = record   { - MFILIALS }
    ATL_NREC       : Comp;            { ATL_NREC                              }
    FILIALNO       : Word;            { ฎฌฅเ ไจซจ ซ                          }
    CFILIAL        : Comp;            { ‘แ๋ซช  ญ  ข๋่ฅแโฎ๏้จฉ ไจซจ ซ          }
    CORG           : Comp;            { ‘แ๋ซช  ญ  ช โ ซฎฃ ชฎญโเ ฃฅญโฎข        }
    NAME           : String[80];      {  งข ญจฅ ไจซจ ซ                       }
  end;
const
  tiMFILIALS0            = 0;  { ATL_NREC(M)                             }
  tiMFILIALS1            = 1;  { CFILIAL(M) + ATL_NREC                   }
  tiMFILIALS2            = 2;  { CORG(M)                                 }
  tiMFILIALS3            = 3;  { FILIALNO(M)                             }

const
  mtMFILIALS = 'C_TUNE::MFILIALS';
{$endif __MTtabledef__}
