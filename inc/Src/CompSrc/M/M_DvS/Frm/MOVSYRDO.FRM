/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,97 ��牆���罔� ���������                      �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : �����趺メ��� 瘠瑕�                                        �
 � �ム瓱�        : 5.20                                                      �
 � ��Л�腑�┘    : �砒モ�-▲ぎ��痰� あ└キ�� 瘠瑕� �� ぎ��〓珮 �ムム�｀皖�   �
 � �癶モ痰▲��覃 : �窶．��� �爬� �����※� (YURI)                             �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/

.Set Name = 'MovSyrDo'
.NameInList '��М��� 筮爼�'
.hide
.fields
 N_DO
 s_date_po_date

 Syrje
   Date_Nakl_In
   Num_Nakl_In SyrjeIn_Kol:double SyrjeIn_Partia SyrjeIn_PriceDo:double SyrjeIn_PriceUch:double

   Date_Nakl_Bk
   Num_Nakl_Bk SyrjeBk_Kol:double SyrjeBk_Partia SyrjeBk_PriceDo:double SyrjeBk_PriceUch:double

   Date_Nakl_Re
   Num_Nakl_Re SyrjeRe_Kol:double SyrjeRe_Partia SyrjeRe_PriceDo:double SyrjeRe_PriceUch:double

.endfields


                       �イ���痰� あ└キ�� 瘠瑕�
                    �� �� �ムム�｀皖� ^
                  �� �ム┏� ^

.{
@@@@@@@@@@@@@@@@@@@@
.{
 �ムイ����� 瘠瑕�
@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&  &'&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&

 �ムム�｀������ 瘠瑕�
@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&&  &'&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&
 〓Б��薀���� 瘠瑕�
@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&&  &'&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&

.}
.{
.fields
                     sSyrjeIn_Kol:double sSyrjeIn_PriceDo:double sSyrjeIn_PriceUch:double
                     sSyrjeBk_Kol:double sSyrjeBk_PriceDo:double sSyrjeBk_PriceUch:double
                     sSyrjeRe_Kol:double sSyrjeRe_PriceDo:double sSyrjeRe_PriceUch:double
.endfields
      �皰��:             &'&&&&&&&&          &'&&&&&&&&&&&&&&&      &'&&&&&&&&&&&&&&&
                         &'&&&&&&&&          &'&&&&&&&&&&&&&&&      &'&&&&&&&&&&&&&&&
                         &'&&&&&&&&          &'&&&&&&&&&&&&&&&      &'&&&&&&&&&&&&&&&

.}
.}
.endform


.Linkform 'MovSyrDo1' prototype is 'MovSyrDo'
.NameInList '�※Ε�┘ 瘠瑕� (ぎ��〓爿�� 罐��)'
.fields
 N_DO
 s_date_po_date
 Syrje
   Date_Nakl_In
   Num_Nakl_In SyrjeIn_Kol SyrjeIn_Partia SyrjeIn_PriceDo

   Date_Nakl_Bk
   Num_Nakl_Bk SyrjeBk_Kol SyrjeBk_Partia SyrjeBk_PriceDo

   Date_Nakl_Re
   Num_Nakl_Re SyrjeRe_Kol SyrjeRe_Partia SyrjeRe_PriceDo
.endfields

                       �イ���痰� あ└キ�� 瘠瑕�
                  �� �� �ムム�｀皖� ^
                  �� �ム┏� ^
                         � 罐��� �� �����き覓

��陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳
   ���� � ���ム   �           �ムイ����� 瘠瑕�                 �         �ムム�｀������  瘠瑕�              �             ��Б��薀���� 瘠瑕�
    �����き��     団陳陳陳陳賃陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳津陳陳陳陳陳堕陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳田陳陳陳陳賃陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳
                  � ���-〓:  � ��珥��:       � �皰━�痰�:      � ���-〓:  � ��珥��:       � �皰━�痰�:      � ���-〓:  � ��珥��:       � �皰━�痰�:
陳陳陳陳陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳
.{
�� ^��
.{
.{?Internal;(SyrjeIn_Kol>0)
@@@@@@@@@@
@@@@@@@@@@@@@@@@@@ &'&&&&&&&& @@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&
.}
.{?Internal;(SyrjeBk_Kol>0)
@@@@@@@@@@
@@@@@@@@@@@@@@@@@@                                              &'&&&&&&&& @@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&
.}
.{?Internal;(SyrjeRe_Kol>0)
@@@@@@@@@@
@@@@@@@@@@@@@@@@@@                                                                                           &'&&&&&&&& @@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&
.}
.}

.{
.fields

                  sSyrjeIn_Kol                sSyrjeIn_PriceDo sSyrjeBk_Kol                sSyrjeBk_PriceDo  sSyrjeRe_Kol                sSyrjeRe_PriceDo
.endfields
陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳
�� �皰��:          &'&&&&&&&&                 &'&&&&&&&&&&&&&&& &'&&&&&&&&                 &'&&&&&&&&&&&&&&& &'&&&&&&&&                 &'&&&&&&&&&&&&&&&��
��様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様
��
.}
.}
.endform

.Linkform 'MovSyrDo2' prototype is 'MovSyrDo'
.NameInList '�※Ε�┘ 瘠瑕� (罐�� ├ �爐ム��)'
.fields
 N_DO
 s_date_po_date
 Syrje
   Date_Nakl_In
   Num_Nakl_In SyrjeIn_Kol SyrjeIn_Partia SyrjeIn_PriceUch
   Date_Nakl_Bk
   Num_Nakl_Bk SyrjeBk_Kol SyrjeBk_Partia SyrjeBk_PriceUch
   Date_Nakl_Re
   Num_Nakl_Re SyrjeRe_Kol SyrjeRe_Partia SyrjeRe_PriceUch
.endfields


                       �イ���痰� あ└キ�� 瘠瑕�
                  �� �� �ムム�｀皖� ^
                  �� �ム┏� ^
                      � �� 罐��� �爐ム��

��陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳
   ���� � ���ム   �           �ムイ����� 瘠瑕�                 �         �ムム�｀������  瘠瑕�              �             ��Б��薀���� 瘠瑕�
    �����き��     団陳陳陳陳賃陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳津陳陳陳陳陳堕陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳田陳陳陳陳賃陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳
                  � ���-〓:  � ��珥��:       � �皰━�痰�:      � ���-〓:  � ��珥��:       � �皰━�痰�:      � ���-〓:  � ��珥��:       � �皰━�痰�:
陳陳陳陳陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳
.{
�� ^��
.{
.{?Internal;(SyrjeIn_Kol>0)
@@@@@@@@@@
@@@@@@@@@@@@@@@@@@ &'&&&&&&&& @@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&
.}
.{?Internal;(SyrjeBk_Kol>0)
@@@@@@@@@@
@@@@@@@@@@@@@@@@@@                                              &'&&&&&&&& @@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&
.}
.{?Internal;(SyrjeRe_Kol>0)
@@@@@@@@@@
@@@@@@@@@@@@@@@@@@                                                                                           &'&&&&&&&& @@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&
.}
.}
.{
.fields

                  sSyrjeIn_Kol                sSyrjeIn_PriceUch sSyrjeBk_Kol                sSyrjeBk_PriceUch  sSyrjeRe_Kol              sSyrjeRe_PriceUch
.endfields
陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳
 �皰��:            &'&&&&&&&&                 &'&&&&&&&&&&&&&&& &'&&&&&&&&                 &'&&&&&&&&&&&&&&& &'&&&&&&&&                 &'&&&&&&&&&&&&&&&��
��様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様
��
.}
.}
.endform
