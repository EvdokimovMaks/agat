/*
  ���������������������������������������������������������������������ͻ
  �      � � �  "T O P   S O F T",  � �   "� � � � �   � � � � � �"     �
  �      �஥��    : ���������  (�) 2000                                �
  �      ���⥬�   : ��ࠢ����� ���ᮭ����                              �
  �      �����    : 5.8, 7.1                                           �
  �      ���ࠡ�⠫: ��⮭���� �.�.     11/03/2004                      �
  �      �����祭��: �஢������ �����樨 � ᮧ����� �����ᨨ �� 43    �
  �      ��������� :                                                    �
  ���������������������������������������������������������������������ͼ
*/

#doc
�஢������ �����樨 � ᮧ����� �����ᨨ �� 43
#end
.form NformRD43
.Hide
.Fields
�࣠������
����
�����_���㬥��
���_��⠢�����

TitleDocNrec : comp
sBarCode

Title1
Dummy
Title2

!.{RD43_Cycle1  CheckEnter
PersNrec : comp
AppointNrec : comp

Role
FIO
���������
!.}

Body

�������
�����

.EndFields
�࣠������                   ^
����                          ^
�����_���㬥��               ^
���_��⠢�����              ^
TitleDocNrec : comp           ^
sBarCode		      ^

.{RD43_CycleT1  CheckEnter
Title1                        ^
.}
                              ^
.{RD43_CycleT2  CheckEnter
Title2                        ^
.}

.{RD43_Cycle1  CheckEnter
PersNrec : comp               ^
AppointNrec : comp            ^
Role                          ^
FIO                           ^
���������                     ^
.}
.{RD43_CycleT3  CheckEnter
Body                          ^
.}
�������                      ^
�����                        ^
.endform
