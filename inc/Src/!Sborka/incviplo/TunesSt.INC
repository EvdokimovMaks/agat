{
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �               �����瑕 : GALDICT "�����皋�� ERP 9.1"                   �
 �    ���� 甌Г���� 01/02/19                                             �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
}

{$ifdef __MTtabledef__}
{様様様様様様� ��゛��� : C_TUNE::TUNESSTATISTICS "TUNESSTATISTICS" 様様様様様様様}
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
