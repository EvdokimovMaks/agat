{
 �����������������������������������������������������������������������ͻ
 �               ������� : GALDICT "�����⨪� 9.1"                       �
 �    ��� ᮧ����� 30/03/16                                             �
 �����������������������������������������������������������������������ͼ
}

{$ifdef __MTtabledef__}
{������������� ������ : C_TUNE::MFILIALS "MFILIALS" ��������������}
type
  pMFILIALS = ^tMFILIALS;
  tMFILIALS = record   { - MFILIALS }
    ATL_NREC       : Comp;            { ATL_NREC                              }
    FILIALNO       : Word;            { ����� 䨫����                         }
    CFILIAL        : Comp;            { ��뫪� �� ������騩 䨫���          }
    CORG           : Comp;            { ��뫪� �� ��⠫�� ����ࠣ��⮢        }
    NAME           : String[80];      { �������� 䨫����                      }
  end;
const
  tiMFILIALS0            = 0;  { ATL_NREC(M)                             }
  tiMFILIALS1            = 1;  { CFILIAL(M) + ATL_NREC                   }
  tiMFILIALS2            = 2;  { CORG(M)                                 }
  tiMFILIALS3            = 3;  { FILIALNO(M)                             }

const
  mtMFILIALS = 'C_TUNE::MFILIALS';
{$endif __MTtabledef__}