{
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �               �����瑕 : GALDICT "�����皋�� ERP 9.1"                   �
 �    ���� 甌Г���� 01/02/19                                             �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
}

{$ifdef __MTtabledef__}
{様様様様様様� ��゛��� : C_TREE::TREENODES "TREENODES" 様様様様様様様}
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
