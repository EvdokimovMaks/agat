#include Commission.frn
#doc
��������� �� �⮣�� ������ਧ�樨
#end
.set name='InvnVed'
.hide
.var
  ������⢮_���⨨ : double
  業�_���⨨ : double
  sKolZnak  : string[10]
  業�_�த :double
.endvar
.fields
#CommissionFields
   �ਧ���_����        : Boolean
   NRec_������ਧ�樨  : comp
   ��_����             : string
   ��_������������     : string
   ���_������ਧ�樨  : date
   �����_������ਧ�樨 : string
   ���_����砭��_���   : date
   �����_�ਪ���        : string
   ���_�ਪ���         : date
   ᪫��                : string
   ����_���             : string
   ���                  : string
   ⨯_��              : word
   �⮣�_���            : double
   �⮣�_���            : double
   ���_�᫮_������     : word
!.{
      NRec_ᯥ�䨪�樨:comp

      ���_��㯯�_�������_�� :String

      ��_���:string
      ��_��������:string
      ��_����७��_���: string
      �����_��⨢_��  : double
      ��_���:string
      ��_����७��:string
      ���_������:date // �⮨� SkipFormat
      ������⢮:double   // �⮨� SkipFormat
!.if flagParty
!.{
      ᪫��_1:string
      ���_1:string
      NRec_ᯥ�䨪�樨_�㡫�:comp
      ��_���⠢騪:string
      nRecParty : comp
      �����:string
      ���_���⨨
      ���_������ਧ�樨:double
      ���_�ணࠬ���:double
      業�_��:double
      業�_�����:double
      業�_�ணࠬ���:double
      業�_����襪:double
      業�_�������:double
      //��
      ��ꥪ▓_��������:string
      ���1_��������:string
      ���2_��������:string
      ���3_��������:string
      ���4_��������:string
      ���5_��������:string
      ���6_��������:string
      ���7_��������:string
      ���8_��������:string
      ���9_��������:string
      ���10_��������:string
      ���_��_�����:string
!.}
!.end
!.}
.endfields
-------------------------------------------------------------------------------
#CommissionBody(PrintPereo)
   �ਧ��� ����                   ^

   NRec_������ਧ�樨 : comp      ^
   ��_����            : string    ^
   ��_������������    : string    ^
   ���_������ਧ�樨 : date      ^
   �����_������ਧ�樨            ^
   ���_����砭��_���              ^
   ���_�ਪ���                    ^
   �����_�ਪ���                   ^
   ᪫��               : string    ^
   �����_���           : string    ^
   ���                 : string    ^
   ⨯_��             : word      ^
   �⮣�_���                       ^
   �⮣�_���                       ^
   ���_�᫮_������    : word      ^
.begin
  Case ���_�᫮_������ of
    0 : sKolZnak := '';
    2 : sKolZnak := '.88';
    3 : sKolZnak := '.888';
    4 : sKolZnak := '.8888';
    5 : sKolZnak := '.88888';
    6 : sKolZnak := '.888888';
    7 : sKolZnak := '.8888888';
    8 : sKolZnak := '.88888888';
    9 : sKolZnak := '.888888888';
  else
    sKolZnak := '.8';
  End;
end.
.{
  NRec_ᯥ�䨪�樨:comp       ^

  ���_��㯯�_�������_��:String ^

  ��_���:string                ^
  ��_��������:string           ^
  ��_����७��_���: string     ^
  �����_��⨢_��  :double      ^
  ��_���:string                ^
  ��_����७��:string          ^
  ���_������:date          ^
  ������⢮:double            ^
.if flagParty
.{
   ᪫��_1:string              ^
   ���_1:string                ^
   NRec_ᯥ�䨪�樨_�㡫�     ^
   ��_���⠢騪                ^
   nRecParty                   ^
   �����:string               ^
   ���_���⨨:date            ^
   ���_������ਧ�樨:double   ^
   ���_�ணࠬ���:double       ^
   業�_��:double              ^
   業�_�����:double           ^
   業�_�ணࠬ���:double      ^
   業�_����襪:double         ^
   業�_�������:double       ^
   //��
   ��ꥪ▓_��������:string    ^
   ���1_��������:string        ^
   ���2_��������:string        ^
   ���3_��������:string        ^
   ���4_��������:string        ^
   ���5_��������:string        ^
   ���6_��������:string        ^
   ���7_��������:string        ^
   ���8_��������:string        ^
   ���9_��������:string        ^
   ���10_��������:string       ^
   ���_��_�����:string       ^
.begin
  ������⢮_���⨨ := ���_�ணࠬ���;
  業�_�த := 業�_��;
  業�_���⨨ := 業�_�����;
end.
.}
.end
.}
.endform
