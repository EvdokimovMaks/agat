/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,97 ��牆���罔� ���������                      �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ����←キ┘ ���祚����                                      �
 � �ム瓱�        : 5.00                                                      �
 � ��Л�腑�┘    : ��珥�腦� 瓷��め���� 竍モ�                                 �
 � �癶モ痰▲��覃 : �窶．��� �爬� �����※� (YURI)                             �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
��#doc
��珥�腦� 瓷��め���� 竍モ�
#end
#include FeeSigners.frn
.set name = 'KartStor'
.NameInList '��М��� 筮爼�'
.hide
.fields
 NameOrg
 TOVAR_NRec TOVAR_NAME TOVAR_BarKod
 TOVAR_Ed_Izm
 VDat V1 V2 V3 V4 V8
 SkladFltr // 瓷���, メ�� 筥�赳� �� 瓷��ゃ
 MOLFltr   // ���, メ�� 筥�赳� �� ���
 NameVal1
 NameVal2
 PriceR
 PriceV
 KolZn
 KolForm

 srPricekon : double
 kol      : double
 srPrice  : double
 srVPrice : double
 VhSumma  : double
 VhSummaV : double

 field0   // Nrec �爐ム�
 field_m12
 field1   // ���ム �爐ム�
 field2   // ����
 field3 : string  // ※� ��ム�罔�
 field4   // 皋� ��ム�罔�
 field5   // ���ム ������
 field6   // ��痰�∫┴ ���竍��
 field6_MOL //��痰�∫┴ ���竍�� ���
 field7   // 瓷���
 field8   // ���
 field9   // ��珥��
 field10 : double // ���-〓
 field11 : double // 罐�� �� イ┃ � ���
 field12 : double //              � ���
 field13 : double // 痰�━�痰譴┃ � ���
 field14 : double //              � ���
 ObjName :string

 ItogoPoOpers  : double
 ItogoSummaNDE : double // �皰�� 痰�━�痰� � ���
 ItogoSummaVal : double // �皰�� 痰�━�痰� � �����鈞�

 kolIsh      : double
 SrPriceIsh  : double
 srVPriceIsh : double
 IshSumma : double
 IshSummaV: double
 cSigner : comp
#FeeSignersFields
.endfields
.{
 �爍��├�罔� ^
 ��                     �������� ���������� �����

Nrec 皰����: ^
��━キ����┘ 皰���� :  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
���キ���矣爿覃 ���ム: ^
��.イ┃��� ├�ムキ��: ^��

�┼赳琺:
  ^^
  ^
  ^
  ^
  ^
����� ^ ��� ^
陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳堕陳堕陳陳賃陳陳陳陳陳陳賃陳陳陳陳陳陳賃陳陳陳陳陳陳堕陳陳陳陳陳陳陳堕陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳�
 NRec  � ���ム    �   ����   �  �┐   ��┓貝��ム � ��痰�∫┴   �   �����     �    ���     �    ��珥��     � ����腑痰〓�       �キ� �� イ┃�聶        �              �皰━�痰�            �     ｡螢��         �
       �          �          �        凱�コ�����こ(���竍�皀��) �             �            �               �           団陳陳陳陳陳陳賃陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳調  痰牀�皀�赱癶�     �
 �爐ム�� �爐ム�   �          凱�ム�罔┳��羈 ���  �             �             �            �               �           �    � ���     �    � @@@@@@   �      � ���       �    � @@@@@@    �                    �
陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳祖陳祖陳陳珍陳陳陳陳陳陳珍陳陳陳陳陳陳珍陳陳陳陳陳陳祖陳陳陳陳陳陳陳祖陳陳陳陳陳祖陳陳陳陳陳陳珍陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳�
����腑痰〓 Л���� か� 痺�� ��� ^
����腑痰〓 Л���� か� 痺�� ���鈞� ^
����腑痰〓 Л���� か� ����腑痰�� ^
��爼�� �襤��� ����腑痰�� ^
�キ� �� ���ユ: ^
�絎わ薑� �痰�皰�:                                                                                          &&&&&&&&&&& &'&&&&&&&&&.&& &'&&&&&&&&.&&&& &'&&&&&&&&&&&&&.&& &'&&&&&&&&&.&&&&
.{
@@@@@@@ @@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@ @@@ @@@@@@ @@@@@@ @@@@@@@@@@@@@ @@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@@@@ &&&&&&&&&&& &'&&&&&&&&&.&& &'&&&&&&&&.&&&& &'&&&&&&&&&&&&&.&& &'&&&&&&&&&.&&&& @@@@@@@@@@@@@@@@@@@@
.}
�皰�� �� ��ム�罔鍖:                                                                                        &&&&&&&&&&&                                &'&&&&&&&&&&&&&.&& &'&&&&&&&&&.&&&&
�痳�わ薑� �痰�皰�:                                                                                         &&&&&&&&&&& &'&&&&&&&&&.&& &'&&&&&&&&.&&&& &'&&&&&&&&&&&&&.&& &'&&&&&&&&&.&&&&
.}
^
#FeeSignersBody(KartStor)
.endform


