/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 2001 ��牆���罔� ���������                         �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ���矗���┃�                                               �
 � �ム瓱�        : 7.1                                                       �
 � ��Л�腑�┘    : ��モ� ��痳�ぎ� �� ��む�Гカキ��                           �
 � �癶モ痰▲��覃 : ����┃�� �. (UkrV)                                        �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
.set name = 'ContrZatrSmets_Stlb'
.nameinlist '��М��� 筮爼�'
.hide
.fields
DataTimeUserStr

  NamePodr1
  Period
  Variant

  TitleStr
  NameStr

  ListPodr               // ��ょ┃キ�襯 ��む�Гカキ��, メ�� メ碎
  Str_Dop_St
  Formula
  NameZatr
  NameAnal
  Kod_Nom
  NameStZatr
  Sum_It_Str
  Sum_Out
  Sum_It_All
  Sum_It_Stolb
.endfields

^
  ^
.{
  ^^
.{
  ^^
 .{.?ZatrSmets_st_Podr_List; ^.}
.}
  ^^^                   
  .{.?ZatrSmets_St_LR1; .}
  .{.?ZatrSmets_St_LA1; ^.}
  .{.?ZatrSmets_St_LR2; .}
.{
  ^^
  ^ .{.?ZatrSmets_St_LS1; ^.}
.}
 .{.?ZatrSmets_St_LEN; .}
  ^
 .{.?ZatrSmets_St_LI1; ^.}
.}
.endform

.linkform 'ContrZatrSmets_Stolb_01' prototype is 'ContrZatrSmets_Stlb'
.GROUP '��モ� ��痳�ぎ� �� ��む�Гカキ��.'
.nameinlist '��モ� ��痳�ぎ� �� ��む�Гカキ��.'
.fields
  DataTimeUserStr
  NamePodr1
  Period
  Variant

  TitleStr
  NameStr

  ListPodr               // ��ょ┃キ�襯 ��む�Гカキ��, メ�� メ碎
  Str_Dop_St
  Formula
  NameZatr
  NameAnal
  Kod_Nom
  NameStZatr
  Sum_It_Str
  Sum_Out
  Sum_It_All
  Sum_It_Stolb
.endfields
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

             �〓き�� 甃モ� ��矗�� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.{
�ム┏�:                                                          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
��矗�硅:                                                         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                                .{.?ZatrSmets_St_Podr_List; @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.}

.}
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
�祠�� (���；��罔� 痺��): @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳�.{.?ZatrSmets_St_LR1;堕陳陳陳陳陳陳陳陳陳陳陳陳陳�.}
 ���      � ��━キ����┘ 痰�皀� @@@@@@@@@@@@� �����                .{.?ZatrSmets_St_LA1;�@@@@@@@@@@@@@@@@@@@@@@@@@@@@.}
陳陳陳陳陳田陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳田陳陳陳陳陳陳陳陳陳陳�.{.?ZatrSmets_St_LR2;田陳陳陳陳陳陳陳陳陳陳陳陳陳�.}
.{
 @@@@@@@@ � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ �&'&&&&&&&&&&&&&&&&&.&&.{.?ZatrSmets_St_LS1;� &'&&&&&&&&&&&&&&&&&.&&     .}
.}
陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳陳�.{.?ZatrSmets_St_LEN;祖陳陳陳陳陳陳陳陳陳陳陳陳陳�.}
                                     �����   &'&&&&&&&&&&&&&&&&&.&&.{.?ZatrSmets_St_LI1;  &'&&&&&&&&&&&&&&&&&.&&     .}


.}
.endform