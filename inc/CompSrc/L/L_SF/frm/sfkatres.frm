/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 2000,   ��牆���罔� ���������                      �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ｯム�皋↓覃 ���矣�                                        �
 � �ム瓱�        : 5.8                                                       �
 � ��Л�腑�┘    : �ョ�碎 ��������� �� 爛Д燿�牀����� ��                     �
 � �癶モ痰▲��覃 : ���ウ�� ��オ瓮� �キ��れア��                               �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/

#doc
�ョ�碎 �������� �メ� 筮爼�牀����� ��
#end
.autoform 'SFFrmPlace'
#ifdef __NUM_SF_RESERVE__
.NameInList '������� �メ� 筮爼�牀����� ��'
.list '������� �メ� 筮爼�牀����� ��'
.create view vFormPlace
from
  FormPlace (ReadOnly)
order by FormPlace.Name
;
.fields
  CommonFormHeader
  FormPlace.Name
.endfields
^
陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳
              ������� �メ� 筮爼�牀����� ��
陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳
.{table 'vFormPlace.FormPlace' by FormPlace.Name
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.} //table
#end
.endform


#doc
�ョ�碎 �������� 皋��� 爛Д燿�牀����� ��
#end
.autoform 'SFResRange'
#ifdef __NUM_SF_RESERVE__
.NameInList '������� 皋��� 爛Д燿�牀�����'
.list '������� 皋��� 爛Д燿�牀�����'
.create view vResRange
from
  ResRange  (ReadOnly),
  FormPlace (ReadOnly)
where
((
  ResRange.cFormPlace == FormPlace.nRec
))
order by ResRange.wYear, ResRange.Number1
;
.fields
  CommonFormHeader
  ResRange.wYear
  ResRange.Number1
  ResRange.Number2
  FormPlace.Name
.endfields
^
         ������� 皋��� 爛Д燿�牀����� ���ム�� ��

陳陳陳賃陳陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳
 ���   � � ���ム�   �  �� ���ム  �    �メ皰 筮爼�牀�����
陳陳陳珍陳陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳陳陳
.{table 'vResRange.ResRange'
@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@
.} //table
#end
.endform
