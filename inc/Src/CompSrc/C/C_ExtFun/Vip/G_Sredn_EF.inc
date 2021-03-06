//******************************************************************************
//                                                      (�) ��௮��� �����⨪�
// �����⨪� 8.1 - ��ࠡ�⭠� ����-������ �� �।����
// ���ᠭ�� ��ॣ����஢����� �㭪権
//******************************************************************************
//
function Delim_Po_M(comp, String, Comp, word): boolean; external 'G_SUMDIVIDE.DLL';
function SetKolDnP (Date, Date, String, Comp, Word, boolean, byte, double): double; external 'G_SUMDIVIDE.DLL';
// ���ᠭ�� �㭪樨 SetKolDnO_D1_D2 (���५�)
//                           DataB         -��砫� ��� ����
//                           DataOK        -����砭�� ��� ����
//                           DataR         -��� ஦�����
//                           dayN          -���� ��砫� �����������
//                           MonN          -����� ��砫� �����������
//                           D1            -��室��� ��� ��砫�
//                           D2            -��室��� ��� ����砭��
//                           PrTabN        -⠡���� �����
//                           PrcLsch       -��뫪� �� ��
//                           SickListKind  -��� ���� ��ᮡ��
//                           KlFlag        -�㤥� �� ���� �� ���� ������� ��䨪
//                           Procent       -���� ��業� �� �����䨪��� ��ᮡ��
//                           VIDOPLD       -�-�� ���� ��ࢮ�� ��業�
//                           VIDOPLO       -��ன ��業� �� �����䨪��� ��ᮡ��
//                           Osoben        -��� �ᮡ������
//                           LastTime      -��࠭�稢��� �த����⥫쭮���
Function SetKolDnO_D1_D2 (Date,Date,Date, double,integer, Date, Date, String, Comp, Word, boolean, longint, longint, longint, longint, Time): double; external 'G_SUMDIVIDE.DLL';
//------------------------------------------------------------------------------
#doc
  �����頥� ������⢮ ����稢����� ���� ����� ��⠬� DataN � DatOk ���
  ���᪠ � ����� ᯮᮡ� ������ KodOpl, � ��⮬ ��������� ०��� ࠡ���
  ��楢��� ��� Account.
#end
function OtpKolDn(KodOpl: word, DataN: date, DatOk: date, Account: comp): double; external 'G_SUMDIVIDE.DLL';

#doc
  �����頥� ���� ����砭�� ���᪠ � ����� ᯮᮡ� ������ KodOpl �� ���
  ��砫� DataN, �������� ����稢����� ���� KolDn � � ��⮬ ��������� ०���
  ࠡ��� ��楢��� ��� Account.
#end
function OtpDatOk(KodOpl: word, DataN: date, KolDn: double, Account: comp): date; external 'G_SUMDIVIDE.DLL';

#doc
  �����頥� ������⢮ �ᮢ ��� ��㦤������ ���᪠ ����� ��⠬� DataN � DatOk,
  � ��⮬ ��������� ०��� ࠡ��� ��楢��� ��� Account, � � ������������
  ��࠭�祭�� ������⢠ �ᮢ ���᪠ OstCh �� �ਧ���� ��࠭�祭�� Limit
#end
function OtpChasF(Account : comp, DataN : date, DatOk : date, OstCh : double, Limit : boolean): double; external 'G_SUMDIVIDE.DLL';

#doc
  �����頥� ������⢮ ���� ���᪠ � ����� Kotpus � ����� MonOtp ���� YearOtp
  ��� ��楢��� ��� Account
#end
function OtpDnKod(Kotpus : word, MonOtp : word, YearOtp : word, Account : comp): word; external 'G_SUMDIVIDE.DLL';

#ifdef Gal8_1
function SetVOtpSum(String, Comp, Comp, Longint, Date, Date, Double, Double, Double, Word): Double; external 'G_SUMDIVIDE.DLL';
#else
function SetVOtpSum(Longint, Comp, Comp, Longint, Date, Date, Double, Double, Double, Word): Double; external 'G_SUMDIVIDE.DLL';
#end
#doc
  ���५�.�����頥�  �㬬� �।���������� c ��⮬  ��業�
