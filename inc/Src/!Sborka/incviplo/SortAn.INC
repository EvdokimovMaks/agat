{
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �               �����瑕 : GALDICT "�����皋�� ERP 9.1"                   �
 �    ���� 甌Г���� 01/02/19                                             �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
}

{$ifdef __MTtabledef__}
{様様様様様様� ��゛��� : F_BUHREP::SORTAN "SORTAN" 様様様様様様様}
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
