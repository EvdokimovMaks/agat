{
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �               �����瑕 : GALDICT "�����皋�� ERP 9.1"                   �
 �    ���� 甌Г���� 01/02/19                                             �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
}

{$ifdef __MTtabledef__}
{様様様様様様� ��゛��� : F_FPBUDGET::FPFORECASTVAL "FPFORECASTVAL" 様様様様様様様}
type
  pFPFORECASTVAL = ^tFPFORECASTVAL;
  tFPFORECASTVAL = record   { - FPFORECASTVAL }
    CMATRIX        : LongInt;         { CMATRIX                               }
    CVALREAL       : Comp;            { CVALREAL                              }
    CVALFORECAST   : Comp;            { CVALFORECAST                          }
    CVARIANT       : Comp;            { CVARIANT                              }
  end;
const
  tiFPFORECASTVAL01      = 0;  { CMATRIX(M) + CVALREAL                   }
  tiFPFORECASTVAL02      = 1;  { CMATRIX(M) + CVALFORECAST               }
  tiFPFORECASTVAL03      = 2;  { CVARIANT(M) + CVALREAL                  }

const
  mtFPFORECASTVAL = 'F_FPBUDGET::FPFORECASTVAL';
{$endif __MTtabledef__}