#end
// ���ᠭ�� �㭪樨 day_proc_1
//                  pszp         - ��筮� ��業�
//                  Procent1     - �� �����䨪��� ��ᮡ��
//                  Procent2     - �� �����䨪��� ��ᮡ��
//                  KlPsZp       - �� ����.�⠦��
//                  Z_Need_48    - ���㣫��� ��᫥ 㬭������ �� ��業�
//                  raszar       - �㬬� � ����
//                  dniiChas     - �-�� ���� ��� �ᮢ �� ����.��ᮡ��
//                  DataN        - ��� ��砫� ���쭨筮��
//                  dayN         - ���� ��砫� ���쭨筮��
//                  MonN         - ����� ��砫� ���쭨筮��
//                  PDCh         - �ࠧ��� �� ��� ��� �� �ᠬ
//                  kldn         - �-�� ���� ��� �ᮢ ���쭨筮��
//                  TabN         - ⠡���� �����
//                  PrcLsch      - ��뫪� �� ��
//                  SickListKind - ��� ��ᮡ��
//                  kldnall      - �-�� ���� �ᥣ� ���쭨筮��
//                  kldnpred     - �-�� ���� �� ���� ��砫� ���쭨筮�� �� ���� DataN
//                  dni1proc     - �-�� ���� ��ࢮ�� ��業�, ��������� ������
//                  Proc_FSS     - �� ����� �⠦�� ��� FSS
function day_proc_1(double, longint, longint, longint, word, double, double, date, double, integer, word, double,
                    String, Comp, word, double, double, double, word): double; external 'G_SUMDIVIDE.DLL';

#doc
  �����頥�  �㬬� �।���������� c ��⮬  ��業�
#end
// ���ᠭ�� �㭪樨 dni_i_2
//  DataN   - ��� ��砫� ���쭨筮��
//  PDCh    - �ࠧ��� �� ��� ��� �� �ᠬ
//  KOLD3   - �-�� ���� ��ண� ��業�
//  kldn    - �-�� ���� ��� �ᮢ ���쭨筮��
//  TabN    - ⠡���� �����
//  PrcLsch - ��뫪� �� ��
//  SickListKind- ��� ��ᮡ��
function dni_i_2(date,word,integer,double,String,comp,word):double;   external 'G_SUMDIVIDE.DLL';

#doc
���५�.B����頥� ���-�� ����(�ᮢ) ��� ������ �� ��ࢮ�� ��業��, ������ ��� ����襭�� ०���  
#end
//���ᠭ�� �㭪樨 dni_i_1
//                  DataN    - ��� ��砫� ���쭨筮��
//                  dayN     - ���� ��砫� ���쭨筮��
//                  MonN  - ����� ��砫� ���쭨筮��
//                  PDCh  - �ࠧ��� �� ��� ��� �� �ᠬ
//                  dniiChas- �-�� ���� ��� �ᮢ �� ����.��ᮡ��
//                  kldn         - �-�� ���� ��� �ᮢ ���쭨筮��
//                  TabN         - ⠡���� �����
//                  PrcLsch      - ��뫪� �� ��
//                  SickListKind - ��� ��ᮡ��
//                  kldnall      - �-�� ���� �ᥣ� ���쭨筮��
//                  kldnpred     - �-�� ���� �� ���� ��砫� ���쭨筮�� �� ���� DataN
//                  dni1proc     - �-�� ���� ��ࢮ�� ��業�, ��������� ������
function dni_i_1(date,double,integer,word,double,double,String,comp,word,double,double,double): double; external 'G_SUMDIVIDE.DLL';

