!���������������������������������������������������������������������������ͻ
!�                     (c) 1994-2002 ��௮��� ���������                    �
!� �஥��        : ���������                                                 �
!� ���⥬�       : ����⨢�� ������ [�����ன]                             �
!� �����        : 5.84                                                      �
!� �����祭��    : ��ࠢ�� � ����᫥���� �।�⢠� � 䠪��᪮� �ᯮ�짮- �
!�                 ����� ������஢, �易���� � ���. ��ந⥫�⢮�.          �
!� ���ࠡ�⠫    : ���� ������                                               �
!���������������������������������������������������������������������������ͼ


#doc
��ࠢ�� � ����᫥���� �।�⢠� � 䠪��᪮� �ᯮ�짮����� ������஢,
�易���� � ���. ��ந⥫�⢮�.
#end
.form  'DogStroy'
.hide
.fields
  ���_��砫�_��ਮ��    :Date
  ���_����砭��_��ਮ�� :Date

  �࣠������
  �࣠������_���
  �࣠������_����
  �࣠������_����
  �࣠������_����

!.{
  �।���⨥
  �ணࠬ��_ࠡ��

  ���_������� :Date
  �����_�������
  ����᫥�� :Double
  //�ਭ��_���⮢_��_�ᯮ������_�������
  //������_��_�����_��_����祭�_�����_��_�ᯮ������
!.}
.endfields
! --- ���ᠭ�� �������� ���
  ���_��砫�_��ਮ��:    ^
  ���_����砭��_��ਮ��: ^

  �࣠������:            ^
  �࣠������_���:        ^
  �࣠������_����:       ^
  �࣠������_����:       ^
  �࣠������_����:       ^

.{
  ---------------------------------------------------------------------------
  �।���⨥:     ^
  �ணࠬ��_ࠡ��: ^

  ���_�������:   ^
  �����_�������:  ^
  ����᫥��:     &#'&&&&&&&&&&.&&
!  �ਭ��_���⮢_��_�ᯮ������_�������:             ^
!  ������_��_�����_��_����祭�_�����_��_�ᯮ������: ^
.}
.endform



!******************************************************************************
!******************************************************************************
!******************************************************************************
#doc
��ࠢ�� � ����᫥���� �।�⢠� � 䠪��᪮� �ᯮ�짮����� ������஢
#end
.LinkForm 'DogStroy1' prototype is 'DogStroy'
.NameInList '��ࠢ�� � ����᫥���� �।�⢠� � 䠪��᪮� �ᯮ�짮����� ������஢'
.DEFO LANDSCAPE
.p 55
.var
  S0, S1, P0, P1 :String;
  Itog5, Itog50 :Double;
.endvar
.fields
  CommonFormHeader

  String('��ࠢ�� � ����᫥���� �।�⢠� � 䠪��᪮� �ᯮ�짮����� ������஢,')
  String('�易���� � ����⠫�� ��ந⥫�⢮� � ४������樥� �ந�����⢠,')
  String('�����祭��� '+�࣠������+' � �।����ﬨ.')

  ���_��砫�_��ਮ��
  ���_����砭��_��ਮ��
.endfields
^
��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                                  �� ��ਮ� � ��@@@@@@@@@@�� �� ��@@@@@@@@@@��

.begin
  S0     := '';
  S1     := '';
  P0     := '';
  P1     := '';
  Itog5  := 0.0;
  Itog50 := 0.0;
end.
.{
.[h
.begin
end.
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ��
���                                         �                                                                            �         �������        �                 ��ਭ�� ���⮢�      ������, �� �����      ���
���               �।���⨥               �                                 �ணࠬ��                                  ������������������������Ĵ   ����᫥��   � �� �ᯮ������ �      �� ����祭� �����      ���
���                                         �                                                                            �   ���   �    �����    �                 �               �    �� �ᯮ������ �������    ���
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ��
���                   1                     �                                     2                                      �    3     �      4      �        5        �       6       �              7               ���
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ��
.]h
.{?Internal;(S0 = '')
.begin
  S0 := �।���⨥;
end.
.}
.{?Internal;(P0 = '')
.begin
  P0 := �ணࠬ��_ࠡ��;
end.
.}
.{?Internal;(S0 <> �।���⨥)
.fields
  S0
  Itog5
.endfields
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ��
��� �⮣� �� ������樮��� �ணࠬ���: ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�����&#'&&&&&&&&&&&.&&���               �                              ���
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ��
.begin
  S0     := �।���⨥;
  P0     := �ணࠬ��_ࠡ��;
  Itog5  := 0.0;
end.
.}
.{?Internal;(P0 <> �ணࠬ��_ࠡ��)
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ��
.begin
  P0     := �ணࠬ��_ࠡ��;
end.
.}
.fields
  if(S1 <> '', if(S1 = �।���⨥, '', �।���⨥), �।���⨥)
  if(P1 <> '', if(P1 = �ணࠬ��_ࠡ��, '', �ணࠬ��_ࠡ��), �ணࠬ��_ࠡ��)
!  �ணࠬ��_ࠡ��

  ���_�������
  �����_�������
  ����᫥��
.endfields
���@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@�@@@@@@@@@@@@@�&#'&&&&&&&&&&&.&&�               �                              ���
.begin
  S1     := �।���⨥;
  P1     := �ணࠬ��_ࠡ��;
  Itog5  := Itog5  + ����᫥��;
  Itog50 := Itog50 + ����᫥��;
end.
.[f
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]f
.}
.fields
  S0
  Itog5
.endfields
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ��
��� �⮣� �� ������樮��� �ணࠬ���: ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�����&#'&&&&&&&&&&&.&&���               �                              ���
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.begin
  Itog5  := 0.0;
end.
.fields
  Itog50
.endfields
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ��
����� �ᥣ� �� ������樮��� ������ࠬ��                                                                                                             ���&#'&&&&&&&&&&&.&&���               �                              ���
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.endform
!******************************************************************************