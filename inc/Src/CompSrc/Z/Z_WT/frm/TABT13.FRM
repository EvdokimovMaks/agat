/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,2000 ��牆���罔� ���������                    �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ����｀皚�� �����                                          �
 � �ム瓱�        : 5.70                                                      �
 � ��Л�腑�┘    : ��．�� 竍モ� �甎��讌������ ��｀腑�� ∇ガキ�               �
 �                 (�┓���� 筮爼� N �-13)                                    �
 � �癶モ痰▲��覃 : ��甄����� ��碎鎰� ���え��牀↓�                            �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
#doc
��．�� 竍モ� �甎��讌������ ��｀腑�� ∇ガキ�
(�┓���� 筮爼� N �-13)
#end
.form TabT13
.p 80
.hide
.fields
  Pred
  Podr
  PeriodBeginning PeriodEnding

  Day_1 Day_2 Day_3 Day_4 Day_5 Day_6 Day_7 Day_8 Day_9 Day_10 Day_11 Day_12 Day_13 Day_14 Day_15
  Day_16 Day_17 Day_18 Day_19 Day_20 Day_21 Day_22 Day_23 Day_24 Day_25 Day_26 Day_27 Day_28 Day_29 Day_30 Day_31

  AnalitikName

  LayerCount
  D1  D2  D3  D4  D5  D6  D7  D8  D9  D10 D11 D12 D13 D14 D15
  �ム�_���_き�
  VidOpl1 ��玻瘍モ1 Day1 Chas1 VidOpl2 ��玻瘍モ2 Day2 Chas2 KodNejavki1 DayNejavok1 ChasNejavok1 PrintHours1 KodNejavki2 DayNejavok2 ChasNejavok2 PrintHours2
  Npp LSTABNREC PEREXODNREC FIO �メ閹_き� lschnum TabN WageCategory
  Ch1 Ch2 Ch3 Ch4
  Ch5 Ch6 Ch7 Ch8
  Ch9 Ch10 Ch11 Ch12
  Ch13 Ch14 Ch15
  �ム�_���_��瘠
  VidOpl3 ��玻瘍モ3 Day3 Chas3 VidOpl4 ��玻瘍モ4 Day4 Chas4 KodNejavki3 DayNejavok3 ChasNejavok3 PrintHours3 KodNejavki4 DayNejavok4 ChasNejavok4 PrintHours4
  Dolg
  D16  D17  D18  D19  D20  D21  D22  D23  D24  D25  D26  D27  D28  D29  D30  D31
  ≒��_���_き�
  VidOpl5 ��玻瘍モ5 Day5 Chas5 VidOpl6 ��玻瘍モ6 Day6 Chas6 KodNejavki5 DayNejavok5 ChasNejavok5 PrintHours5 KodNejavki6 DayNejavok6 ChasNejavok6 PrintHours6
  �メ閹_��瘠
  Ch16 Ch17 Ch18 Ch19
  Ch20 Ch21 Ch22 Ch23
  Ch24 Ch25 Ch26 Ch27
  Ch28 Ch29 Ch30 Ch31
  ≒��_���_��瘠
  VidOpl7 ��玻瘍モ7 Day7 Chas7 VidOpl8 ��玻瘍モ8 Day8 Chas8 KodNejavki7 DayNejavok7 ChasNejavok7 PrintHours7 KodNejavki8 DayNejavok8 ChasNejavok8 PrintHours8

  // き�/��瘠 ≒�牀�� 甄��:
  L2D1 L2D2 L2D3 L2D4 L2D5 L2D6 L2D7 L2D8 L2D9 L2D10 L2D11 L2D12 L2D13 L2D14 L2D15
  L2�ム�_���_き� L2�メ閹_き�
  L2Ch1 L2Ch2 L2Ch3 L2Ch4 L2Ch5 L2Ch6 L2Ch7 L2Ch8 L2Ch9 L2Ch10 L2Ch11 L2Ch12 L2Ch13 L2Ch14 L2Ch15
  L2�ム�_���_��瘠
  L2D16 L2D17 L2D18 L2D19 L2D20 L2D21 L2D22 L2D23 L2D24 L2D25 L2D26 L2D27 L2D28 L2D29 L2D30 L2D31
  L2≒��_���_き� L2�メ閹_��瘠
  L2Ch16 L2Ch17 L2Ch18 L2Ch19 L2Ch20 L2Ch21 L2Ch22 L2Ch23 L2Ch24 L2Ch25 L2Ch26 L2Ch27 L2Ch28 L2Ch29 L2Ch30 L2Ch31
  L2≒��_���_��瘠