#doc
�������� ���������� �����
#end
.linkform 'KartStor_01' prototype is KartStor
.NameInList '�������� ���������� �����'
.group 'common'
.group 'belform'
.group 'rusform'
#FeeSignersLinkVar
.fields
 CommonFormHeader
 NameOrg
 TOVAR_NAME TOVAR_BarKod
 TOVAR_Ed_Izm
.endfields
.var
page:word
.endvar
.p 50
.defo landscape
.begin
page := 0;
end.
.{
.{?Internal; page > 0





.}
.begin
page := page + 1;
end.
 ^
 ^
 ��                     �������� ���������� �����

��━キ����┘ 皰���� : ^
���キ���矣爿覃 ���ム: ^
��.イ┃��� ├�ムキ��: ^��
.{?Internal;VDat='1'
.fields
  V1
.endfields
   筥�赳� �� ����� : ^
.}// Internal
.{?Internal;V2<>'<�� ≡ガ>'
.fields
  V2
.endfields
   筥�赳� �� 瓷��ゃ: ^
.}// Internal
.{?Internal;V3<>'<�� ≡ガ>'
.fields
  V3
.endfields
   筥�赳� �� ���   : ^
.}// Internal
.{?Internal;V4<>'<�� ≡ガ>'
.fields
  V4
.endfields
   筥�赳� �� ��珥┬: ^
.}// Internal
.{?Internal;V8<>'<�� ≡ガ>'
.fields
  V8
.endfields
   筥�赳� �� ぅ瓷爬�皰珮: ^
.}// Internal
.fields
 NameVal1
 NameVal2

 DoubleToStr(kol, KolForm)
 DoubleToStr(srPrice, PriceR)
 DoubleToStr(srVPrice, PriceV)
 DoubleToStr(VhSumma, PriceR)
 DoubleToStr(VhSummaV, PriceV)

 field1   //���ム �爐ム�
 field2   //����
 field3   //※� ��ム�罔�
 field4   //皋� ��ム�罔�
 field5   //���ム ������
 field6   //��痰�∫┴ ���竍��
 field7   //瓷���
 field8   //���
 field9   //��珥��
 DoubleToStr(field10, KolForm) //���-〓
 DoubleToStr(field11, PriceR)  // 罐�� �� イ┃ � ���
 DoubleToStr(field12, PriceV)  //              � �����
 DoubleToStr(field13, PriceR)  // 痰�━�痰�    � ���
 DoubleToStr(field14, PriceV)  //              � �����

 DoubleToStr(ItogoPoOpers, KolForm)  // �皰�� �� ��ム�罔鍖
 DoubleToStr(ItogoSummaNDE, PriceR) // �皰�� 痰�━�痰� � ���
 DoubleToStr(ItogoSummaVal, PriceV) // �皰�� 痰�━�痰� � �����鈞�

 DoubleToStr(kolIsh, KolForm)
 DoubleToStr(SrPriceIsh, PriceR)
 DoubleToStr(srVPriceIsh, PriceV)
 DoubleToStr(IshSumma, PriceR)
 DoubleToStr(IshSummaV, PriceV)

! WhoStor AllDate AllKol
.endfields

陳陳陳賃陳陳陳陳陳堕陳陳陳賃陳賃陳陳陳堕陳陳陳陳陳陳堕陳陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳陳陳陳賃陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳
 ���ム �   ����   �  �┐   ��┓貝��ム � ��痰�∫┴   �   �����     �    ���     �    ��珥��     � ����腑痰〓�       �キ� �� イ┃�聶        �              �皰━�痰�
       �          �        凱�コ�����こ(���竍�皀��) �             �            �               �           団陳陳陳陳陳陳賃陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳�
 �爐ム��          凱�ム�罔┳��羈 ���  �             �             �            �               �           �    � ���     �    � @@@@@@   �      � ���       �    � @@@@@@
陳陳陳珍陳陳陳陳陳祖陳陳陳珍陳珍陳陳陳祖陳陳陳陳陳陳祖陳陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳陳陳陳珍陳陳陳陳陳珍陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳
 �絎わ薑� �痰�皰�:                                                                              &&&&&&&&&&& &'&&&&&&&&&&&& &'&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&
.{
@@@@@@@ @@@@@@@@@@ @@@@@@@@ @@@ @@@@@@ @@@@@@@@@@@@@ @@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@@@@ &&&&&&&&&&& &'&&&&&&&&&&&& &'&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&
.}

 �皰�� �� ��ム�罔鍖:                                                                            &&&&&&&&&&&                                &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&
 �痳�わ薑� �痰�皰�:                                                                             &&&&&&&&&&& &'&&&&&&&&&&&& &'&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&
.}

#FeeSignersLinkInit(KartStor)

.{?internal; (cSigner<>0)
.{While (���ム_��く������ < ����腑痰〓_��く����皰�)
.begin
  ���ム_��く������ := ���ム_��く������ + 1;
end.
.fields
  ��瘁│_��く�����_���Ν�痰� [���ム_��く������]
  ��瘁│_��く�����_���       [���ム_��く������]
.endfields
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   _____________________   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                           (ぎ�Ν�痰�)                              (��く�瘡)                             (��瘉�籥�→� ��く�瓱)
.}
.}
.{?internal; (cSigner=0)
__________________________________________________________   _____________________   ______________________________________________________________
                           (ぎ�Ν�痰�)                              (��く�瘡)                              (��瘉�籥�→� ��く�瓱)
.}
.endform


