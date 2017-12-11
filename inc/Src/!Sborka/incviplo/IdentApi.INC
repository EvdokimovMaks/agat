{
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ               ‘ซฎข เ์ : GALDICT " ซ ชโจช  9.1"                       บ
 บ     โ  แฎงค ญจ๏ 27/09/17                                             บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
}

{$ifdef __MTtabledef__}
{อออออออออออออ ’ กซจๆ  : F_PAT::IDENTAPIKEYLIST "IDENTAPIKEYLIST" ออออออออออออออ}
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
