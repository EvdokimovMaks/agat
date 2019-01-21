{
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ               ‘ซฎข เ์ : GALDICT " ซ ชโจช  ERP 9.1"                   บ
 บ     โ  แฎงค ญจ๏ 22/11/18                                             บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : Z_NDFL::PODLGRA "PODLGRA" ออออออออออออออ}
type
  pPODLGRA = ^tPODLGRA;
  tPODLGRA = object(tAtlAndBranchRecordHeader)   { - PODLGRA }
    LASTUSER       : String[20];      { LASTUSER                              }
    LASTTIME       : Time;            { LASTTIME                              }
    LASTDATE       : Date;            { LASTDATE                              }
    FILIALNO       : LongInt;         { FILIALNO                              }
    DATREC         : Date;            { DATREC                                }
    KOLMIN         : Word;            { KOLMIN                                }
    ENDINT         : LongInt;         { ENDINT                                }
    PROC           : Double;          { PROC                                  }
    CHOICE         : Word;            { CHOICE                                }
    VIDPER         : Word;            { VIDPER                                }
  end;
const
  tiPODLGRA01            = 0;  { DATREC(Un M <) + ENDINT                 }
  tiPODLGRA02            = 1;  { NREC(J Sur Un M)                        }
  tiPODLGRALM            = 2;  { ATL_LASTDATE(M) + ATL_LASTTIME          }
  tiPODLGRALU            = 3;  { ATL_LASTUSER(M)                         }

const
  mtPODLGRA = 'Z_NDFL::PODLGRA';
{$endif __MTtabledef__}