#doc
�������� ���������� �����
#end
.linkform 'KartStor_01_NDE' prototype is KartStor
.NameInList '�������� ���������� ����� (���) '
.group 'common'
.group 'belform'
.group 'rusform'
#FeeSignersLinkVar
.fields
 CommonFormHeader
 NameOrg
 TOVAR_NAME TOVAR_BarKod
 TOVAR_Ed_Izm
.endfields
.var
page:word
.endvar
.DEFO PORTRAIT
.begin
page := 0;
end.
.{
.{?Internal; page > 0





.}
.begin
page := page +1;
end.
 ^
 ^
 ��                     �������� ���������� �����

��━キ����┘ 皰���� : ^
���キ���矣爿覃 ���ム: ^
��.イ┃��� ├�ムキ��: ^��
.{?Internal;VDat='1'
.fields
  V1
.endfields
   筥�赳� �� ����� : ^
.}// Internal
.{?Internal;V2<>'<�� ≡ガ>'
.fields
  V2
.endfields
   筥�赳� �� 瓷��ゃ: ^
.}// Internal
.{?Internal;V3<>'<�� ≡ガ>'
.fields
  V3
.endfields
   筥�赳� �� ���   : ^
.}// Internal
.{?Internal;V4<>'<�� ≡ガ>'
.fields
  V4
.endfields
   筥�赳� �� ��珥┬: ^
.}// Internal
.{?Internal;V8<>'<�� ≡ガ>'
.fields
  V8
.endfields
   筥�赳� �� ぅ瓷爬�皰珮: ^
.}// Internal
.fields

 DoubleToStr(kol, KolForm)
 DoubleToStr(srPrice, PriceR)
 DoubleToStr(VhSumma, PriceR)

 field1   //���ム �爐ム�
 field2   //����
 field3   //※� ��ム�罔�
 field4   //皋� ��ム�罔�
 field5   //���ム ������
 field6   //��痰�∫┴ ���竍��
 field7   //瓷���
 field8   //���
 field9   //��珥��
 DoubleToStr(field10, KolForm) //���-〓
 DoubleToStr(field11, PriceR)  // 罐�� �� イ┃ � ���
 DoubleToStr(field13, PriceR)  // 痰�━�痰�    � ���

 DoubleToStr(ItogoPoOpers, KolForm)  // �皰�� �� ��ム�罔鍖
 DoubleToStr(ItogoSummaNDE, PriceR) // �皰�� 痰�━�痰� � ���

 DoubleToStr(kolIsh, KolForm)
 DoubleToStr(SrPriceIsh, PriceR)
 DoubleToStr(IshSumma, PriceR)

! WhoStor AllDate AllKol
.endfields


��陳陳陳賃陳陳陳陳陳堕陳陳陳賃陳陳陳堕陳陳陳陳堕陳陳陳陳陳陳堕陳陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳陳陳陳賃陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳
 ���ム �   ����   �  �┐   � �┓  �  ���ム  �  ��痰�∫┴  �   �����     �    ���     �    ��珥��     �  ����腑痰〓 �  �キ� �� イ┃�聶,  �     �皰━�痰�,
 �爐ム��          凱�ム�罔┳��ム�羈�����き���(���竍�皀��) �             �            �               �             �        � ���       �       � ���
陳陳陳珍陳陳陳陳陳祖陳陳陳珍陳陳陳祖陳陳陳陳祖陳陳陳陳陳陳祖陳陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳陳陳陳珍陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳陳
 �絎わ薑� �痰�皰�:                                                                                    &&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&&
.{
@@@@@@@ @@@@@@@@@@ @@@@@@@@ @@@@@@ @@@@@@@@@ @@@@@@@@@@@@@ @@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@@@@ &&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&&
.}

 �皰�� �� ��ム�罔鍖:                                                                                  &&&&&&&&&&&&&                      &'&&&&&&&&&&&&&&&&&&&
 �痳�わ薑� �痰�皰�:                                                                                   &&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&&
.}

#FeeSignersLinkInit(KartStor)

.{?internal; (cSigner<>0)
.{While (���ム_��く������ < ����腑痰〓_��く����皰�)
.begin
  ���ム_��く������ := ���ム_��く������ + 1;
end.
.fields
  ��瘁│_��く�����_���Ν�痰� [���ム_��く������]
  ��瘁│_��く�����_���       [���ム_��く������]
.endfields
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   _____________________   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                         (ぎ�Ν�痰�)                              (��く�瘡)                           (��瘉�籥�→� ��く�瓱)
.}
.}
.{?internal; (cSigner=0)
______________________________________________________   _____________________   __________________________________________________________
                         (ぎ�Ν�痰�)                              (��く�瘡)                            (��瘉�籥�→� ��く�瓱)
.}
.endform��
