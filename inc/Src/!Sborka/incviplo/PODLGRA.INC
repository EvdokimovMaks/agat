{
 �����������������������������������������������������������������������ͻ
 �               ������� : GALDICT "�����⨪� 9.1"                       �
 �    ��� ᮧ����� 29/03/16                                             �
 �����������������������������������������������������������������������ͼ
}

{$ifdef __MTtabledef__}
{������������� ������ : Z_NDFL::PODLGRA "PODLGRA" ��������������}
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