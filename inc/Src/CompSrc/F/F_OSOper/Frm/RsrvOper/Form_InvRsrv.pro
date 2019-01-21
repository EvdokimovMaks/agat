//------------------------------------------------------------------------------
//                                                      (c) ��௮��� ���������
// �����⨪� 8.1 - ��壠���᪨� ������
// ����� �� ������ १�ࢮ� ��
//------------------------------------------------------------------------------
// #include PREDEFS.INC

#include FeeSigners.frn

#doc
  ��ଠ ��� ���� ���⮢ �� ������ १�ࢮ� ��.<br>
#end
.form InvRsrv
.hide
.fields
  #FeeSigners_Os_Fields

  ������������_��
  ���_����
  �����_�ਪ���
  ���_�ਪ���
  ��砫�_������ਧ�樨
  �����_������ਧ�樨
  �����_����樨
  ���_����樨
  ��_����

  ��ꥪ��_�ணࠬ��
  ��������_��ꥪ��_��
  ���⮪_��_�������       : double
  ConfDocName
  ConfDocNum
  ConfDocDate
  ConfDocSum                : double
  InvResUnder               : double
  InvResOver                : double

  �⮣�_���⮪_��_������� : double
  Itog_ConfDocSum           : double
  Itog_InvResUnder          : double
  Itog_InvResOver           : double
.endfields
.var
  iExcelFormat : ExcelFormat;
.endvar
.{
  #FeeSigners_Os_Body(InvRsrv)

  ������������_��       - ^
  ���_����              - ^
  �����_�ਪ���         - ^
  ���_�ਪ���          - ^
  ��砫�_������ਧ�樨 - ^
  �����_������ਧ�樨  - ^
  �����_����樨        - ^
  ���_����樨         - ^
  ��_����               - ^

.{ CheckEnter InvRsrv_Data
  ^ ^ ^ ^ ^ ^ ^ ^ ^
.}

  �⮣�_���⮪_��_������� - ^
  Itog_ConfDocSum           - ^
  Itog_InvResUnder          - ^
  Itog_InvResOver           - ^
.}
.endform
