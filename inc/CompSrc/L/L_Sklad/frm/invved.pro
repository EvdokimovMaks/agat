! 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
! �  ��о�｀���:  ��オ���む ���絎皖�                                        �
! �  ��Л�腑�┘:  �イ���痰� �� �皰��� ┃▲���爬��罔�                        �
! 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
!
! ��爼� InvVed.frm �甎��讌礇矚� INVBLANK.VIP, SLICVED.VIP � INVN_PRN.VPP
! �� ��＜れ皀 瓱�縲��├�牀��碎 ≡� !!!

#include Commission.frn
#doc
�イ���痰� �� �皰��� ┃▲���爬��罔�
#end
.set name='InvVed'
.hide
.var
  ����腑痰〓_��珥┬ : double
  罐��_��珥┬ : double
  sKolZnak  : string[10]
  sKolZnakS : string[10]
  罐��_�牀� :double
.endvar
.fields
#CommissionFields
   踸Л��_���瓱        : Boolean
   NRec_┃▲���爬��罔�  : comp
   ����_┃▲���爬��罔�  : date
   ���ム_┃▲���爬��罔� : string
   ����_���������_┃�   : date
   ���ム_�爬����        : string
   ����_�爬����         : date
   瓷���                : string
   ����_���             : string
   ���                  : string
   皋�_�祠              : word
   �皰��_ぎ�            : double
   �皰��_�痰            : double
   ���_腮甄�_Л����     : byte
   �祠_腮甄�_Л����     : byte
   wRoundSum            : word
!.{
    NRec_甎ユ�筥��罔�:comp

    ���_�珮���_�������_�� :String

    ��_���:string
    ��_��Б��┘:string
    イ_├�ムキ��_���: string
    ��辟�_��皋�_イ  : double
    イ_���:string
    イ_├�ムキ��:string
    ����_�謠←キ��:date // 痰��� SkipFormat
    ����腑痰〓:double   // 痰��� SkipFormat
!.if flagParty
!.{
    瓷���_1:string
    ���_1:string
    NRec_甎ユ�筥��罔�_ゃ゛�:comp
    ��_��痰�∫┴:string
    nRecParty : comp
    ��珥��:string
    ����_��珥┬
    ���_┃▲���爬��罔�:double
    ���_�牀�������:double
    罐��_��:double
    罐��_�����:double
    罐��_�牀�������:double
    罐��_├��茱�:double
    罐��_�イ�痰���:double
!.}
!.end
!.}
.endfields
-------------------------------------------------------------------------------
#CommissionBody(PrintPereo)
   踸Л�� ���瓱                   ^

   NRec_┃▲���爬��罔� : comp      ^
   ����_┃▲���爬��罔� : date      ^
   ���ム_┃▲���爬��罔�            ^
   ����_���������_┃�              ^
   ����_�爬����                    ^
   ���ム_�爬����                   ^
   瓷���               : string    ^
   ���Ν_���           : string    ^
   ���                 : string    ^
   皋�_�祠             : word      ^
   �皰��_ぎ�                       ^
   �皰��_�痰                       ^
   ���_腮甄�_Л����    : byte      ^
   �祠_腮甄�_Л����    : byte      ^
   wRoundSum           : word      ^
.begin
  Case ���_腮甄�_Л���� of
    0    : sKolZnak := '';
    1..9 : sKolZnak := PadCh('.', '8', ���_腮甄�_Л���� + 1);
  else
           sKolZnak := '.8';
  End;

  Case �祠_腮甄�_Л���� of
    0    : sKolZnakS := '';
    1..9 : sKolZnakS := PadCh('.', '8', ���_腮甄�_Л���� + 1);
  else
           sKolZnakS := '.9999';
  End;
end.
.{
  NRec_甎ユ�筥��罔�:comp       ^

  ���_�珮���_�������_��:String ^

  ��_���:string                ^
  ��_��Б��┘:string           ^
  イ_├�ムキ��_���:string      ^
  ��辟�_��皋�_イ  :double      ^
  イ_���:string                ^
  イ_├�ムキ��:string          ^
  ����_�謠←キ��:date          ^
  ����腑痰〓:double            ^
.if flagParty
.{
   瓷���_1:string              ^
   ���_1:string                ^
   NRec_甎ユ�筥��罔�_ゃ゛�     ^
   ��_��痰�∫┴                ^
   nRecParty                   ^
   ��珥��:string               ^
   ����_��珥┬:date            ^
   ���_┃▲���爬��罔�:double   ^
   ���_�牀�������:double       ^
   罐��_��:double              ^
   罐��_�����:double           ^
   罐��_�牀�������:double      ^
   罐��_├��茱�:double         ^
   罐��_�イ�痰���:double       ^
.begin
  ����腑痰〓_��珥┬ := ���_�牀�������;
  罐��_�牀�         := 罐��_��;
  罐��_��珥┬       := 罐��_�����;
end.
.}
.end
.}
.endform
