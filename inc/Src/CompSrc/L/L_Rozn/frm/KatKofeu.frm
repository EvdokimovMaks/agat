!��������������������������������������������������������������������������ͻ
!�                     (c) ��௮��� ���������, 1996,98                    �
!� �஥��        : ���������                                                �
!� ���⥬�       : ����⨢�� ������                                       �
!� �����        : 5.74                                                     �
!� �����祭��    : ����� ��⠫��� ��� ⮢���� �����                     �
!� �⢥��⢥��� : ���� ������                                              �
!��������������������������������������������������������������������������ͼ

#doc
����� ��⠫��� ��� ⮢���� �����
#end
.set name='KatKofeu'
.hide
#include format2.frn
.fields
!.{
   ������������_���
   �������������_���
   ��ਮ�_����⢨�_�����樥��_��� :Double
   �����樥��_��� :Double
   �ᯮ�짮�����_�����樥��_�_����� :Boolean
! .{
    ������������_��
    ������������_�����_��

    ������������_��㯯�_��

    ��⭠�_��_�����
    ���᪭��_��_�����
    �����᪠�_業� :Double
! .}
!.}
.endfields
.{
===============================================================================
  ������������_���_�����              ^
  �������������_���                     ^
  ��ਮ�_����⢨�_�����樥��_���      ^
  �����樥��_���                       ^
  �ᯮ�짮�����_�����樥��_�_�����  ^
.{
  .............................................................................
  ������������_��          ^
  ������������_�����_��  ^

  ������������_��㯯�_��   ^

  ��⭠�_��_�����         ^
  ���᪭��_��_�����       ^
  �����᪠�_業�           ^
.}
.}
.endform



#doc
���᮪ ��� ⮢���� �����
#end
.LinkForm 'KatKofeu_01' prototype is KatKofeu
.NameInList '���᮪ ��� ⮢���� �����'
.Set Filler = '-'
.var
  NomPp :Word;
.endvar
.fields
!.{
   ������������_��� +
   '; �������������: ' + �������������_��� +
   '; �����樥�� ' + DoubleToStr(�����樥��_���, Kol_Pr) +
   ' (��ਮ� ����⢨� ' + DoubleToStr(��ਮ�_����⢨�_�����樥��_���,
                                      Cena_Pr) +')'

! .{
    String(NomPp) + '.' + ������������_��
    ������������_�����_��

    ������������_��㯯�_��

    ��⭠�_��_�����
    ���᪭��_��_�����
    if(�����᪠�_業� <> 0, DoubleToStr(�����᪠�_業�, Cena_Pr), '-')
! .}
!.}
.endfields
                     �����᮪ ��� ⮢���� �������

.{
.[h
����������������������������������������������������������������������������������������������������������������������������
��     ������������ ���業����     ��������.�����         ��㯯� ��         ���.��.�����.���.��.�����.� �����᪠� 業� ��
����������������������������������������������������������������������������������������������������������������������������
.]h
.begin
  NomPp :=0;
end.
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.{
.begin
  NomPp :=NomPp + 1;
end.
�� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@ @~@@@@@@@@@@ @~@@@@@@@@@@@ &#'&&&&&&&&&&&&&��
.}
.}
.endform