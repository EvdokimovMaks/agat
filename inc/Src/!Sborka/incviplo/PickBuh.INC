{
 �����������������������������������������������������������������������ͻ
 �               ������� : GALDICT "�����⨪� 9.1"                       �
 �    ��� ᮧ����� 29/02/16                                             �
 �����������������������������������������������������������������������ͼ
}

{$ifdef __MTtabledef__}
{������������� ������ : F_BUHREP::PICKBUH "PICKBUH" ��������������}
type
  pPICKBUH = ^tPICKBUH;
  tPICKBUH = record   { - PICKBUH }
    KODTABLE       : Word;            { ⠡���                               }
    PICKREC        : Comp;            { ����� ������� � ᯨ᪥               }
    PICKKOD        : String[21];      { ��� ��� NRec �������                 }
    SCHET          : String[21];      { ���.���                             }
    SUBKAU         : String[21];      { �����/���                           }
    NAME           : String[250];     { ��� 䨫���                           }
    PICK           : LongInt;         { ���冷� �롮�                        }
    PICKKOL        : Double;          { ������⢮                            }
  end;
const
  tiPICKBUHREC           = 0;  { KODTABLE(M) + PICKREC                   }
  tiPICKBUHKOD           = 1;  { KODTABLE(M) + PICKKOD(Up)               }
  tiPICKBUHSCH           = 2;  { KODTABLE(M) + SCHET(Up) + PICKKOD(Up)   }
  tiPICKBUHPCK           = 3;  { KODTABLE(M) + PICK                      }

const
  mtPICKBUH = 'F_BUHREP::PICKBUH';
{$endif __MTtabledef__}