.endfields
.if Show_Analitik
.else
.end
.{ checkenter
 ^
 ^
 ^^
 ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.{
 ^
.{
 ^
 ^^^^^^^^^^^^^^^  ^ ^^^^^^^^ ^^^^^^^^
 ^^ ^^ ^^^^^^^^^^^^^^^^^  ^ ^^^^^^^^ ^^^^^^^^
 ^ ^
 ^^^^^^^^^^^^^^^^ ^ ^^^^^^^^ ^^^^^^^^
 ^ ^
 ^^^^^^^^^^^^^^^^ ^ ^^^^^^^^ ^^^^^^^^
 ^^^^^^^^^^^^^^^ ^^
 ^^^^^^^^^^^^^^^ ^
 ^^^^^^^^^^^^^^^^ ^^
 ^^^^^^^^^^^^^^^^ ^
.}
.}
.{ checkenter FirstPage
.}
.}
.endform
!
!
!
.linkform 'TabT13_01' prototype is 'TabT13'
.nameinlist '���筥罔牀������ 筮爼� ��-13'
.group '�-13'
.p 56
.var
  FirstLine: boolean;
  AnFirstLine: boolean;
  LineCount: integer; // ��矣��讚�� ����腑痰〓 ���皋腑瓷� ���ョ�����諷 痰牀�
  FutureLineCount: integer; // �ムガキ��� か� �牀����� ���-�� 痰牀�, 艪�° �� ��え碎 �瑙�� � LineCount, ��� 矣� ���跏� °��
  LinesPerPage: integer;
  lShow_Analitik: boolean;