#doc
���५�.������뢠�� ࠧ��� �㬬� ���쭨筮�� �� �।���������� �� ��業�
#end
// ���ᠭ�� �㭪樨 day_pro
//                  pszp         - ��筮� ��業�
//                  Procent1     - �� �����䨪��� ��ᮡ��
//                  Procent2     - �� �����䨪��� ��ᮡ��
//                  KlPsZp       - �� ����.�⠦��
//                  PROC3        - ��⨩ ��業� ��ᮡ��
//                  KolD3        - �-�� ���� ��ண� ���
//                  Z_Need_48    - ���㣫��� ��᫥ 㬭������ �� ��業�
//                  raszar       - �㬬� � ����
//                  dniiChas     - �-�� ���� ��� �ᮢ �� ����.��ᮡ��
//                  DataN        - ��� ��砫� ���쭨筮��
//                  dayN         - ���� ��砫� ���쭨筮��
//                  MonN         - ����� ��砫� ���쭨筮��
//                  PDCh         - �ࠧ��� �� ��� ��� �� �ᠬ
//                  kldn         - �-�� ���� ��� �ᮢ ���쭨筮��
//                  TabN         - ⠡���� �����
//                  PrcLsch      - ��뫪� �� ��
//                  SickListKind - ��� ��ᮡ��
//                  kldnall      - �-�� ���� �ᥣ� ���쭨筮��
//                  kldnpred     - �-�� ���� �� ���� ��砫� ���쭨筮�� �� ���� DataN
//                  dni1proc     - �-�� ���� ��ࢮ�� ��業�, ��������� ������
function day_pro(double, longint, longint, longint,word,Integer,word, double, double, date, double, integer, word, double, String, Comp, word, double, double, double): double; external 'G_SUMDIVIDE.DLL';
#doc
 �㭪�� �������� ���� ����砭�� ������ ���쭨筮��
#end
//���ᠭ�� �㭪樨  D_N_O_ 
//                  DataN        - ��� ��砫� ���쭨筮��
//                  DatOK        - ��� ����砭�� ���쭨筮��
//                  dayN         - ���� ��砫� ���쭨筮��
//                  MonN         - ����� ��砫� ���쭨筮��
//                  TabN         - ⠡���� �����
//                  PrcLsch      - ��뫪� �� ��
//                  SickListKind - ��� ��ᮡ��
//                  pszp         - ��筮� ��業�
//                  Procent1     - �� �����䨪��� ��ᮡ��
//                  Procent2     - �� �����䨪��� ��ᮡ��
//                  KlPsZp       - �� ����.�⠦��
//                  dniiChas     - �-�� ���� ��� �ᮢ �� ����.��ᮡ��
function D_N_O_ (date,date,double,integer, String, Comp,word,double, longint, longint, longint,double):date; external 'G_SUMDIVIDE.DLL';
                
#doc
�㭪�� ��室�� ���� ����㯫���� ����㤮ᯮᮡ���� (��砫� �����������)
#end
//���ᠭ�� �㭪樨  D_N_Z 
//                  DataN        - ��� ��砫� ���쭨筮��
//                  dayN         - ���� ��砫� �����������
//                  MonN         - ����� ��砫� �����������
//                  YearN        - ��� ��砫� �����������
function D_N_Z(date, double, integer, Comp): Date; external 'G_SUMDIVIDE.DLL';

#doc
�����頥� ���-�� ����(�ᮢ) ��� ������ �� ��ࢮ�� ��業�� �� ���⮬ ����襭��
#end
//���ᠭ�� �㭪樨  dni_i_ch_ 
//                  DataN        - ��� ��砫� ���쭨筮��
//                  dayN         - ���� ��砫� �����������
//                  MonN         - ����� ��砫� �����������
//                  YearN        - ��� ��砫� �����������
//                  PDCh         - �ࠧ��� �� ��� ��� �� �ᠬ
//                  dniiChas     - �-�� ���� ��� �ᮢ �� ����.��ᮡ��
//                  kldn         - �-�� ���� ��� �ᮢ ���쭨筮��
//                  TabN         - ⠡���� �����
//                  PrcLsch      - ��뫪� �� ��
//                  SickListKind - ��� ��ᮡ��
//                  kldnall      - �-�� ���� �ᥣ� ���쭨筮��
//                  kldnpred     - �-�� ���� �� ���� ��砫� ���쭨筮�� �� ���� DataN
//                  dni1proc     - �-�� ���� ��ࢮ�� ��業�, ��������� ������

