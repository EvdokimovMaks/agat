//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - ����� "���⥦�� ���������"
// ����� ��⠫��� �ਮ��⮢, �ਬ�砭��, ��।��
//------------------------------------------------------------------------------

#doc
����� - ����� ��⠫���� �ਮ��⮢, �ਬ�砭��, ��।�� (���⨯).<br>
#end
.set name = 'hPrior'
.NameInList '������� �ଠ - ��⠫��� �ਮ��⮢, �ਬ�砭��, ��।��'
.hide
.fields
  ��������_��⠫���    : String
  �����                : String
  ��⪮�_������������ : String
  ������������         : String
  ���_��㯯�஢��      : Word
.endfields
  ^
.{
  ^ ^ ^ ^
.}
.endform

//------------------------------------------------------------------------------
#doc
��⠫�� �ਮ��⮢ � �ਬ�砭��.<br>
#end
.LinkForm 'hPrior_01' Prototype is 'hPrior'
.NameInList '����� ��⠫���'
.Group '��⠫�� �ਮ��⮢'
.fields
  CommonFormHeader
  ��������_��⠫���
  �����
  ��⪮�_������������
  ������������
.endfields
��^

��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.{
.[H
                                                                                ���� @np@
�����������������������������������������������������������������������������������������
  �����   � ��⪮� ������������  �                    ������������
�����������������������������������������������������������������������������������������
.]H
&&&&&&&&&&�@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
�������������������������������������������������������������������������������������������
.endform

//------------------------------------------------------------------------------
#doc
��⠫�� ��।��.<br>
#end
.LinkForm 'hPrior_02' Prototype is 'hPrior'
.NameInList '����� ��⠫���'
.Group '��⠫�� ��।��'
.fields
  CommonFormHeader
  ��������_��⠫���
  �����
  ��⪮�_������������
  ������������
  ���_��㯯�஢��
.endfields
��^

��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.{
.[H
                                                                                ���� @np@
�����������������������������������������������������������������������������������������
  �����   � ��⪮� ������������  �                ������������                ���� ���.
�����������������������������������������������������������������������������������������
.]H
&&&&&&&&&&�@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�&&&&&&&&&
.}
�������������������������������������������������������������������������������������������
.endform
