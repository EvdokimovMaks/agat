//------------------------------------------------------------------------------
//                                                      (c) ��௮��� ���������
// ��������� 7.11 - �ந�����⢥���� �����஢����
// ����䨪��� ��
//------------------------------------------------------------------------------

#doc
������� �ଠ ����� '����䨪��� ��'</brief>
#end

.form Rep1005_2
.hide
.defo landscape
.fields
ResType
ResName
ResObozn
ResNomer

DocType
DocName
DocCode

DocEdNorm
DocEdIzm
DtBeg
DtEnd

ColTitle

GroupName

PosNom
PosType
PosName
PosWork
PosDep
PosTime
PosProcent
PosRank
���᭥���_�_��_����樨
.endfields
 ^ ^ ^ ^
 ^ ^ ^
 ^ ^ ^ ^
 ^
.{
 ^ ^ ^ ^ ^ ^ ^ ^ ^
.{ Asup_ByMKOp CheckEnter
 ^
.}
.}
.endform

//******************************************************************************
.linkform 'Rep1005_02' prototype is Rep1005_2
.nameinlist '������������ ���������� �����'
.group 'MK'
.fields
ResType
ResName
ResObozn
ResNomer

DocType
DocName
DocCode

DocEdNorm
DocEdIzm
DtBeg
DtEnd
.endfields

 ������������ ���������� �����

 ������� (^):
   ������������  : ^
   ������祭��   : ^
   �������. �����: ^
 ���㬥�� (^):
   ������������  : ^
   ���           : ^
 ��ࠬ���� ���㬥��:
   ������ ��ନ஢����: ^ ^
   ��ਮ� ����⢨�: ^ ^

������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
 � �/� � ���   � ������������                   � ��� ࠡ��                  � �ᯮ���⥫�                                                � ��ଠ �६���, � ����� � ��業�
       �       �                                �                            �                                                            � ��            �        � �ᯮ�짮�����
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{
.fields
PosNom
PosType
PosName
PosWork
PosDep
PosTime
PosProcent
PosRank
.endfields
 &&&&& � @@@@@ � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ � @@@@@@@@@@@@@@@@@@@@@@@@@@ � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ � &&&&&&&.&&&&&& � @@@@@@ � &&&&.&&
.{ Asup_ByMKOp CheckEnter
.fields
  ���᭥���_�_��_����樨
.endfields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.}
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.endform

//******************************************************************************
.linkform 'Rep1005_12' prototype is Rep1005_2
.nameinlist '������������ ���������� �����'
.group 'MKGroup'
.var
  CurGroupName: string
.endvar
.fields
ResType
ResName
ResObozn
ResNomer

DocType
DocName
DocCode

DocEdNorm
DocEdIzm
DtBeg
DtEnd

ColTitle
.endfields

.begin
CurGroupName:= '';
end.

 ������������ ���������� �����

 ������� (^):
   ������������  : ^
   ������祭��   : ^
   �������. �����: ^
 ���㬥�� (^):
   ������������  : ^
   ���           : ^
 ��ࠬ���� ���㬥��:
   ������ ��ନ஢����: ^ ^
   ��ਮ� ����⢨�: ^ ^
�������������������������������������������������������������������������������������������������������������������������������������������������������
 � �/� � ���   � ������������                   � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                             � ��ଠ �६���, � ����� � ��業�
       �       �                                �                                                            � ��            �        � �ᯮ�짮�����
.{
.{ ?Internal;(GroupName <> CurGroupName)
.fields
GroupName
.endfields
�������������������������������������������������������������������������������������������������������������������������������������������������������
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
�������������������������������������������������������������������������������������������������������������������������������������������������������
.begin
CurGroupName:= GroupName;
end.
.} //end of ?Internal
.fields
PosNom
PosType
PosName
PosWork
PosTime
PosProcent
PosRank
.endfields
 &&&&& � @@@@@ � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ � &&&&&&&.&&&&&& � @@@@@@ � &&&&.&&
.{ Asup_ByMKOp CheckEnter
.fields
  ���᭥���_�_��_����樨
.endfields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.}
�������������������������������������������������������������������������������������������������������������������������������������������������������
.endform