function dni_i_ch_(date, double, integer, Comp, word, double, double, String, Comp, word, double, double, double): double; external 'G_SUMDIVIDE.DLL';

#doc
�㭪�� �����頥� �-�� ࠡ��� ���� �᭮���� �㬬�
#end
//���ᠭ�� �㭪樨  dni_i 
//                  DataN        - ��� ��砫� ���쭨筮��
//                  dayN         - ���� ��砫� �����������
//                  MonN         - ����� ��砫� �����������
//                  YearN        - ��� ��砫� �����������
//                  PDCh         - �ࠧ��� �� ��� ��� �� �ᠬ
//                  dniiChas     - �-�� ���� ��� �ᮢ �� ����.��ᮡ��
//                  kldn         - �-�� ���� ��� �ᮢ ���쭨筮��
//                  TabN         - ⠡���� �����
//                  PrcLsch      - ��뫪� �� ��
//                  SickListKind - ��� ��ᮡ��
//                  kldnall      - �-�� ���� �ᥣ� ���쭨筮��
//                  kldnpred     - �-�� ���� �� ���� ��砫� ���쭨筮�� �� ���� DataN
//                  dni1proc     - �-�� ���� ��ࢮ�� ��業�, ��������� ������
//                  VidOplOO     - ���� ����� �� ��� �।��
//                  VIDOPLOD     - ���� ����� �� ��� ���
function dni_i (date, double, integer, Comp, word, double, double, String,  Comp, word, double, double, double, longint, longint): double; external 'G_SUMDIVIDE.DLL';
#doc
������뢠�� ࠧ��� �㬬� ���쭨筮�� �� �।���������� �� ��業�
#end
// ���ᠭ�� �㭪樨 day_pr
//                  pszp         - ��筮� ��業�
//                  Procent1     - �� �����䨪��� ��ᮡ��
//                  Procent2     - �� �����䨪��� ��ᮡ��
//                  KlPsZp       - �� ����.�⠦��
//                  PROC3        - ��⨩ ��業� ��ᮡ��
//                  KolD3        - �-�� ���� ��ண� ���
//                  Z_Need_48    - ���㣫��� ��᫥ 㬭������ �� ��業�
//                  raszar       - �㬬� � ����
//                  dniiChas     - �-�� ���� ��� �ᮢ �� ����.��ᮡ��
//                  DataN        - ��� ��砫� ���쭨筮��
//                  dayN         - ���� ��砫� ���쭨筮��
//                  MonN         - ����� ��砫� ���쭨筮��
//                  YearN        - ���   ��砫� �����������
//                  PDCh         - �ࠧ��� �� ��� ��� �� �ᠬ
//                  kldn         - �-�� ���� ��� �ᮢ ���쭨筮��
//                  TabN         - ⠡���� �����
//                  PrcLsch      - ��뫪� �� ��
//                  SickListKind - ��� ��ᮡ��
//                  kldnall      - �-�� ���� �ᥣ� ���쭨筮��
//                  kldnpred     - �-�� ���� �� ���� ��砫� ���쭨筮�� �� ���� DataN
//                  dni1proc     - �-�� ���� ��ࢮ�� ��業�, ��������� ������
function day_pr (double, longint, longint, longint,word,Integer,word, double, double, date, double, integer, Comp, word, double, String, Comp, word, double, double, double): double; external 'G_SUMDIVIDE.DLL';

