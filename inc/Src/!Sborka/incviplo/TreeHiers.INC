{
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �               �����瑕 : GALDICT "�����皋�� ERP 9.1"                   �
 �    ���� 甌Г���� 01/02/19                                             �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
}

{$ifdef __MTtabledef__}
{様様様様様様� ��゛��� : C_TREE::TREEHIERS "TREEHIERS" 様様様様様様様}
type
  pTREEHIERS = ^tTREEHIERS;
  tTREEHIERS = record   { - TREEHIERS }
    COTABLE        : Word;            { COTABLE                               }
    CREC           : Comp;            { CREC                                  }
    NPP            : Word;            { NPP                                   }
    HIERLEVEL      : Word;            { HIERLEVEL                             }
    CGROUP         : Comp;            { CGROUP                                }
    NAME           : String;          { NAME                                  }
    SORT           : String;          { SORT                                  }
    PARAM          : Word;            { PARAM                                 }
  end;
const
  tiTREEHIERS01          = 0;  { COTABLE(M) + CREC + NPP + HIERLEVEL     }

const
  mtTREEHIERS = 'C_TREE::TREEHIERS';
{$endif __MTtabledef__}
