! �������������������������������������������������������������������������ͻ
! �  ���ࠡ�⠫:  ����ᠭ�� ���⪮                                        �
! �  �����祭��:  ��������� �� �⮣�� ������ਧ�樨                        �
! �������������������������������������������������������������������������ͼ
!
! ��ଠ InvVed.frm �ᯮ������ INVBLANK.VIP, SLICVED.VIP � INVN_PRN.VPP
! �� ������ ᨭ�஭���஢��� �� !!!

#include Commission.frn
#doc
��������� �� �⮣�� ������ਧ�樨
#end
.set name='InvVed'
.hide
.var
  ������⢮_���⨨ : double
  業�_���⨨ : double
  sKolZnak  : string[10]
  sKolZnakS : string[10]
  業�_�த :double
.endvar
.fields
#CommissionFields
   �ਧ���_����        : Boolean
   NRec_������ਧ�樨  : comp
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
   ���_�᫮_������     : byte
   ��_�᫮_������     : byte
   wRoundSum            : word
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
!.}
!.end
!.}
.endfields
-------------------------------------------------------------------------------
#CommissionBody(PrintPereo)
   �ਧ��� ����                   ^

   NRec_������ਧ�樨 : comp      ^
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
   ���_�᫮_������    : byte      ^
   ��_�᫮_������    : byte      ^
   wRoundSum           : word      ^
.begin
  Case ���_�᫮_������ of
    0    : sKolZnak := '';
    1..9 : sKolZnak := PadCh('.', '8', ���_�᫮_������);
  else
           sKolZnak := '.8';
  End;

  Case ��_�᫮_������ of
    0    : sKolZnakS := '';
    1..9 : sKolZnakS := PadCh('.', '8', ���_�᫮_������);
  else
           sKolZnakS := '.9999';
  End;
end.
.{
  NRec_ᯥ�䨪�樨:comp       ^

  ���_��㯯�_�������_��:String ^

  ��_���:string                ^
  ��_��������:string           ^
  ��_����७��_���:string      ^
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
.begin
  ������⢮_���⨨ := ���_�ணࠬ���;
  業�_�த         := 業�_��;
  業�_���⨨       := 業�_�����;
end.
.}
.end
.}
.endform