// ���ᠭ�� �㭪樨 SetKolDn_D1_D2 (�맮� SetKolDnP � ��⮬ �ந������� ��� ��砫� � ����砭��)
//                           DataB         -��砫� ��� ����
//                           DataOK        -����砭�� ��� ����
//                           DataR         -��� ஦�����
//                           dayN          -���� ��砫� �����������
//                           MonN          -����� ��砫� �����������
//                           YearN         - ���   ��砫� �����������
//                           D1            -��室��� ��� ��砫�
//                           D2            -��室��� ��� ����砭��
//                           PrTabN        -⠡���� �����
//                           PrcLsch       -��뫪� �� ��
//                           SickListKind  -��� ���� ��ᮡ��
//                           KlFlag        -�㤥� �� ���� �� ���� ������� ��䨪
//                           Procent       -���� ��業� �� �����䨪��� ��ᮡ��
//                           VIDOPLD       -�-�� ���� ��ࢮ�� ��業�
//                           VIDOPLO       -��ன ��業� �� �����䨪��� ��ᮡ��
//                           Osoben        -��� �ᮡ������
//                           IsOgrbyte     -��࠭�稢��� �த����⥫쭮���
//                           RemDays       -���⮪ ����稢����� ����
#doc
��⠭�������� �-�� ���� � ��⮬ ���室�� � �����ਮ�, ���⪠ �� ��࠭�祭�� �த����⥫쭮�� � �ந������� ��� ��砫� � ����砭��
#end
Function SetKolDn_D1_D2 (Date,Date,Date, double,integer, Comp, Date, Date, String, Comp, Word, boolean, longint, longint, longint, longint, byte, double): double; external 'G_SUMDIVIDE.DLL';

#doc
�㭪�� �����뢠�� ࠧ��� �।���������� �� �㬬� ��ࠡ�⪠,���-�� ��.� ���
#end

// ���ᠭ�� �㭪樨 pr_d_s (
//                  pszp         - ��筮� ��業�
//                  Procent1     - �� �����䨪��� ��ᮡ��
//                  Procent2     - �� �����䨪��� ��ᮡ��
//                  KlPsZp       - �� ����.�⠦��
//                  PROC3        - ��⨩ ��業� ��ᮡ��
//                  KolD3        - �-�� ���� ��ண� ���
//                  Z_Need_48    - ���㣫��� ��᫥ 㬭������ �� ��業�
//                  Summa        - �㬬� ���쭨筮��
//                  dniiChas     - �-�� ���� ��� �ᮢ �� ����.��ᮡ��
//                  DataN        - ��� ��砫� ���쭨筮��
//                  dayN         - ���� ��砫� ���쭨筮��
//                  MonN         - ����� ��砫� ���쭨筮��
//                  YearN        - ���   ��砫� �����������
//                  PDCh         - �ࠧ��� �� ��� ��� �� �ᠬ
//                  kldn         - �-�� ���� ��� �ᮢ ���쭨筮��
//                  TabN         - ⠡���� �����
//                  PrcLsch      - ��뫪� �� ��
//                  SickListKind - ��� ��ᮡ��
//                  kldnall      - �-�� ���� �ᥣ� ���쭨筮��
//                  kldnpred     - �-�� ���� �� ���� ��砫� ���쭨筮�� �� ���� DataN
//                  dni1proc     - �-�� ���� ��ࢮ�� ��業�, ��������� ������
//                  Proc_FSS     - �� ����� �⠦�� ��� FSS

function pr_d_s(double,longint,longint,longint,word,Integer,word,double,double,date,double,integer,comp,word,
                double,String,Comp,word,double,double,double, word): double; external 'G_SUMDIVIDE.DLL';

//���ᠭ�� �㭪樨  D_O_ 
//                  DataN        - ��� ��砫� ���쭨筮��
//                  DatOK        - ��� ����砭�� ���쭨筮��
//                  dayN         - ���� ��砫� ���쭨筮��
//                  MonN         - ����� ��砫� ���쭨筮��
//                  YearN        - ���   ��砫� �����������
//                  TabN         - ⠡���� �����
//                  PrcLsch      - ��뫪� �� ��
//                  SickListKind - ��� ��ᮡ��
//                  pszp         - ��筮� ��業�
//                  Procent1     - �� �����䨪��� ��ᮡ��
//                  Procent2     - �� �����䨪��� ��ᮡ��
//                  KlPsZp       - �� ����.�⠦��
//                  dniiChas     - �-�� ���� ��� �ᮢ �� ����.��ᮡ��
//                  Proc_FSS     - �� ����� �⠦�� ��� FSS

