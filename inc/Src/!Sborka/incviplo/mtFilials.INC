{
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �               �����瑕 : GALDICT "�����皋�� ERP 9.1"                   �
 �    ���� 甌Г���� 01/02/19                                             �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
}

{$ifdef __MTtabledef__}
{様様様様様様� ��゛��� : C_TUNE::MFILIALS "MFILIALS" 様様様様様様様}
type
  pMFILIALS = ^tMFILIALS;
  tMFILIALS = record   { - MFILIALS }
    ATL_NREC       : Comp;            { ATL_NREC                              }
    FILIALNO       : Word;            { ���ム 筥�����                         }
    CFILIAL        : Comp;            { �瘠��� �� �謌メ皰濶┤ 筥����          }
    CORG           : Comp;            { �瘠��� �� ������� ���矗��キ皰�        }
    NAME           : String[80];      { ��Б��┘ 筥�����                      }
  end;
const
  tiMFILIALS0            = 0;  { ATL_NREC(M)                             }
  tiMFILIALS1            = 1;  { CFILIAL(M) + ATL_NREC                   }
  tiMFILIALS2            = 2;  { CORG(M)                                 }
  tiMFILIALS3            = 3;  { FILIALNO(M)                             }

const
  mtMFILIALS = 'C_TUNE::MFILIALS';
{$endif __MTtabledef__}
