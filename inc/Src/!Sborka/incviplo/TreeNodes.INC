{
 �����������������������������������������������������������������������ͻ
 �               ������� : GALDICT "�����⨪� 9.1"                       �
 �    ��� ᮧ����� 16/05/14                                             �
 �����������������������������������������������������������������������ͼ
}

{$ifdef __MTtabledef__}
{������������� ������ : C_TREE::TREENODES "TREENODES" ��������������}
type
  pTREENODES = ^tTREENODES;
  tTREENODES = record   { - TREENODES }
    CUPNODE        : Comp;            { CUPNODE                               }
    CNODE          : Comp;            { CNODE                                 }
    COTABLE        : Word;            { COTABLE                               }
    CREC           : Comp;            { CREC                                  }
  end;
const
  tiTREENODES01          = 0;  { CUPNODE(M) + COTABLE + CREC             }

const
  mtTREENODES = 'C_TREE::TREENODES';
{$endif __MTtabledef__}