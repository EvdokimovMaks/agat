{
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ               ‘ซฎข เ์ : GALDICT " ซ ชโจช  9.1"                       บ
 บ     โ  แฎงค ญจ๏ 13/11/15                                             บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : C_TUNE::TUNESSTATISTICS "TUNESSTATISTICS" ออออออออออออออ}
type
  pTUNESSTATISTICS = ^tTUNESSTATISTICS;
  tTUNESSTATISTICS = record   { - TUNESSTATISTICS }
    KOD            : String[60];      { KOD                                   }
    NREAD          : LongInt;         { NREAD                                 }
    NWRITE         : LongInt;         { NWRITE                                }
    ACCESSTIME     : Time;            { ACCESSTIME                            }
    ACCESSDATE     : Date;            { ACCESSDATE                            }
  end;
const
  tiTS1                  = 0;  { KOD(M Up)                               }

const
  mtTUNESSTATISTICS = 'C_TUNE::TUNESSTATISTICS';
{$endif __MTtabledef__}
