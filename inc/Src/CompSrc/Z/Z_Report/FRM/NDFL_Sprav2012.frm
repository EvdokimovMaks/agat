//-----------------------------------------------------------------------------
//                                                     (c) ��௮��� ���������
// �����⨪� 8.10 - ��ࠡ�⭠� ����
// ��ଠ ���⨯ ��� �ନ஢���� �ࠢ�� 2-����
//-----------------------------------------------------------------------------
#doc
2-����
#end
.set name = 'NDFL2_prototype'
.hide
.fields 
 ���
 ���
 ����
 ���
 ���
 �ਧ���
 ��℠��믫���
 �����_���४�
 �࣠������
 �����������������
 �����
 ����䮭
 ��������
 ��������
 ��������
 �����
 �����
 ����
 ����
 GUID
 ���_䠩��
 ������⢮_���㬥�⮢
 ���⠢�⥫�
 �������
 ����
 ��瑮��
 ���������
 ����䮭���⠢�⥫�
 ����७����쑮�⠢�⥫�
 ��������: word
 �࣓��।��
 �����
 ��������४� 
 ���_���������⥫�騪�
 ���2_���������⥫�騪�
 nrec_lschet
 �������
 ���
 ����⢮
 �����
 ���_஦�����
 �ࠦ����⢮
 ���_���㬥��
 ����_�����_���㬥��
 �����ᐔ
 ������������
 �������
 ��த��
 ���㭪␔
 ���栐�
 �����
 ����ᐔ
 �����ࠐ�
 �����࠭�஦������
 ����멀���
 �⠢��_������: word
 �ਧ������
 �����_��1
 ���_��室�_��1
 �㬬�_��室�_��1
 ���_����_��1
 �㬬�_����_��1
 �����_��2
 ���_��室�_��2
 �㬬�_��室�_��2
 ���_����_��2
 �㬬�_����_��2
 ���_����_1
 �㬬�_����_1
 ���_����_2
 �㬬�_����_2
 ���_����_3
 �㬬�_����_3
 ���_����_4
 �㬬�_����_4
 ��������������   
 ��⠂뤠稑�擢��
 ����뤠����擢��
 ��������������   
 ��⠂뤠稓���   
 ����뤠������    
 �㬬���室�     : double
 �������         : double
 �㬬����������  : longInt  
 �㬬���������   : longInt  
 �㬬����������믫 : longInt  
 �㬬�����������: longInt
 �㬬�������     : longInt
 �����������������   
 ��⠂뤠稓���������   
 ����뤠������������     
.endfields
.{ Main_Cycle_2NDFL CheckEnter
  ���  ^  ��� ^
  ���� ^  
  ���  ^  ��� ^
  �ਧ���     ^  
  �������஢��� ���� �믫���  ^
  ����� ���४�஢��      ^
  ������������ �࣠����樨 ^
  �����������������        ^
  ��� �����   ^ 
  ����䮭     ^
  ��������    ^
  ��������    ^
  ��������    ^
  ��� �࣠����樨 ^
  ��� �㪮����⥫� �� ^ ^ ^
  GUID        ^
  ���_䠩��   ^
  ������⢮_���㬥�⮢ ^
  ���⠢�⥫�               ^
  �������                   ^
  ����                   ^
  ��瑮��                   ^
  ���������                 ^
  ����䮭����.              ^
  ����७����쑮��.         ^
  �������� �����           ^
  �࣠������ ���।��      ^
.{ Person_Cycle_2NDFL CheckEnter 
 ............................................................................
 �����   ^
 ����� ���४�஢��       ^
 ����� � 䨧��᪮� ��� - �����⥫� ��室�
 ��� ���������⥫�騪�     ^
 ���2 ���������⥫�騪�    ^
 nRec ��                   ^
 �������                   ^
 ���                       ^
 ����⢮                  ^
 ����� ���������⥫�騪�  ^
 ��� ஦�����             ^
 �ࠦ����⢮               ^
 ��� ���㬥��             ^
 ���� � ����� ���㬥��   ^
 �����ᐔ                  ^
 ������������              ^
 �������                   ^
 ��த��                   ^
 ���㭪␔                ^
 ���栐�                   ^
 �����                     ^
 ����ᐔ                  ^
 �����ࠐ�                ^
 �����࠭�஦������       ^
 ����멀���               ^
 ............................................................................
.{ Percent_Cycle_2NDFL CheckEnter
 ��室�, ��������� ������� �� �⠢�� ^ ^
 ............................................................................
.{ Incom_Cycle_2NDFL CheckEnter
 ����� ^  ��� ��室� ^  �㬬� ��室� ^  ��� ���� ^  �㬬� ���� ^
 ����� ^  ��� ��室� ^  �㬬� ��室� ^  ��� ���� ^  �㬬� ���� ^
.}
.{ Discount_Cycle_2NDFL CheckEnter
 ���_� ^ �㬬�_� ^ ���_� ^ �㬬�_� ^ ���_� ^ �㬬�_� ^ ���_� ^ �㬬�_� ^
.}
.{ Info_DiscountSoc_Cycle_2NDFL CheckEnter
 �������������� ^  
 ��⠂뤠稑�擢�� ^  
 ����뤠����擢��  ^  
.}
.{ Info_Discount_Cycle_2NDFL CheckEnter
 �������������� ^  
 ��⠂뤠稓��� ^  
 ����뤠������  ^  
.}
 ��騥 �㬬� ��室� � ������ �� �⮣�� ���������� ��ਮ�� �� �⠢��
 �㬬���室�      ^ 
 �������          ^
 �㬬����������   ^
 �㬬���������    ^
 �㬬����������믫^ 
 �㬬����������� ^
 �㬬�������      ^
 ............................................................................
.{ Info_DiscountAvPlat_Cycle_2NDFL CheckEnter
 �����������, ���⢥ত��饥 �ࠢ� 
 �� 㬥��襭�� ������ �� 䨪�஢���� ����ᮢ� ���⥦�:   � ^   ���  ^  ��� ���� ^
.}
 ............................................................................
.}
.}
.}
.endform