.endvar
.fields
! CommonFormHeader
  Pred
  Podr
  PeriodBeginning PeriodEnding

  Day_1 Day_2 Day_3 Day_4 Day_5 Day_6 Day_7 Day_8 Day_9 Day_10 Day_11 Day_12 Day_13 Day_14 Day_15
  Day_16 Day_17 Day_18 Day_19 Day_20 Day_21 Day_22 Day_23 Day_24 Day_25 Day_26 Day_27 Day_28 Day_29 Day_30 Day_31

  AnalitikName

  // ----- ��゛�腦� ��茫�:
  // �� 1/2
  D1  D2  D3  D4  D5  D6  D7  D8  D9  D10 D11 D12 D13 D14 D15
  �ム�_���_き�
  VidOpl1 ��玻瘍モ1 Day1 Time2StrDef(Double(Chas1)) VidOpl2 ��玻瘍モ2 Day2 Time2StrDef(Double(Chas2)) KodNejavki1 DayNejavok1 KodNejavki2 DayNejavok2
  Npp
  LogicSubStr(GetSurnameWithInitials(FIO), 22, false, false)
  TabN
  �メ閹_き�

  // ��瘠 1/2
  Time2StrDef(Double(Ch1)) Time2StrDef(Double(Ch2)) Time2StrDef(Double(Ch3)) Time2StrDef(Double(Ch4))
  Time2StrDef(Double(Ch5)) Time2StrDef(Double(Ch6)) Time2StrDef(Double(Ch7)) Time2StrDef(Double(Ch8))
  Time2StrDef(Double(Ch9)) Time2StrDef(Double(Ch10)) Time2StrDef(Double(Ch11)) Time2StrDef(Double(Ch12))
  Time2StrDef(Double(Ch13)) Time2StrDef(Double(Ch14)) Time2StrDef(Double(Ch15))

  Time2StrDef(Double(�ム�_���_��瘠))

  VidOpl3 ��玻瘍モ3 Day3 Time2StrDef(Double(Chas3)) VidOpl4 ��玻瘍モ4 Day4 Time2StrDef(Double(Chas4)) KodNejavki3 DayNejavok3 KodNejavki4 DayNejavok4
  LogicSubStr(Dolg, 22, true, true)
  LogicSubStr(Dolg, 22, true, true)

  // �� 2/2
  D16  D17  D18  D19  D20  D21  D22  D23  D24  D25  D26  D27  D28  D29  D30  D31
  ≒��_���_き�
  VidOpl5 ��玻瘍モ5 Day5 Time2StrDef(Double(Chas5)) VidOpl6 ��玻瘍モ6 Day6 Time2StrDef(Double(Chas6)) KodNejavki5 DayNejavok5 KodNejavki6 DayNejavok6
  LogicSubStr(Dolg, 22, true, true)

  Time2StrDef(Double(�メ閹_��瘠))
  // ��瘠 2/2
  Time2StrDef(Double(Ch16)) Time2StrDef(Double(Ch17)) Time2StrDef(Double(Ch18)) Time2StrDef(Double(Ch19))
  Time2StrDef(Double(Ch20)) Time2StrDef(Double(Ch21)) Time2StrDef(Double(Ch22)) Time2StrDef(Double(Ch23))
  Time2StrDef(Double(Ch24)) Time2StrDef(Double(Ch25)) Time2StrDef(Double(Ch26)) Time2StrDef(Double(Ch27))
  Time2StrDef(Double(Ch28)) Time2StrDef(Double(Ch29)) Time2StrDef(Double(Ch30)) Time2StrDef(Double(Ch31))

  Time2StrDef(Double(≒��_���_��瘠))

  vidOpl7 ��玻瘍モ7 Day7 Time2StrDef(Double(Chas7)) VidOpl8 ��玻瘍モ8 Day8 Time2StrDef(Double(Chas8)) KodNejavki7 DayNejavok7 KodNejavki8 DayNejavok8
  //-----
  // ��゛�腦� - ≡�. �クム� か� あ竇甄������ ��爬���� �皰÷�Ε��� ��゛�腦� ��茫�:
  // ������� ����襯 ≒�牀�� 甄��, ��皰� - �ム〓��.
  // �� 1/2
  L2D1 L2D2 L2D3 L2D4 L2D5 L2D6 L2D7 L2D8 L2D9 L2D10 L2D11 L2D12 L2D13 L2D14 L2D15
  L2�ム�_���_き�
  VidOpl1 ��玻瘍モ1 Day1 Time2StrDef(Double(Chas1)) VidOpl2 ��玻瘍モ2 Day2 Time2StrDef(Double(Chas2)) KodNejavki1 DayNejavok1 KodNejavki2 DayNejavok2
  Npp
  LogicSubStr(GetSurnameWithInitials(FIO), 22, false, false)
  TabN

  // ��瘠 1/2
  Time2StrDef(Double(L2Ch1)) Time2StrDef(Double(L2Ch2)) Time2StrDef(Double(L2Ch3)) Time2StrDef(Double(L2Ch4))
  Time2StrDef(Double(L2Ch5)) Time2StrDef(Double(L2Ch6)) Time2StrDef(Double(L2Ch7)) Time2StrDef(Double(L2Ch8))
  Time2StrDef(Double(L2Ch9)) Time2StrDef(Double(L2Ch10)) Time2StrDef(Double(L2Ch11)) Time2StrDef(Double(L2Ch12))
  Time2StrDef(Double(L2Ch13)) Time2StrDef(Double(L2Ch14)) Time2StrDef(Double(L2Ch15))

  Time2StrDef(Double(L2�ム�_���_��瘠))

  VidOpl3 ��玻瘍モ3 Day3 Time2StrDef(Double(Chas3)) VidOpl4 ��玻瘍モ4 Day4 Time2StrDef(Double(Chas4)) KodNejavki3 DayNejavok3 KodNejavki4 DayNejavok4
  LogicSubStr(Dolg, 22, true, true)
  LogicSubStr(Dolg, 22, true, true)

  // �� 2/2
  L2D16 L2D17 L2D18 L2D19 L2D20 L2D21 L2D22 L2D23 L2D24 L2D25 L2D26 L2D27 L2D28 L2D29 L2D30 L2D31
  L2≒��_���_き�
  VidOpl5 ��玻瘍モ5 Day5 Time2StrDef(Double(Chas5)) VidOpl6 ��玻瘍モ6 Day6 Time2StrDef(Double(Chas6)) KodNejavki5 DayNejavok5 KodNejavki6 DayNejavok6
  LogicSubStr(Dolg, 22, true, true)
  �メ閹_き�

  // ��瘠 2/2
  Time2StrDef(Double(L2Ch16)) Time2StrDef(Double(L2Ch17)) Time2StrDef(Double(L2Ch18)) Time2StrDef(Double(L2Ch19))
  Time2StrDef(Double(L2Ch20)) Time2StrDef(Double(L2Ch21)) Time2StrDef(Double(L2Ch22)) Time2StrDef(Double(L2Ch23))
  Time2StrDef(Double(L2Ch24)) Time2StrDef(Double(L2Ch25)) Time2StrDef(Double(L2Ch26)) Time2StrDef(Double(L2Ch27))
  Time2StrDef(Double(L2Ch28)) Time2StrDef(Double(L2Ch29)) Time2StrDef(Double(L2Ch30)) Time2StrDef(Double(L2Ch31))

  Time2StrDef(Double(L2≒��_���_��瘠))

  vidOpl7 ��玻瘍モ7 Day7 Time2StrDef(Double(Chas7)) VidOpl8 ��玻瘍モ8 Day8 Time2StrDef(Double(Chas8)) KodNejavki7 DayNejavok7 KodNejavki8 DayNejavok8

  // ����襯 �ム〓�� 甄��. �� 轤�� ��� ＜ぅ� ��腮薀, ��皰�� 艪� �� �礒�� ≡��←閧� ��Л�瓷� � �牀艫� ム祗ゃ
  // �� 1/2
  D1  D2  D3  D4  D5  D6  D7  D8  D9  D10  D11  D12  D13  D14  D15
  �ム�_���_き�
  Time2StrDef(Double(�メ閹_��瘠))

  // ��瘠 1/2
  Time2StrDef(Double(Ch1)) Time2StrDef(Double(Ch2)) Time2StrDef(Double(Ch3)) Time2StrDef(Double(Ch4))
  Time2StrDef(Double(Ch5)) Time2StrDef(Double(Ch6)) Time2StrDef(Double(Ch7)) Time2StrDef(Double(Ch8))
  Time2StrDef(Double(Ch9)) Time2StrDef(Double(Ch10)) Time2StrDef(Double(Ch11)) Time2StrDef(Double(Ch12))
  Time2StrDef(Double(Ch13)) Time2StrDef(Double(Ch14)) Time2StrDef(Double(Ch15))

  Time2StrDef(Double(�ム�_���_��瘠))

  // �� 2/2
  D16  D17  D18  D19  D20  D21  D22  D23  D24  D25  D26  D27  D28  D29  D30  D31
  ≒��_���_き�

  // ��瘠 2/2
  Time2StrDef(Double(Ch16)) Time2StrDef(Double(Ch17)) Time2StrDef(Double(Ch18)) Time2StrDef(Double(Ch19))
  Time2StrDef(Double(Ch20)) Time2StrDef(Double(Ch21)) Time2StrDef(Double(Ch22)) Time2StrDef(Double(Ch23))
  Time2StrDef(Double(Ch24)) Time2StrDef(Double(Ch25)) Time2StrDef(Double(Ch26)) Time2StrDef(Double(Ch27))
  Time2StrDef(Double(Ch28)) Time2StrDef(Double(Ch29)) Time2StrDef(Double(Ch30)) Time2StrDef(Double(Ch31))

  Time2StrDef(Double(≒��_���_��瘠))
