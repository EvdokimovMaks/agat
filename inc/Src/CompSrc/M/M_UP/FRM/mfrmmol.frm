/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,97 ��௮��� ���������                      �
 � �஥��        : ���������                                                 �
 � ���⥬�       : �ந�����⢮                                              �
 � �����        : 5.50                                                      �
 � �����祭��    : �ந�����⢥��� ����                                    �
 � �⢥��⢥��� : ��ଠ�� ���३ �������஢��                               �
 ���������������������������������������������������������������������������ͼ
*/
.Set Name='mnffmol'
.NameInList '������� �ଠ'
.Group '�ந�����⢥��� ����'
.Group '�ந�����⢥��� ����(��ॣ�஢����)'
.Group '���ਠ��� ���� � ����饭�ﬨ'
.Group '���ਠ��� ���� � ����饭�ﬨ(��ॣ�஢����)'
.hide

.fields

����� �Ⅽ�
����

MnPlan_nRec
SpMnPl_nRec
KatMcIzd_nRec
KatUslIzd_nRec
��⮢��
��મ���
��⭮�
����饭��
����饭�������
�ᥣ�:Double
�������
����客�
���ࠪ�����:Double

������ ������મ� ���������
�����������ଠ:Double
�����⭮ଠ:Double
���������䠪�:Double
������䠪�:Double
���������䠪��:Double
������䠪��:Double

KatMcSyr_nRec
���� ��મ����� �����
�������ଠ:Double
�⭮ଠ:Double
�����䠪�:Double
��䠪�:Double
�����䠪��:Double
��䠪��:Double

.endfields
^ ^
.{
���ࠧ�������: ^
.{
MnPlan_nRec: ^
SpMnPl_nRec: ^
KatMcIzd_nRec: ^
KatUslIzd_nRec: ^
��⮢�� �த���: ^
��મ� ��⮢�� �த�樨: ^
���筨� ���: ^
����饭�� � �������: ^
����� ����饭��: ^
������⢮ �ᥣ�: ^
������ ����७�� ��: ^
�� ����客�: ^
���ࠪ�����: ^
.if ProductsM
.{ CHECKENTER ProductsMLoop
�த�� ��室�: ^
��મ� �த��: ^
������ ����७��: ^
���-�� �� ��ଥ: ^
�⮨����� �� ��ଥ: ^
���-�� �� 䠪��: ^
�⮨����� �� 䠪��: ^
���-�� �� ����客�: ^
�⮨����� �� ����客�: ^
.}
.end
.if RawsM
.{ CHECKENTER RawsMLoop
KatMcSyr_nRec: ^
����: ^
��મ� �����: ^
������ ����७��: ^
���-�� �� ��ଥ: ^
�⮨����� �� ��ଥ: ^
���-�� �� 䠪��: ^
�⮨����� �� 䠪��: ^
���-�� �� ����客�: ^
�⮨����� �� ����客�: ^
.}
.end
.}
.}
.endform

.linkform 'mnff2' prototype is 'mnffmol'
.Group '�ந�����⢥��� ����'
.var
 �����⪫���:Double
 �����⪫�⮨�����:Double
 ������ଠ�������:Double
 ����䠪Ⅴ�����:Double
 �⪫���:Double
 �⪫�⮨�����:Double
 ��ଠ�������:Double
 䠪Ⅴ�����:Double
.endvar
.fields
����� �Ⅽ�
����
��⮢�� ��મ��� ��⭮� �ᥣ� ������� ���ࠪ�����
������ ������મ� ��������� �����������ଠ �����⭮ଠ ������������� ������䠪� �����⪫��� �����⪫�⮨�����
���� ��મ����� ����� �������ଠ �⭮ଠ ��������� ��䠪� �⪫��� �⪫�⮨�����
.endfields
                               ��    ������������ �����
                                � ��ਮ� � ^ �� ^��
