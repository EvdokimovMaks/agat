{
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �               �����瑕 : GALDICT "�����皋�� ERP 9.1"                   �
 �    ���� 甌Г���� 01/02/19                                             �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
}

{$ifdef __MTtabledef__}
{様様様様様様� ��゛��� : F_PAT::IDENTAPIKEYLIST "IDENTAPIKEYLIST" 様様様様様様様}
type
  pIDENTAPIKEYLIST = ^tIDENTAPIKEYLIST;
  tIDENTAPIKEYLIST = record   { - IDENTAPIKEYLIST }
    KEY            : String[80];      { KEY                                   }
    KEYLENGTH      : Word;            { KEYLENGTH                             }
    PLUGINIFC      : String[80];      { PLUGINIFC                             }
    PLUGINWND      : String[80];      { PLUGINWND                             }
    CAPTION        : String[120];     { CAPTION                               }
  end;
const
  tiIDENTAPIKEYLIST01    = 0;  { KEY(M Up)                               }
  tiIDENTAPIKEYLIST02    = 1;  { KEYLENGTH(M <)                          }

const
  mtIDENTAPIKEYLIST = 'F_PAT::IDENTAPIKEYLIST';
{$endif __MTtabledef__}
