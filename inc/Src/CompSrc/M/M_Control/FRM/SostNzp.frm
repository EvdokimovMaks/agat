/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 2001 ��௮��� ���������                         �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ����஫����                                               �
 � �����        : 7.1                                                       �
 � �����祭��    : ���� � ���ﭨ� �������襭���� �ந�����⢠ �� ��ਮ�   �
 � �⢥��⢥��� : ��窮�᪨� �. �.(OlegB)                                   �
 ���������������������������������������������������������������������������ͼ
*/
.set name = 'OSostNzp'
.nameinlist '������� �ଠ'
.hide
.fields
NameTitle
Predpr
Period
Potrebit
Cherteg
EdIzm
BegNzp
IntoNzp
ProdNzp
EndNzp
Potrebit1
Produkt1
Cherteg1
EdIzm1
BegNzp1
IntoNzp1
ProdNzp1
EndNzp1
.endfields
^^^
.{
.if TitleProd
^^^^^^^
.else
^^^^^^^^
.end
.}
.endform

.linkform 'OSostNzp_01' prototype is 'OSostNzp'
.nameinlist '����ﭨ� �������襭���� �ந�����⢠ �� ��ਮ�.'
.fields
NameTitle
Predpr
Period
Potrebit
Cherteg
EdIzm
BegNzp
IntoNzp
ProdNzp
EndNzp
Potrebit1
Produkt1
Cherteg1
EdIzm1
BegNzp1
IntoNzp1
ProdNzp1
EndNzp1
.endfields
                   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

�।���⨥:@@@@@@@@@@@@@@@@@@@@@@@@@
��ਮ�:     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
������������������������������������������������������������������������������������������������������������Ŀ
�      ���ॡ�⥫�      �    ������������    � �       � ��. �             �������� ��� �� ��ਮ�            �
�                       �    �த��        � ��⥦� � ���.�����������������������������������������������Ĵ
�                       �                    �         �     � ����� ��� �  �����   ��ந�������� ����� ��� �
�                       �                    �         �     � � ��砫�  �    ��     � �� ��ਮ� ���� � �����
�                       �                    �         �     �  ��ਮ��  �  ��ਮ�   �           �  ��ਮ��  �
������������������������������������������������������������������������������������������������������������Ĵ
.{
.if TitleProd
�   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@�@@@@@�&'&&&&&.&&&�&'&&&&&.&&&�&'&&&&&.&&&�&'&&&&&.&&&�
.else
�@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@�@@@@@�&'&&&&&.&&&�&'&&&&&.&&&�&'&&&&&.&&&�&'&&&&&.&&&�
.end
.}
��������������������������������������������������������������������������������������������������������������
.endform