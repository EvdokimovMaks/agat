{
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �               �����瑕 : GALDICT "�����皋�� ERP 9.1"                   �
 �    ���� 甌Г���� 01/02/19                                             �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
}

{$ifdef __MTtabledef__}
{様様様様様様� ��゛��� : F_FPBUDGET::STRU_CASHHASH "STRU_CASHHASH" 様様様様様様様}
type
  pSTRU_CASHHASH = ^tSTRU_CASHHASH;
  tSTRU_CASHHASH = object(tAtlHeader)   { - STRU_CASHHASH }
    CSLOJ          : Comp;            { CSLOJ                                 }
    CBLOCK         : Comp;            { CBLOCK                                }
    CSPSLOJ        : Comp;            { CSPSLOJ                               }
    NPP            : Word;            { NPP                                   }
    CANALIT1       : Comp;            { CANALIT1                              }
    CANALIT2       : Comp;            { CANALIT2                              }
    CANALIT3       : Comp;            { CANALIT3                              }
    CANALIT4       : Comp;            { CANALIT4                              }
    CANALIT5       : Comp;            { CANALIT5                              }
    CANALIT6       : Comp;            { CANALIT6                              }
    CANALIT7       : Comp;            { CANALIT7                              }
    CANALIT8       : Comp;            { CANALIT8                              }
    CANALIT9       : Comp;            { CANALIT9                              }
    CANALIT10      : Comp;            { CANALIT10                             }
  end;
const
  tiSTRU_CASHHASH01      = 0;  { NREC(J Sur Un M)                        }
  tiSTRU_CASHHASH03      = 1;  { CSLOJ(Un M) + CBLOCK + CANALIT1 + CANALIT2 +  }
                               { CANALIT3 + CANALIT4 + CANALIT5 + CANALIT6 +  }
                               { CANALIT7 + CANALIT8 + CANALIT9 + CANALIT10 }
  tiSTRU_CASHHASHLM      = 2;  { ATL_LASTDATE(M) + ATL_LASTTIME          }
  tiSTRU_CASHHASHLU      = 3;  { ATL_LASTUSER(M)                         }

const
  mtSTRU_CASHHASH = 'F_FPBUDGET::STRU_CASHHASH';
{$endif __MTtabledef__}