.{
����� : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
��������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
     ������������ �����          � ������  � ���-��       � �⮨�����          �  ���-��    � �⮨�����              � �⪫������    � �⪫������       �
                                 � ����७�� �� ��ଥ     �                    �  �� 䠪��  �                        � (������⢮   � (�⮨�����       �
����������������������������������������������������������������������������������������������������������������������������������������������������������
.{
�� ��⮢�� �த���: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ � ������⢥ &&&&&&&&&&.&&&& @@@@@@@@@@
   � �. �. ���ࠪ�����: &&&&&&&&&&.&&&&��
.if ProductsM

���த��� ��室� � ��室�:��
.{ CHECKENTER ProductsMLoop
.begin
 �����⪫��� := ������������� - �����������ଠ
 �����⪫�⮨����� := �����┠�� - �����⭮ଠ
 ������ଠ������� := �����������ଠ/�����������ଠ
 ����䠪Ⅴ����� := �������������/�����������ଠ
end.
@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@  @@@@@@@@@  &&&&&&&&.&&&& &&&&&&&&&&&&&&&.&&&&  &&&&&&.&&&& &&&&&&&&&&&&&&&&&.&&&&  &&&&&&&&&&&&.&& &&&&&&&&&&&&&.&&&&
.} // �த��� ��室�
.end
.if RawsM

������:��
.{ CHECKENTER RawsMLoop
.begin
 �⪫��� := ��������� - �������ଠ
 �⪫�⮨����� := �┠�� - �⭮ଠ
 ��ଠ������� := �������ଠ/�������ଠ
 䠪Ⅴ����� := ���������/�������ଠ
end.
@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@  @@@@@@@@@  &&&&&&&&.&&&& &&&&&&&&&&&&&&&.&&&&  &&&&&&.&&&& &&&&&&&&&&&&&&&&&.&&&&  &&&&&&&&&&&&.&& &&&&&&&&&&&&&.&&&&
.} // ����
.end
���������������������������������������������������������������������������������������������������������������������������������������������������������
.} // ��⮢�� �த���

.}
.endform


.linkform 'mnff2.5' prototype is 'mnffmol'
.Group '�ந�����⢥��� ����(��ॣ�஢����)'
.var
 �����⪫���:Double
 �����⪫�⮨�����:Double
 ������ଠ�������:Double
 ����䠪Ⅴ�����:Double
 �⪫���:Double
 �⪫�⮨�����:Double
 ��ଠ�������:Double
 䠪Ⅴ�����:Double
.endvar
.fields
����� �Ⅽ�
����
��⮢�� ��મ��� ��⭮� �ᥣ� ������� ���ࠪ�����
������ ������મ� ��������� �����������ଠ �����⭮ଠ ������������� ������䠪� �����⪫��� �����⪫�⮨�����
���� ��મ����� ����� �������ଠ �⭮ଠ ��������� ��䠪� �⪫��� �⪫�⮨�����
.endfields
                               ��    ������������ �����
                                � ��ਮ� � ^ �� ^��
.{
����� : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
��������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
     ������������ �����          � ������  � ���-��       � �⮨�����          �  ���-��    � �⮨�����              � �⪫������    � �⪫������       �
                                 � ����७�� �� ��ଥ     �                    �  �� 䠪��  �                        � (������⢮   � (�⮨�����       �
����������������������������������������������������������������������������������������������������������������������������������������������������������
.{
�� ��⮢�� �த���: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ � ������⢥ &&&&&&&&&&.&&&& @@@@@@@@@@
   � �. �. ���ࠪ�����: &&&&&&&&&&.&&&&��
.if ProductsM

���த��� ��室� � ��室�:��
.{ CHECKENTER ProductsMLoop
.begin
 �����⪫��� := ������������� - �����������ଠ
 �����⪫�⮨����� := �����┠�� - �����⭮ଠ
 ������ଠ������� := �����������ଠ/�����������ଠ
 ����䠪Ⅴ����� := �������������/�����������ଠ
end.
@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@  @@@@@@@@@  &&&&&&&&.&&&& &&&&&&&&&&&&&&&.&&&&  &&&&&&.&&&& &&&&&&&&&&&&&&&&&.&&&&  &&&&&&&&&&&&.&& &&&&&&&&&&&&&.&&&&
.} // �த��� ��室�
.end
.if RawsM

������:��
.{ CHECKENTER RawsMLoop
.begin
 �⪫��� := ��������� - �������ଠ
 �⪫�⮨����� := �┠�� - �⭮ଠ
 ��ଠ������� := �������ଠ/�������ଠ
 䠪Ⅴ����� := ���������/�������ଠ
end.
@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@  @@@@@@@@@  &&&&&&&&.&&&& &&&&&&&&&&&&&&&.&&&&  &&&&&&.&&&& &&&&&&&&&&&&&&&&&.&&&&  &&&&&&&&&&&&.&& &&&&&&&&&&&&&.&&&&
.} // ����
.end
���������������������������������������������������������������������������������������������������������������������������������������������������������
.} // ��⮢�� �த���

.}
.endform


.linkform 'mnff3' prototype is 'mnffmol'
.Group '���ਠ��� ���� � ����饭�ﬨ'
.var
 �����⪫���:Double
 �����⪫�⮨�����:Double
 ������ଠ�������:Double
 ����䠪Ⅴ�����:Double
 �⪫���:Double
 �⪫�⮨�����:Double
 ��ଠ�������:Double
 䠪Ⅴ�����:Double
.endvar
.fields
����� �Ⅽ�
����
��⮢�� ��મ��� �ᥣ� ������� ���ࠪ�����
��⭮� ����饭�� ����饭�������
������ ������મ� ��������� �����������ଠ �����⭮ଠ ������������� ������䠪� �����⪫��� �����⪫�⮨�����
���� ��મ����� ����� �������ଠ �⭮ଠ ��������� ��䠪� �⪫��� �⪫�⮨�����
.endfields
                               ��    ������������ �����
                                � ��ਮ� � ^ �� ^��
.{
����� : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
��������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
     ������������ �����          � ������  � ���-��       � �⮨�����          �  ���-��    � �⮨�����              � �⪫������    � �⪫������       �
                                 � ����७�� �� ��ଥ     �                    �  �� 䠪��  �                        � (������⢮   � (�⮨�����       �
����������������������������������������������������������������������������������������������������������������������������������������������������������
.{
�� ��⮢�� �த���: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ � ������⢥ &&&&&&&&&&.&&&& @@@@@@@@@@ � �. �. ���ࠪ�����: &&&&&&&&&&.&&&&
   ���筨� ���: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  ��᫥���� ��⥭��� ����饭��: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@��
.if ProductsM

���த��� ��室� � ��室�:��
.{ CHECKENTER ProductsMLoop
.begin
 �����⪫��� := ������������� - �����������ଠ
 �����⪫�⮨����� := �����┠�� - �����⭮ଠ
 ������ଠ������� := �����������ଠ/�����������ଠ
 ����䠪Ⅴ����� := �������������/�����������ଠ
end.
@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@  @@@@@@@@@  &&&&&&&&.&&&& &&&&&&&&&&&&&&&.&&&&  &&&&&&.&&&& &&&&&&&&&&&&&&&&&.&&&&  &&&&&&&&&&&&.&& &&&&&&&&&&&&&.&&&&
.} // �த��� ��室�

.end
.if RawsM

������:��
.{ CHECKENTER RawsMLoop
.begin
 �⪫��� := ��������� - �������ଠ
 �⪫�⮨����� := �┠�� - �⭮ଠ
 ��ଠ������� := �������ଠ/�������ଠ
 䠪Ⅴ����� := ���������/�������ଠ
end.
@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@  @@@@@@@@@  &&&&&&&&.&&&& &&&&&&&&&&&&&&&.&&&&  &&&&&&.&&&& &&&&&&&&&&&&&&&&&.&&&&  &&&&&&&&&&&&.&& &&&&&&&&&&&&&.&&&&
.} // ����
.end
���������������������������������������������������������������������������������������������������������������������������������������������������������
.} // ��⮢�� �த���

.}
.endform


.linkform 'mnff4' prototype is 'mnffmol'
.Group '���ਠ��� ���� � ����饭�ﬨ(��ॣ�஢����)'
.var
 �����⪫���:Double
 �����⪫�⮨�����:Double
 ������ଠ�������:Double
 ����䠪Ⅴ�����:Double
 �⪫���:Double
 �⪫�⮨�����:Double
 ��ଠ�������:Double
 䠪Ⅴ�����:Double
.endvar
.fields
����� �Ⅽ�
����
��⮢�� ��મ��� �ᥣ� ������� ���ࠪ�����
//��⭮� ����饭�� ����饭�������
������ ������મ� ��������� �����������ଠ �����⭮ଠ ������������� ������䠪� �����⪫��� �����⪫�⮨�����
���� ��મ����� ����� �������ଠ �⭮ଠ ��������� ��䠪� �⪫��� �⪫�⮨�����
.endfields
                               ��    ������������ �����
                                � ��ਮ� � ^ �� ^��
.{
����� : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
��������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
     ������������ �����          � ������  � ���-��       � �⮨�����          �  ���-��    � �⮨�����              � �⪫������    � �⪫������       �
                                 � ����७�� �� ��ଥ     �                    �  �� 䠪��  �                        � (������⢮   � (�⮨�����       �
����������������������������������������������������������������������������������������������������������������������������������������������������������
.{
�� ��⮢�� �த���: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ � ������⢥ &&&&&&&&&&.&&&& @@@@@@@@@@ � �. �. ���ࠪ�����: &&&&&&&&&&.&&&&

.if ProductsM

���த��� ��室� � ��室�:��
.{ CHECKENTER ProductsMLoop
.begin
 �����⪫��� := ������������� - �����������ଠ
 �����⪫�⮨����� := �����┠�� - �����⭮ଠ
 ������ଠ������� := �����������ଠ/�����������ଠ
 ����䠪Ⅴ����� := �������������/�����������ଠ
end.
@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@  @@@@@@@@@  &&&&&&&&.&&&& &&&&&&&&&&&&&&&.&&&&  &&&&&&.&&&& &&&&&&&&&&&&&&&&&.&&&&  &&&&&&&&&&&&.&& &&&&&&&&&&&&&.&&&&
.} // �த��� ��室�

.end
.if RawsM

������:��
.{ CHECKENTER RawsMLoop
.begin
 �⪫��� := ��������� - �������ଠ
 �⪫�⮨����� := �┠�� - �⭮ଠ
 ��ଠ������� := �������ଠ/�������ଠ
 䠪Ⅴ����� := ���������/�������ଠ
end.
@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@  @@@@@@@@@  &&&&&&&&.&&&& &&&&&&&&&&&&&&&.&&&&  &&&&&&.&&&& &&&&&&&&&&&&&&&&&.&&&&  &&&&&&&&&&&&.&& &&&&&&&&&&&&&.&&&&
.} // ����
.end
���������������������������������������������������������������������������������������������������������������������������������������������������������
.} // ��⮢�� �த���


.}
.endform