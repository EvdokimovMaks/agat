//------------------------------------------------------------------------------
//                                                      (c) ��௮��� ���������
// �����⨪� 9.2 - ��壠���᪨� ������
//  ����⥪� ��������� ��ꥪ⮢ �������樨
//------------------------------------------------------------------------------
#doc
����⥪� �������� ��ꥪ�� �������樨
#end
#include FeeSigners.frn
.set name 'LikvidOs'
.hide
.DEFP PA4
.SET FILLER ='_'

.fields
  �������0 
  ���_��1 
  ��ꥪ�_�ண_������2 : string 
  ���_��ꥪ�3  : string
  �����������4 : string 
  �����㬐���5 : double 
  �����㬃�6   : double
  #FeeSigners_Os_Fields
.endfields
.if Segment
 ^
.end
.{ PersCir CheckEnter
^^^^^
.if PersGR
 ^
.end
.}
#FeeSigners_Os_Body(LikvidOs)
.endform


.linkform 'LikvidOs_lnk' prototype is 'LikvidOs'
.nameinlist '�������� ��ꥪ�� �������樨'
.DEFO portrait
.DEFP PA4
!.p 50
.var
Itogo7: double;
.endvar
#FeeSigners_Os_LinkVar
.SET FILLER ='_'
.fields
 �������0
.endfields
.begin
Itogo7 := 0;
end.
!.{ AllVedC CheckEnter

��   �����।������ ��室�� �� �������� ��ꥪ⠬ �� ��ꥪ⮢ �ணࠬ�� �������樨��
.if Segment
  �������: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.end
.{ PersCir CheckEnter
.[H
��                                                                                                                                                                                                                                              ���� @np@
��������������������������������������������������������������������������������������������Ŀ
�     �                           �                             �            �               �
�� �/��    ��ꥪ�� �ணࠬ��      �   �������� ��ꥪ�� ��    �     ���    �  ���室� ��   �
�     �                           �                             � �������樨 � ��������� �� �
�     �                           �                             �            � �ணࠬ��,��.�
��������������������������������������������������������������������������������������������Ĵ
�  1  �       2                   �              3              �      4     �       5       �
���������������������������������ĳ���������������������������������������������������������Ĵ��
.]H
.fields
  ���_��1 ��ꥪ�_�ண_������2 ���_��ꥪ�3
  �����������4 �����㬐���5 �����㬃�6 Itogo7
.endfields
.begin
Itogo7 := Itogo7 + �����㬐���5;
end.
���@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�  @@@@@@@   �&&&&&&&&&&&.&& ���
�������Ĵ��������������������������Ĵ����������������������������Ĵ�����������Ĵ��������������Ĵ��
.if PersGR
���                                                 �⮣� �� ��ꥪ�� �ணࠬ�� �&&&&&&&&&&&.&& ���
�������Ĵ��������������������������Ĵ����������������������������Ĵ�����������Ĵ��������������Ĵ��
.end
.}
���     �                           �                             �       �⮣��&&&&&&&&&&&.&& ���
��������������������������������������������������������������������������������������������������
#FeeSIgners_Os_LinkInit(LikvidOs)
.{While (�����_�����ᠭ� < ������⢮_������_�����ᨨ) OR (�����_�����ᠭ� < 1)
.begin
  �����_�����ᠭ�++;
end.
.fields
  if (�����_�����ᠭ� <= ������⢮_������_�����ᨨ, ���ᨢ_����_�����ᨨ_��������� [�����_�����ᠭ�], '')
.endfields
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ __________________________________________________________
.}��
!.}
.endform
