{
 �����������������������������������������������������������������������ͻ
 �               ������� : GALDICT "�����⨪� 9.1"                       �
 �    ��� ᮧ����� 29/02/16                                             �
 �����������������������������������������������������������������������ͼ
}

{$ifdef __MTtabledef__}
{������������� ������ : F_BUHREP::MBOOK "MBOOK" ��������������}
type
  pMBOOK = ^tMBOOK;
  tMBOOK = record   { - MBOOK }
    SCHETO         : String[21];      { SCHETO                                }
    SUBOSSCH       : String[21];      { SUBOSSCH                              }
    KAUOS          : array [1..6] of Comp;{ KAUOS                             }
    KODSPO         : Comp;            { KODSPO                                }
    SCHETK         : String[21];      { SCHETK                                }
    SUBSCHK        : String[21];      { SUBSCHK                               }
    VIDSUM         : Word;            { VIDSUM                                }
    SUMMA          : Double;          { SUMMA                                 }
    SUMMABV        : Double;          { SUMMABV                               }
  end;
const
  tiMBOOK01              = 0;  { SCHETO(M Up) + SUBOSSCH(Up) + KODSPO + KAUOS[1] +  }
                               { KAUOS[2] + KAUOS[3] + KAUOS[4] + KAUOS[5] +  }
                               { KAUOS[6] + SCHETK(Up) + SUBSCHK(Up)     }
  tiMBOOK02              = 1;  { SCHETO(M Up) + SUBOSSCH(Up) + SCHETK(Up) +  }
                               { SUBSCHK(Up)                             }

const
  mtMBOOK = 'F_BUHREP::MBOOK';
{$endif __MTtabledef__}