.endfields
.if Show_Analitik
.begin
  lShow_Analitik := true;
end.
.else
.begin
  lShow_Analitik := false;
end.
.end
.{ checkenter
��                                                                                                                                                                                                     ���筥罔牀������ 筮爼� � �-13
                                                                                                                                                                                                     �癶ムΔキ� ��痰���←キ┘� ��瓷��痰���
                                                                                                                                                                                                     ��瘁┬ �� 05.01.2004 � 1

                                                                                                                                                                                                                                  敖陳陳陳�
                                                                                                                                                                                                                                  �  ���  �
                                                                                                                                                                                                                                  団陳陳陳�
                                                                                                                                                                                                                    ��爼� �� ���� �0301008�
                                                                                                                                                                                                                                  団陳陳陳�
 ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��        �� ���� �       �
                                                                                              ��━キ����┘ �爍��├�罔�                                                                                                            団陳陳陳�
                                                                                                                                                                                                                                  �       �
 ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                青陳陳陳�
                                                                                      ��━キ����┘ 痰珮�矣爿��� ��む�Гカキ��

                                                                                                                                                                                            敖陳陳陳陳堕陳陳陳陳陳� 敖陳陳陳陳陳陳陳陳陳陳�
                                                                                                                                                                                            �  ���ム  �   ����    � �   �砒モ�覃 �ム┏�   �
                                                                                                                                                                                            海��祠キ��梶�痰�←キ�鏗 団陳陳陳陳賃陳陳陳陳陳�
                                                                                                                                                                                            �         �           � �    �     �    ��    �
                                                                                                                                                                                            団陳陳陳陳田陳陳陳陳陳� 団陳陳陳陳津陳陳陳陳陳�
                                                                                                                                                                                            �         �           � �@@@@@@@@@@�@@@@@@@@@@�
                                                                                                       ������                                                                               青陳陳陳陳祖陳陳陳陳陳� 青陳陳陳陳珍陳陳陳陳陳�
                                                                                                ����� �������� �������
浜様様僕様様様様様様様様様様曜様様様様様僕様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様僕様様様様様様僕様様様様様様様様様様様様様様様様様様様様様様様様様様様様僕様様様様様様様様様様様様�
����ム����┼��, ┃�罔���,    � ��．�讚覃�                   �皙モ�� � 錢��� � �ワ→�� �� ��｀矣 �� 腮甄�� �メ閹�                        ��矗�｀���� ���        ����襯 か� ��腮甄キ�� ����｀皚�� ���硅           �   �ワ→� �� �爬腮���    �
痕�   困��Ν�痰�             �    ���ム �                                                                                               �             �            �� ※��� � �����←キ�鍖 ��矗��               �                         �
痕�-  �(甎ユ���讚�痰�,       �          把陳陳堕陳陳堕陳陳堕陳陳堕陳陳堕陳陳堕陳陳堕陳陳堕陳陳堕陳陳堕陳陳堕陳陳堕陳陳堕陳陳堕陳陳堕陳陳彡陳陳賃陳陳陳彡陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳彡陳陳堕陳陳賃陳陳賃陳陳陳�
材錣�禳�牀筌瘁��)            �          �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     痕���- 階メ閹 �                   ��� ※�� ����硅                       昏��  海��   蟹��  海��   �
�     �                      �          �  && �  && �  && �  && �  && �  && �  && �  && �  && � &&  � &&  � &&  � &&  � &&  � &&  � �   頃┃�  �      把陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳�     �(��瘠)�     �(��瘠)�
�     �                      �          �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     根メ閹��      把陳陳陳陳陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳陳陳�     �      �     �      �
�     �                      �          �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �(I,II)�      �                 ��玻メ���え珮鉗┤ 瘍モ                  �     �      �     �      �
�     �                      �          把陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳彡陳陳珍陳陳陳彡陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳�     �      �     �      �
�     �                      �          �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     き�     把陳陳賃陳陳陳陳賃陳陳陳陳陳津陳陳陳堕陳陳陳陳堕陳陳陳陳陳�     �      �     �      �
�     �                      �          � &&  � &&  � &&  � &&  � &&  � &&  � &&  � &&  � &&  � &&  � &&  � &&  � &&  � &&  � &&  � &&  把陳陳陳陳陳陳昏��   蟹�玻メ-  海��        蟹��   蟹�玻メ-  海��        �     �      �     �      �
�     �                      �          �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �    ��瘠     頃┐�  劾��え珮�-�(��瘠)     晦┐�  劾��え珮�-�(��瘠)     �     �      �     �      �
�     �                      �          �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �             混���硅渇┤ 瘍モ �           凱���硅渇┤ 瘍モ �           �     �      �     �      �
把陳陳彡陳陳陳陳陳陳陳陳陳陳鍔陳陳陳陳陳彡陳陳祖陳陳祖陳陳祖陳陳祖陳陳祖陳陳祖陳陳祖陳陳祖陳陳祖陳陳祖陳陳祖陳陳祖陳陳祖陳陳祖陳陳祖陳陳彡陳陳賃陳陳陳彡陳陳津陳陳陳陳津陳陳陳陳陳津陳陳陳田陳陳陳陳田陳陳陳陳陳彡陳陳田陳陳津陳陳津陳陳陳�
�  1  �             2        �     3    �                                            4                                                  �   5  �   6  �  7   �     8   �     9     �  7   �    8    �    9      �  10 �   11 �  10 �  11  �
��.{?internal; lShow_Analitik;
��麺様様瞥様様様様様様様様様様擁様様様様様瞥様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様瞥様様溶様様様瞥様様溶様様様様溶様様様様様溶様様様詫様様様様詫様様様様様瞥様様詫様様溶様様溶様様様���
.}
.{?internal; not lShow_Analitik;
��麺様様陵様様様様様様様様様様洋様様様様様陵様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様陵様様謡様様様陵様様謡様様様様謡様様様様様謡様様様慷様様様様慷様様様様様陵様様慷様様謡様様謡様様様�
��.}
��.begin
  FirstLine := true;
  LineCount := 39;
  LinesPerPage := 56;
end.
.{
��.{?internal; lShow_Analitik;
.begin
  // ���Ν� 祠メ皋碎瘴 ━� �����皋�� � 絎硼 ° �え� ��．�讚覃 腑��▲�
  FutureLineCount := LineCount + (if (LayerCount = 2, 15, 7) + if (FirstLine, 2, 3));
end.
.{?internal;(FutureLineCount > LinesPerPage - 1);
! �甄� �� ↑ラ�ガ瘴, ��-��Л��� �ョ���碎 �└�銕 �����聶 ��ぎ´�
.{?internal; FirstLine; // 痼�с Ε �� ↑メ皋��瘡: �� °��モ ���.
��藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様���
.}
.{?internal; not FirstLine;
��藩様様瞥様様様様様様様様様様擁様様様様様瞥様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様瞥様様溶様様様瞥様様溶様様様様溶様様様様様溶様様様詫様様様様詫様様様様様瞥様様詫様様溶様様溶様様様���
.}
.begin
  LineCount++; // 轤� �� 瘍驍 皰�讓� 艪� ���ョ������� �└�ォ �����肓
end.
.{ while (LineCount < LinesPerPage)
!��；��ガ �竅硅�� 痰牀���� ぎ ����� 痰����肓

.begin
  LineCount++;
end.
.}
��浜様様僕様様様様様様様様様様曜様様様様様僕様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様僕様様用様様様僕様様用様様様様用様様様様様用様様様冤様様様様冤様様様様様僕様様冤様様用様様用様様様�
�  1  �             2        �     3    �                                            4                                                  �   5  �   6  �  7   �     8   �     9     �  7   �    8    �    9      �  10 �   11 �  10 �  11  �
麺様様瞥様様様様様様様様様様擁様様様様様瞥様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様瞥様様溶様様様瞥様様溶様様様様溶様様様様様溶様様様詫様様様様詫様様様様様瞥様様詫様様溶様様溶様様様�
��.begin
  FirstLine := true;
  LineCount := 3; // �� ����腦� 皰 礒� �� �遏��� ���ョ�����
end.
.}
.{?internal; not FirstLine;
��麺様様瞥様様様様様様様様様様擁様様様様様瞥様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様瞥様様溶様様様瞥様様溶様様様様溶様様様様様溶様様様詫様様様様詫様様様様様瞥様様詫様様溶様様溶様様様�
��.}
��� �����皋��: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@����@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ���
��麺様様僕様様様様様様様様様様曜様様様様様僕様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様僕様様用様様様僕様様用様様様様用様様様様様用様様様冤様様様様冤様様様様様僕様様冤様様用様様用様様様���
.begin
  AnFirstLine := True;
  LineCount += if (FirstLine, 2, 3);
end.
.}��  //?internal lShow_Analitik
.{ // �°膈覃 轤�� ���覃, � �.�. ．� �����皋��
.begin
  // ����讓� ＜ぅ� 痰牀�, ����� ���ョ���ガ ≡� �� ������� 腑��▲��.
  FutureLineCount := LineCount + if (LayerCount = 2, 15, 7)
                     + if ((not FirstLine) and (not AnFirstLine), 1, 0);
end.
.{?internal;(FutureLineCount > LinesPerPage - 1);
藩様様瞥様様様様様様様様様様擁様様様様様瞥様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様瞥様様溶様様様瞥様様溶様様様様溶様様様様様溶様様様詫様様様様詫様様様様様瞥様様詫様様溶様様溶様様様�
.begin
  LineCount++; // +1 �� 瘍驍 皰�讓� 艪� ���ョ�������.
end.
.{ while (LineCount < LinesPerPage)
!��；��ガ �竅硅�� 痰牀���� ぎ ����� 痰����肓

.begin
  LineCount++;
end.
.}
浜様様僕様様様様様様様様様様曜様様様様様僕様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様僕様様用様様様僕様様用様様様様用様様様様様用様様様冤様様様様冤様様様様様僕様様冤様様用様様用様様様�
�  1  �             2        �     3    �                                            4                                                  �   5  �   6  �  7   �     8   �     9     �  7   �    8    �    9      �  10 �   11 �  10 �  11  �
麺様様陵様様様様様様様様様様洋様様様様様陵様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様冤様様陵様様謡様様様陵様様謡様様様様謡様様様様様謡様様様慷様様様様慷様様様様様陵様様慷様様謡様様謡様様様�
.begin
  FirstLine := true;
  LineCount := 3;
end.
.}
.{?internal;(not FirstLine) ��and (not AnFirstLine)��; // 艪� Гメ� "�" ぅ��モ?!
麺様様陵様様様様様様様様様様洋様様様様様陵様様慷様様慷様様慷様様慷様様慷様様慷様様慷様様慷様様慷様様慷様様慷様様慷様様慷様様慷様様慷様様陵様様謡様様様陵様様謡様様様様謡様様様様様謡様様様慷様様様様慷様様様様様陵様様慷様様謡様様謡様様様�
.begin
  LineCount++; // 瘍驍腮�, �腮※き�, 鉥�┃ ����薑��モ
end.
.}
.{?internal; (LayerCount <> 2);
�     �                      �          �@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�  �  �&&&&&&�      �@@@@@@�@@@@@@@@@�&&& &&&&&&&�@@@@@@�@@@@@@@@@�&&& &&&&&&&�@~@@@� &&&& �@~@@@� &&&& �
�&&&&&�@@@@@@@@@@@@@@@@@@@@@@�&&&&&&&&&&把陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳彡陳陳調&&&&&&把陳陳津陳陳陳陳調           団陳陳津陳陳陳陳調           債陳陳田陳陳津陳陳津陳陳陳�
�     �                      �          �&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�  �  �&&&&&&�      �@@@@@@�@@@@@@@@@�&&& &&&&&&&�@@@@@@�@@@@@@@@@�&&& &&&&&&&�@~@@@� &&&& �@~@@@� &&&& �
�     �@@@@@@@@@@@@@@@@@@@@@@�          把陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳彡陳陳津陳陳陳把陳陳津陳陳陳陳津陳陳陳陳陳津陳陳陳田陳陳陳陳田陳陳陳陳陳仰陳陳田陳陳津陳陳津陳陳陳�
�     �@@@@@@@@@@@@@@@@@@@@@@�          �@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�&&&&&&�      �@@@@@@�@@@@@@@@@�&&& &&&&&&&�@@@@@@�@@@@@@@@@�&&& &&&&&&&�@~@@@� &&&& �@~@@@� &&&& �
�     �@@@@@@@@@@@@@@@@@@@@@@�          把陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳彡陳陳調&&&&&&把陳陳津陳陳陳陳調           団陳陳津陳陳陳陳調           債陳陳田陳陳津陳陳津陳陳陳�
�     �                      �          �&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&&�      �@@@@@@�@@@@@@@@@�&&& &&&&&&&�@@@@@@�@@@@@@@@@�&&& &&&&&&&�@~@@@� &&&& �@~@@@� &&&& �
.begin
  LineCount += 7; // �皰 - �諱���. �� �ア�А����� �瓷�碎 �� �痳�き┴�.
end.
.}
.{?internal; (LayerCount = 2);
�     �                      �          �@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�  �  �&&&&&&�      �@@@@@@�@@@@@@@@@�&&& &&&&&&&�@@@@@@�@@@@@@@@@�&&& &&&&&&&�@~@@@� &&&& �@~@@@� &&&& �
�&&&&&�@@@@@@@@@@@@@@@@@@@@@@�&&&&&&&&&&把陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳彡陳陳調      把陳陳津陳陳陳陳調           団陳陳津陳陳陳陳調           債陳陳田陳陳津陳陳津陳陳陳�
�     �                      �          �&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�  �  �&&&&&&�      �@@@@@@�@@@@@@@@@�&&& &&&&&&&�@@@@@@�@@@@@@@@@�&&& &&&&&&&�@~@@@� &&&& �@~@@@� &&&& �
�     �@@@@@@@@@@@@@@@@@@@@@@�          把陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳彡陳陳津陳陳陳把陳陳津陳陳陳陳津陳陳陳陳陳津陳陳陳田陳陳陳陳田陳陳陳陳陳仰陳陳田陳陳津陳陳津陳陳陳�
�     �@@@@@@@@@@@@@@@@@@@@@@�          �@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�&&&&&&�      �@@@@@@�@@@@@@@@@�&&& &&&&&&&�@@@@@@�@@@@@@@@@�&&& &&&&&&&�@~@@@� &&&& �@~@@@� &&&& �
�     �@@@@@@@@@@@@@@@@@@@@@@�          把陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳彡陳陳調&&&&&&把陳陳津陳陳陳陳調           団陳陳津陳陳陳陳調           債陳陳田陳陳津陳陳津陳陳陳�
�     �                      �          �&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&&�      �@@@@@@�@@@@@@@@@�&&& &&&&&&&�@@@@@@�@@@@@@@@@�&&& &&&&&&&�@~@@@� &&&& �@~@@@� &&&& �
�     �                      �          把陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳彡陳陳津陳陳陳把陳陳津陳陳陳陳津陳陳陳陳陳津陳陳陳田陳陳陳陳田陳陳陳陳陳仰陳陳田陳陳津陳陳津陳陳陳�
�     �                      �          �@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�  �  �&&&&&&�      �      �         �           �      �         �           �     �      �     �      �
�     �                      �          把陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳彡陳陳調&&&&&&把陳陳津陳陳陳陳調           団陳陳津陳陳陳陳調           債陳陳田陳陳津陳陳津陳陳陳�
�     �                      �          �&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�  �  �&&&&&&�      �      �         �           �      �         �           �     �      �     �      �
�     �                      �          把陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳彡陳陳津陳陳陳把陳陳津陳陳陳陳津陳陳陳陳陳津陳陳陳田陳陳陳陳田陳陳陳陳陳仰陳陳田陳陳津陳陳津陳陳陳�
�     �                      �          �@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�@~@@@�&&&&&&�      �      �         �           �      �         �           �     �      �     �      �
�     �                      �          把陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳田陳陳彡陳陳調      把陳陳津陳陳陳陳調           団陳陳津陳陳陳陳調           債陳陳田陳陳津陳陳津陳陳陳�
�     �                      �          �&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&�&&&&&&�      �      �         �           �      �         �           �     �      �     �      �
.begin
  LineCount += 15; // �皰 - �諱���. �� �ア�А����� �瓷�碎 �� �痳�き┴�.
end.
.}
.begin
  FirstLine := false;
  ��AnFirstLine := false;�� // 艪� Гメ� "�" ぅ��モ?!
end.
.}
.}
藩様様瞥様様様様様様様様様様擁様様様様様瞥様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様詫様様瞥様様溶様様様瞥様様溶様様様様溶様様様様様溶様様様詫様様様様詫様様様様様瞥様様詫様様溶様様溶様様様�

�癶モ痰▲����                                         �礫�〓え皀��
��罧 ___________ _________ _____________________      痰珮�矣爿��� ��む�Гカキ�� ___________ _________ _____________________  "__" __________ 20__ ����
      ぎ�Ν�痰�   ��く�瘡   ��瘉�籥�→� ��く�瓱                                   ぎ�Ν�痰�   ��く�瘡   ��瘉�籥�→� ��く�瓱
                                                      ��｀皚┴
                                                      ��む�〓� 甄礒°            ___________ _________ _____________________  "__" __________ 20__ ����
                                                                                  ぎ�Ν�痰�   ��く�瘡   ��瘉�籥�→� ��く�瓱��
.begin
  LineCount := if((LineCount + 8) > LinesPerPage, LineCount + 8 - LinesPerPage, LineCount + 8);
  // �≒�� 絎皀� 瓷���碎, 艪� � 甄竍�� ��о襤� 痰����肓 〓 ∇ガ� �ョ������ 轤�� 縲キ�
  // LineCount 痰��モ 甌ぅ爨�碎 ↑キ錺��� ���-〓 痰牀�, �覊ェ荐� �� 甄イ竡蜒� 痰����聶.
  // (��┃, か� ���� �爬ゃ���� ��ム�罔� �痰�皖� �� ぅ�キ��? 7/| �� ���牀���痰� ┼� �皰?)
end.
.{ while (LineCount < LinesPerPage)
!��；��ガ �竅硅�� 痰牀���� ぎ ����� 痰����肓

.begin
  LineCount++;
end.
.}
.{ checkenter FirstPage
.}
.}
��
.endform
