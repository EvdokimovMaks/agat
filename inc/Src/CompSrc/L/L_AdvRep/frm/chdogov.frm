#doc
���� � 室� ����஢���� � �� ��������� �᫮��� ������஢
#end
.Form 'ChDogov'
.Hide
.Fields
��⠑
��⠏�
������
����⠐�����
��⪠
�㬬���⪨���
������������
�㬬���⪨������
����ࠣ���1
����ࠣ���2
�⢥��⢥���
�ணࠬ��
nRecDogovor
�����
����
�������
���
���1
���2
���
�㬬�������
������
�㬬�������
��稭�
nRecSpDog
�ਧ���
��મ�
������������
��㯯�
�����
���
�������
�㬬����
�������
�㬬����
������
vDesGr
vDescr
vdOper
vTimeOper
vOldNotes
vNewNotes
vComment
/*
nRecSogl
���������
��⠑���
���1����
���2����
����ﭨ�����
�㬬��������
�������
�㬬��������*/
.EndFields
^ ^ ^ ^
.{ CheckEnter GruppaDog12
^ ^ ^ ^
.{ CheckEnter HeadDog12
.{ CheckEnter DogName12
^ ^ ^ ^
.}
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.{ CheckEnter SpecDog12
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter SoglDog12
^ ^ ^ ^ ^ ^ ^
.}
.}
.}
.EndForm


#doc
����஢���� � ��������� �᫮��� ������஢
#end
.LinkForm 'ChDogov_01' Prototype is 'ChDogov'
.NameInList '����஢���� � ��������� �᫮��� ������஢'
.Var
cFirst, cFirst2 : Boolean
.EndVar
.Fields
CommonFormHeader
��⠑
��⠏�
������
����⠐�����
��⪠
�㬬���⪨���
�㬬���⪨������
������������
����ࠣ���1
����ࠣ���2
�⢥��⢥���
�ணࠬ��
�����
����
�������
���
���1
���2
���
�㬬�������
�㬬�������
������
��稭�
�ਧ���
��મ�
������������
��㯯�
�����
���
�������
�㬬����
�������
�㬬����
������
vDesGr
vDescr
vdOper
vTimeOper
vOldNotes
vNewNotes
vComment
/*
���������
��⠑���
���1����
���2����
�㬬��������
�㬬��������
�������
����ﭨ�����*/
.EndFields
��^
                         ���� � 室� ����஢���� � �� ��������� �᫮��� ������஢
                                 �� ��ਮ� c ^ �� ^

������: ^
�����: ^

�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
   �����    �  ����  �  ��㯯�  �   ���    �   �ப ����⢨�     � ���   �     �㬬�      �     �㬬�      �   �      ��稭�
            �         �   ����  �           ���������������������Ĵ ����- �       �        �       �        �����     ���ﭨ�
            �         �          �           �    �     �   ��     � ���� �      ���       �     �����     �   �
�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������

.{ CheckEnter GruppaDog12
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� ��� &'&&&&&&&&&&&.&& &'&&&&&&&&&&&.&& @@@
.{ CheckEnter HeadDog12
.{ CheckEnter DogName12
����ࠣ���1 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� ����ࠣ���2 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� �ணࠬ�� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �⢥��⢥��� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.}
@@@@@@@@@@   @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@ &'&&&&&&&&&&&.&& &'&&&&&&&&&&&.&& @@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    ��������� �᫮��� �������
.Begin
cFirst2 := True;
End.
.{ CheckEnter SpecDog12
.{?Internal;cFirst2;
�����������������������������������������������������������������������������������������������������������������������������������������������������������
��   ���.�����   ������������� ⮢��/��. �    ��㯯�     �������  ������⢮  �   ���� � ���   ��⮨����� � ��� ����� � ����� ��⮨����� ���.�  ������
�����������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.Begin
cFirst2 := False;
End.
@ @@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ @@@@@ &'&&&&&&&&.&&& &'&&&&&&&&&&&.&& &'&&&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& @@@@@@@@@@
.}
.{?Internal;Not cFirst2;
�����������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.{ CheckEnter SoglDog12
      @@@@@@@ @@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
�����������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.}��
.EndForm
