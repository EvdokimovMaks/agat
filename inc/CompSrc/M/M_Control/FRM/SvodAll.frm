/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 2001 ��牆���罔� ���������                         �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ���矗���┃�                                               �
 � �ム瓱�        : 7.1                                                       �
 � ��Л�腑�┘    : �〓� �� 痰�碎鍖 蹕ガキ��� ��矗��                                  �
 � �癶モ痰▲��覃 : �イ▲れ �.�. (MEDVED)                                     �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
.set name = 'SvodAll'
.nameinlist '��М��� 筮爼�'
.hide
.fields
ParamUser
PlanOrFact
DateBeg
DateEnd
RepName
NameBal
Valut
NameElem
NameZatr
Summa
SummaItogo
.endfields
^
^ ^ ^ ^ ^ ^ 
  .{.?stSvAll_Elem;  ^.}
.{
 ^  .{.?stSvAll_Sum; ^.}
.}
    .{.?stItogoSvAll_Sum; ^.}
.endform