{
 �����������������������������������������������������������������������ͻ
 �               ������� : GALDICT "�����⨪� 9.1"                       �
 �    ��� ᮧ����� 29/02/16                                             �
 �����������������������������������������������������������������������ͼ
}

{$ifdef __MTtabledef__}
{������������� ������ : F_BUHREP::SORTAN "SORTAN" ��������������}
type
  pSORTAN = ^tSORTAN;
  tSORTAN = record   { - SORTAN }
    NPP            : LongInt;         { NPP                                   }
    WKAU           : Word;            { WKAU                                  }
    CKAU           : Comp;            { CKAU                                  }
    SKAU           : String;          { SKAU                                  }
  end;
const
  tiSORTAN01             = 0;  { WKAU(M) + CKAU                          }
  tiSORTAN02             = 1;  { SKAU(M Up) + WKAU + CKAU                }

const
  mtSORTAN = 'F_BUHREP::SORTAN';
{$endif __MTtabledef__}