#doc
 �㭪�� �����頥� ���� ����砭�� ������ ���쭨筮��
#end
function D_O_ (date,date,double,integer, Comp, String, Comp,word,double, longint, longint, longint,
               double, word):date; external 'G_SUMDIVIDE.DLL';

#doc
���५�.B����頥� ���-�� ����(�ᮢ) ��� ������ �� ��ࢮ�� ��業��, ������ ��� ����襭�� ०���  
#end
//���ᠭ�� �㭪樨 dni_i_1
//                  DataN    - ��� ��砫� ���쭨筮��
//                  dayN     - ���� ��砫� ���쭨筮��
//                  MonN     - ����� ��砫� ���쭨筮��
//                  YearN    - ���   ��砫� �����������
//                  PDCh     - �ࠧ��� �� ��� ��� �� �ᠬ
//                  dniiChas - �-�� ���� ��� �ᮢ �� ����.��ᮡ��
//                  kldn     - �-�� ���� ��� �ᮢ ���쭨筮��
//                  TabN     - ⠡���� �����
//                  PrcLsch  - ��뫪� �� ��
//                  SickListKind - ��� ��ᮡ��
//                  kldnall      - �-�� ���� �ᥣ� ���쭨筮��
//                  kldnpred     - �-�� ���� �� ���� ��砫� ���쭨筮�� �� ���� DataN
//                  dni1proc     - �-�� ���� ��ࢮ�� ��業�, ��������� ������
function dni_i_1_(date,double,integer, Comp,word,double,double,String,comp,word,double,double,double): double; external 'G_SUMDIVIDE.DLL';

#doc
  �����頥�  �㬬� �।���������� c ��⮬  ��業�
#end
// ���ᠭ�� �㭪樨 day_proc_1_
//                  pszp         - ��筮� ��業�
//                  Procent1     - �� �����䨪��� ��ᮡ��
//                  Procent2     - �� �����䨪��� ��ᮡ��
//                  KlPsZp       - �� ����.�⠦��
//                  Z_Need_48    - ���㣫��� ��᫥ 㬭������ �� ��業�
//                  raszar       - �㬬� � ����
//                  dniiChas     - �-�� ���� ��� �ᮢ �� ����.��ᮡ��
//                  DataN        - ��� ��砫� ���쭨筮��
//                  dayN         - ���� ��砫� ���쭨筮��
//                  MonN         - ����� ��砫� ���쭨筮��
//                  YearN        - ���   ��砫� �����������
//                  PDCh         - �ࠧ��� �� ��� ��� �� �ᠬ
//                  kldn         - �-�� ���� ��� �ᮢ ���쭨筮��
//                  TabN         - ⠡���� �����
//                  PrcLsch      - ��뫪� �� ��
//                  SickListKind - ��� ��ᮡ��
//                  kldnall      - �-�� ���� �ᥣ� ���쭨筮��
//                  kldnpred     - �-�� ���� �� ���� ��砫� ���쭨筮�� �� ���� DataN
//                  dni1proc     - �-�� ���� ��ࢮ�� ��業�, ��������� ������
//                  Proc_FSS     - �� ����� �⠦�� ��� FSS
function day_proc_1_(double, longint, longint, longint, word, double, double, date, double, integer, comp,
                     word, double, String, Comp, word, double, double, double, word): double; external 'G_SUMDIVIDE.DLL';

#doc
������⢮ ������ ��᫥ ����⮩ � ����⢥���� �᫥
#end
#ifdef __GetKolZnakZar__
Function GetKolZnakZar(double): byte; external 'G_SREDN.DLL';
#else
Function GetKolZnak(double): byte; external 'G_SREDN.DLL'; // �� ��砩, �᫨ ��஭��� ࠧࠡ��稪� 㦥 �ᯮ����� �맮� �⮣� ��⮤�
#end

// ��� �� �室����� � �����
function KOT(date, comp): double; external 'G_SREDN.DLL';

