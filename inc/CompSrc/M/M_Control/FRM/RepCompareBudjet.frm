/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 2001 ��牆���罔� ���������                         �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ���矗���┃�                                               �
 � �ム瓱�        : 7.1                                                       �
 � ��Л�腑�┘    : �砒モ �� ��甎爛ぅ�キ�� ��矗�� �� 痰�碎�                   �
 � �癶モ痰▲��覃 : ����┃��.� (UkrV)                                         �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
.set name = 'RComPareBudjet'
.nameinlist '��М��� 筮爼�'
.hide
.fields
Str_DataTimeUser
Period_Baz
Period_Sr
VidZatr_Baz
VidZatr_Sr
VarCalc_Baz
VarCalc_St
Budjet_Baz
Budjet_St
Podr
NameZatr

nppZatr_1Or2LevelIer
Zatr_1Or2LevelIer
SumPlan_1Or2LevelIer
SumFact_1Or2LevelIer
Otkl_1Or2LevelIer
Proc_1Or2LevelIer

nppZatr_3LevelIer
Zatr_3LevelIer
SumPlan_3LevelIer
SumFact_3LevelIer
Otkl_3LevelIer
Proc_3LevelIer

nppZatr_4LevelIer
Zatr_4LevelIer
SumPlan_4LevelIer
SumFact_4LevelIer
Otkl_4LevelIer
Proc_4LevelIer

nppZatr
Zatr
SumPlan
SumFact
Otkl
Proc

S_SumPlan
S_SumFact
S_Otkl
S_Proc

.endfields

^
^^^^^^
.{
^^^^
.{
.case
.when Is1Or2LevelIer
^^^^^^
.when Is3LevelIer
^^^^^^
.when Is4LevelIer
^^^^^^
.else
^^^^^^
.end
.}
^^^^
.}
.endform


.linkform 'RComPareBudjet_02' prototype is 'RComPareBudjet'
.GROUP '���↓キ┘ 甃モ.'
.nameinlist '���↓キ┘ 甃モ.'
.slknumber
.fields
Str_DataTimeUser
 Period_Baz
 Period_Sr
 VidZatr_Baz
 VidZatr_Sr
 VarCalc_Baz
 VarCalc_St

Budjet_Baz
Budjet_St
Podr
NameZatr

nppZatr_1Or2LevelIer
Zatr_1Or2LevelIer
SumPlan_1Or2LevelIer
SumFact_1Or2LevelIer
Otkl_1Or2LevelIer
Proc_1Or2LevelIer

nppZatr_3LevelIer
Zatr_3LevelIer
SumPlan_3LevelIer
SumFact_3LevelIer
Otkl_3LevelIer
Proc_3LevelIer

nppZatr_4LevelIer
Zatr_4LevelIer
SumPlan_4LevelIer
SumFact_4LevelIer
Otkl_4LevelIer
Proc_4LevelIer

nppZatr
Zatr
SumPlan
SumFact
Otkl
Proc

S_SumPlan
S_SumFact
S_Otkl
S_Proc

.endfields
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

           ���↓キ┘ 甃モ
                                ��М���                                  ���↓│�ガ��
�ム┏�:                         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
�┐ ��矗��:                     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
��爬��� ���讓祀�牀�����\������: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{

��━キ����┘ 甃モ�:             @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳
���       ���━キ����┘                     �         ��М���        �      ���↓│�ガ��      �       �皖���キ┘       �  % �皖���キ��
          �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�                        �                        �                        �
陳陳陳陳陳田陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳田陳陳陳陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳陳陳陳陳田陳陳陳陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳陳陳陳陳
.{
.case
.when Is1Or2LevelIer
@@@@@@@@@@� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ �&'&&&&&&&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&&&&&&.&&
.when Is3LevelIer
@@@@@@@@@@� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ �&'&&&&&&&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&&&&&&.&&
.when Is4LevelIer
@@@@@@@@@@� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ �&'&&&&&&&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&&&&&&.&&
.else
@@@@@@@@@@� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ �&'&&&&&&&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&&&&&&.&&
.end
.}
陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳
�����                                        &'&&&&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&&&&.&&

.}
.endform
