{
 �����������������������������������������������������������������������ͻ
 �               ������� : GALDICT "�����⨪� 9.1"                       �
 �    ��� ᮧ����� 16/05/14                                             �
 �����������������������������������������������������������������������ͼ
}

{$ifdef __MTtabledef__}
{������������� ������ : C_TREE::TREEHIERS "TREEHIERS" ��������������}
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