#doc
function PROC_STAG_SA �����頥� ��業� �� �����䨪��� c ��⮬ �⠦� �㦡� � �ନ�  
  ��ࠬ���� �㭪樨  
                  pszp        - ��業� ��筮�� �����
                  DataN       - ��� ��砫� �����������
                  DatNps      - ��� ��砫� �����뢭��� �⠦� �� ��
                  TabN        - ������� �����
                 PNrec       - ��뫪� �� ���ᮭ�
#end
function PROC_STAG_SA(double, Date, Date, String,double, Comp): Word; external 'G_SUMDIVIDE.DLL';

#doc
function Restrict_D2_Inval �����頥� ���� ����砭�� ����稢����� ���� ���쭨筮��
   ��ࠬ����      D2             - ��� ����砭�� ��ਮ�� (���쭨筮��)
                  DateRegMedExp  - ��� ॣ����樨 � ���
                  StatNetr       - ����� ����㤮ᯮᮡ����
                  GroupInv       - ��㯯� �����������

   �����頥��� ��� ����砭�� ����稢����� ���� ���쭨筮��, ����� ����� ���� ��࠭�祭�
   ��⮩ ����㯫���� ����������� � ��ਮ� ���쭨筮��. � �⮬ ��砥 ����稢���� ���
   ���쭨筮�� ��࠭�稢����� ��⮩, �।�����饩 ��� ॣ����樨 � ���.
#end

function RESTRICT_D2_INVAL(date, date, word, word): date; external 'G_SUMDIVIDE.DLL';

Function SetKolDn_D1_D2_Shift(double,
                              Date,Date,Date,
                              Date,
                              Date, Date, String, Comp, Word, boolean,
                              longint, longint, longint, longint, byte,
                              double): double; external 'G_SUMDIVIDE.DLL';

function Day_pr_Shift(double, word, double, longint, longint, longint, word, integer, word,
                      double, double, date, date, word, double, string, comp, word,
                      double, double, double): double; external 'G_SUMDIVIDE.DLL';

function Day_pr_ProcFSS(double, word, double, longint, longint, longint, word, integer, word,
                        double, double, date, date, word, double, string, comp, word,
                        double, double, double, word): double; external 'G_SUMDIVIDE.DLL';

function Day_proc_1_Shift(double, double, longint, longint, longint, word, double,
                          double, date, date, word, double, String, comp, word,
                          double, double, double): double; external 'G_SUMDIVIDE.DLL';

function Day_proc_1_ProcFSS(double, double, longint, longint, longint, word, double,
                            double, date, date, word, double, String, comp, word,
                            double, double, double, word): double; external 'G_SUMDIVIDE.DLL';

function Pr_D_S_Shift(double, word, double, longint, longint, longint, word, Integer,
                      word, double, double, date, date, word, double, String,
                      comp, word, double, double, double): double; external 'G_SUMDIVIDE.DLL';

function Pr_D_S_ProcFSS(double, word, double, longint, longint, longint, word, Integer,
                      word, double, double, date, date, word, double, String,
                      comp, word, double, double, double, word): double; external 'G_SUMDIVIDE.DLL';

function Dni_i_ch_Shift(double, date, date, word, double, double, String, comp, word,
                        double, double, double):double; external 'G_SUMDIVIDE.DLL';

function dni_i_1_Shift(double, date, date, word, double, double, String, comp, word,
                       double, double, double):double; external 'G_SUMDIVIDE.DLL';

function dni_i_Shift(double, date, date, word, double, double, string, comp, word, double,
                     double, double,  longint, longint): double; external 'G_SUMDIVIDE.DLL';


function Dni_i_date_Shift(double, date, date, word, double, double, String, comp, word, double,
                          double, double, longint, longint, date):double; external 'G_SUMDIVIDE.DLL';

function D_O_Shift(double, date, date, date, String, comp, word, double, longint, longint, longint,
                   double): date;  external 'G_SUMDIVIDE.DLL';

function D_O_ProcFSS(double, date, date, date, String, comp, word, double, longint, longint, longint,
                   double, word): date;  external 'G_SUMDIVIDE.DLL';
