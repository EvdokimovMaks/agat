/*
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
  �      � � �  "T O P   S O F T",  � �   "� � � � �   � � � � � �"     �
  �           蹍オ� "�����" (�) 2000                                   �
  �      �ム瓱�    : 5.72                                               �
  �      ��о�｀���:  ��皰��※� �.�.     30/11/2000                     �
  �      ��Л�腑�┘:  �ム※甅�� 粃��罔�: 蹍▲爲� ��爬筬諷 痰�〓�       �
  �      �Кキキ�� :                                                    �
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/

#doc
�ム※甅�� 粃��罔�: 蹍▲爲� ��爬筬諷 痰�〓�
#end
.form StaffTestTarStavForm
.hide
.fields
 ���瓷_��_��矣
.endfields

 ���瓷 �� ��矣: @@@@@@@@@@

.{ SFA_PersonsCycleTestTarStavForm CheckEnter
.fields
 ��� ��む�Гカキ┘ ぎ�Ν�痰� 瘁覊��_��_��矣 痺����� �祠����� �� �祠������� 踸�
.endfields

��� 甌矗磴�┴�: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
��む�Гカキ┘: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@
���Ν�痰�: @@@@@@@@@@@@@@@@@@@@@@@@@
�瘠��� �� ��矣: @@@@@@@@@@@
�祠�� � ��: @@@@
��玻オ皋珮鉗� ��辟筥罔キ�: @@@@
�祠�� �� ��爬粃 * ��: @@@@
�祠�� �� ��爬粃: @@@@
踸�ョ��┘: @@@@
.}
.endform

.linkform "�瘠��� �� ��爬筬竡 瓮皖� � ��珥�皀��" prototype is StaffTestTarStavForm
.group "�砒モ_2"
.var
 CurRec : Word ;
.endvar
.fields
 ���瓷_��_��矣
.endfields
.[H skip
��                                                                                             �矗����� @NP@��
��陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳堕陳陳陳陳陳堕陳陳陳陳陳陳賃陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳��
�� � �/��              ��矗磴�┴             �     ��む�Гカキ┘     �   ���Ν�痰�    �    ����   �  �祠�� � ��  ��祠�� �� ��爬粃�     踸�ョ������
��陳陳陳祖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳祖陳陳陳陳陳祖陳陳陳陳陳陳珍陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳��

.]H

��                                                         �砒モ��
��                                         瘁覊�� �� ��爬筬竡 瓮皖� �� 甌�����鈞 � 甌矗磴�┴����
��                                                       �� @@@@@@@@@@��

��陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳堕陳陳陳陳陳堕陳陳陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳���
�� � �/��              ��矗磴�┴             �     ��む�Гカキ┘     �   ���Ν�痰�    �    ����   ��祠�� � ��む�絣��玻.��辟.��祠�� �� ��爬粃�   ��爬� * ��  �     踸�ョ����   ��
��陳陳陳祖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳祖陳陳陳陳陳祖陳陳陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳���
��
.begin CurRec := 0 ; end.
.{ SFA_PersonsCycleTestTarStavForm CheckEnter
.fields
 CurRec ��� ��む�Гカキ┘ ぎ�Ν�痰� 瘁覊��_��_��矣 痺����� �� �祠����� �祠������� 踸�
.endfields
.begin CurRec := CurRec + 1 ; end.
&&&&.  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@  @@@@@@@@@@@ &'&&&&&&&&.&&& &'&&&&.&&& &'&&&&&&&&&.&&& &'&&&&&&&&&.&&& @@@@@@@@@@@@@@@@@@@��
.}
.endform

.linkform "�瘠��� �� ��爬筬竡 瓮皖� � ��" prototype is StaffTestTarStavForm
.group "�砒モ_1"
.var
 CurRec : Word ;
.endvar
.fields
 ���瓷_��_��矣
.endfields
.[H skip
��                                                                                             �矗����� @NP@
陳陳賃陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳堕陳陳陳陳陳陳賃陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳
� �/��   ��む�Гカキ┘  �     ���Ν�痰�     �    ����   �  �祠�� � ��  ��祠�� �� ��爬粃�     踸�ョ����
陳陳珍陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳祖陳陳陳陳陳陳珍陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳��
��
.]H

��                                    �砒モ
             瘁覊�� �� ��爬筬竡 瓮皖� �� 甌�����鈞 �� ぎ�Ν�痰鍖
                             �� @@@@@@@@@@

陳陳賃陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳堕陳陳陳陳陳陳賃陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳
� �/��   ��む�Гカキ┘  �     ���Ν�痰�     �    ����   �  �祠�� � ��  ��祠�� �� ��爬粃�     踸�ョ����
陳陳珍陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳祖陳陳陳陳陳陳珍陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳��

.begin CurRec := 0 ; end.
.{ SFA_PersonsCycleTestTarStavForm CheckEnter
.fields
 CurRec ��む�Гカキ┘ ぎ�Ν�痰� 瘁覊��_��_��矣 痺����� �祠����� 踸�
.endfields
.begin CurRec := CurRec + 1 ; end.
&&.   @@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@  @@@@@@@@@@@ &'&&&&&&&&.&&& &'&&&&&&&&&.&&& @@@@@@@@@@@@@@@@@@@��
.}
.endform
