/*
  ���������������������������������������������������������������������ͻ
  �      � � �  "T O P   S O F T",  � �   "� � � � �   � � � � � �"     �
  �           �஥�� "�����" (�) 2000                                   �
  �      ����� : 5.72                                                  �
  �      ���ࠡ�⠫:  �����祭�� �.�.                                   �
  �      �����祭��:  ��ୠ� ॣ����樨 ��ॢ���� ࠡ�����           �
  ���������������������������������������������������������������������ͼ
*/

!-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-!
! StaffReportChange
!-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-!
#doc
  ��ୠ� ॣ����樨 ��ॢ���� ࠡ�����
#end

.form StaffReportChange
.hide
.fields
 ��������
 ���_��砫�
 ���_����砭��
.endfields

 ������������ ���⭮� ���: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ���_��砫�                : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ���_����砭��             : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.fields
 PersNrec: comp
 ���
 ⠡����1
 ���������1
 ���ࠧ�������1
 �����1
 ��ॢ��
 ⠡����2
 ���������2
 ���ࠧ�������2
 �����2
 �ਪ_���
 �ਪ_�����
.endfields

.{ ReportChangeCycle CheckEnter
PersNrec: ^
��� ���㤭���: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
⠡����1: @@@@@@@@
���������1: @@@@@@@@@@@@@@@@@@@@@@@@@
���ࠧ�������1: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@
�����1: ^
��ॢ�� : @@@@@@@@@@@
⠡����2: @@@@@@@@
���������2: @@@@@@@@@@@@@@@@@@@@@@@@@
���ࠧ�������2: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@
�����2: ^
�ਪ_���: @@@@@@@@
�ਪ_�����: @@@@@@@@@@@@@@@@@
.}
.endform

/*.form StaffReportChange
.hide
.fields
 ��������
.endfields

 ������������ ���⭮� ���: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.{ ReportChangeCycle CheckEnter
.fields
 ��� ⠡����1 ���������1 ���ࠧ�������1 �����祭 ⠡����2 ���������2 ���ࠧ�������2
.endfields

��� ���㤭���: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
⠡����1: @@@@@@@@
���������1: @@@@@@@@@@@@@@@@@@@@@@@@@
���ࠧ�������1: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@
�����祭 : @@@@@@@@@@@
⠡����2: @@@@@@@@
���������2: @@@@@@@@@@@@@@@@@@@@@@@@@
���ࠧ�������2: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.endform

.linkform "��ୠ� ॣ����樨 ��ॢ���� ���㤭����" prototype is StaffReportChange
.group 'Journals'
.defo landscape
.p 40
.var
 CurRec : Word ;
.endvar
.fields
 ��������
.endfields
.[H skip
 �                                                                                            ��࠭�� @NP@
��������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
�     �         �������, ���,          �                     �� ��ॢ���                        �   ���    �                   ��᫥ ��ॢ���                       �
�     �           ����⢮             ��������������������������������������������������������Ĵ ��ॢ���  ��������������������������������������������������������Ĵ
�N �/��                                �������� �     ���������     �      ������୮�        �           �������� �     ���������     �      ������୮�        �
�     �                                �  �����   �    (������)    �     ���ࠧ�������       �           �  �����   �    (������)    �     ���ࠧ�������       �
�     �                                �          �                   �                         �           �          �                   �                         �
���������������������������������������������������������������������Ĵ�������������������������������������������������������������������Ĵ������������������������Ĵ
�  1  �               2                �     3    �         4         �            5            �     6     �     7    �         8         �            9            �
���������������������������������������������������������������������Ĵ�������������������������������������������������������������������Ĵ��������������������������
.]H

                                                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

��������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
�     �         �������, ���,          �                     �� ��ॢ���                        �   ���    �                   ��᫥ ��ॢ���                       �
�     �           ����⢮             ��������������������������������������������������������Ĵ ��ॢ���  ��������������������������������������������������������Ĵ
�N �/��                                �������� �     ���������     �      ������୮�        �           �������� �     ���������     �      ������୮�        �
�     �                                �  �����   �    (������)    �     ���ࠧ�������       �           �  �����   �    (������)    �     ���ࠧ�������       �
�     �                                �          �                   �                         �           �          �                   �                         �
���������������������������������������������������������������������Ĵ�������������������������������������������������������������������Ĵ������������������������Ĵ
�  1  �               2                �     3    �         6         �            5            �     4     �     3    �         6         �            5            �
���������������������������������������������������������������������Ĵ�������������������������������������������������������������������Ĵ������������������������Ĵ
.begin CurRec := 0 ; end.
.{ ReportChangeCycle CheckEnter
.fields
 CurRec ��� ⠡����1 ���������1 ���ࠧ�������1 �����祭 ⠡����2 ���������2 ���ࠧ�������2
.endfields
.begin CurRec := CurRec + 1 ; end.
�&&&&.�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@~@@@@@@@@�@~@@@@@@@@@@@@@@@@@�@~@@@@@@@@@@@@@@@@@@@@@@@�@~@@@@@@@@ �@~@@@@@@@@�@~@@@@@@@@@@@@@@@@@�@~@@@@@@@@@@@@@@@@@@@@@@@�
.}
����������������������������������������������������������������������������������������������������������������������������������������������������������������������
.endform��*/