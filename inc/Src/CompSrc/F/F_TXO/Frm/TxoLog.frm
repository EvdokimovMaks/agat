//********************************************************************************
//                                                        (c) ��௮��� �����⨪�
// �����⨪� 5.8 - ��壠���᪨� ������
// ��⮪�� ���⮢ �� ��� (�������)
//********************************************************************************

#doc
��⮪�� ���� �� ��� (����� ������� �ଠ)
#end
.set name = 'txolog'
.nameinlist '��⮪�� ���� �� ��� (������� �ଠ)'
.hide
.fields
  TypeMsg       : string
  CodeMistake   : string
  NameMistake   : string
  DescrMistake  : string

  TxoTag
  TxoMesage
.endfields
.{
.case
.when SqlCheckEnd
  ����砭��
.when SqlCheckTitle
  ��������� ⠡���� � �訡����
.when SqlCheck
  SQL �஢�ઠ:
  ��� ᮮ�饭��: ^
  ��� �訡��: ^
  ������������ �訡��: ^
  ���ᠭ�� �訡��: ^
.when SqlCheckTitleEnd
  ����砭�� ���������
.when DebugMessageLn
 @@@@@@@@@@@ ^
.end
.}
.endform

#doc
��⮪�� ���� �� ���
#end
.linkform 'txolog_01' prototype is 'txolog'
.defo landscape
.nameinlist '��⮪�� ���� �� ���'
.fields
  CommonFormHeader

  TypeMsg
  CodeMistake
  NameMistake
  DescrMistake

  TxoTag
  TxoMesage
.endfields

^
                                 ����⮪�� ���⮢ �� �����

   ���        �   ����饭��
 �����������������������������������������������������������������������������������������������
.{
.case
.when SqlCheckEnd
 �����������������������������������������������������������������������������������������������
.when SqlCheckTitle
 ���������������������������������������������������������������������������������������������Ŀ
 � ��� � ��� �訡�� � ������������ �訡�� � ���ᠭ�� �訡��                                    �
 �����������������������������������������������������������������������������������������������
.when SqlCheck
 �@@@@@�@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�
.when SqlCheckTitleEnd
 �����������������������������������������������������������������������������������������������
.when DebugMessageLn
 @@@@@@@@@@@@ � ^
.end
.}
.endform
