{
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �               �����瑕 : GALDICT "�����皋�� ERP 9.1"                   �
 �    ���� 甌Г���� 01/02/19                                             �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
}

{$ifdef __MTtabledef__}
{様様様様様様� ��゛��� : F_BUHREP::PICKBUH "PICKBUH" 様様様様様様様}
type
  pPICKBUH = ^tPICKBUH;
  tPICKBUH = record   { - PICKBUH }
    KODTABLE       : Word;            { ��゛���                               }
    PICKREC        : Comp;            { ���ム 蹕ガキ�� � 甎�瓷�               }
    PICKKOD        : String[21];      { ��� ┼� NRec 蹕ガキ��                 }
    SCHET          : String[21];      { ＜紕.瘍モ                             }
    SUBKAU         : String[21];      { 痺＝腑�/���                           }
    NAME           : String[250];     { ━� 筥�赳��                           }
    PICK           : LongInt;         { ��瑙ぎ� �襦���                        }
    PICKKOL        : Double;          { ����腑痰〓                            }
  end;
const
  tiPICKBUHREC           = 0;  { KODTABLE(M) + PICKREC                   }
  tiPICKBUHKOD           = 1;  { KODTABLE(M) + PICKKOD(Up)               }
  tiPICKBUHSCH           = 2;  { KODTABLE(M) + SCHET(Up) + PICKKOD(Up)   }
  tiPICKBUHPCK           = 3;  { KODTABLE(M) + PICK                      }

const
  mtPICKBUH = 'F_BUHREP::PICKBUH';
{$endif __MTtabledef__}
