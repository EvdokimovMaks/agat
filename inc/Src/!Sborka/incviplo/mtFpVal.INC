{
 �����������������������������������������������������������������������ͻ
 �               ������� : GALDICT "�����⨪� 9.1"                       �
 �    ��� ᮧ����� 04/04/16                                             �
 �����������������������������������������������������������������������ͼ
}

{$ifdef __MTtabledef__}
{������������� ������ : F_FPBUDGET::FPFORECASTVAL "FPFORECASTVAL" ��������������}
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