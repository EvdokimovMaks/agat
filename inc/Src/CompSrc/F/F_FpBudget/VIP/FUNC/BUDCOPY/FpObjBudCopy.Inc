//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "��ࠢ����� ��⮬"
// ������ ��ꥪ� : "����஢���� ��⮢"
//------------------------------------------------------------------------------

#ifndef  __FpAdvBudCop_Inc__
#define  __FpAdvBudCop_Inc__

const
  //----------------------------------------------------------------------------
  lc_MaxRecDeltaCash : LongInt = 100000;

  //----------------------------------------------------------------------------
  // Type TFpBudCopyInit
  // ����஢��� �� ���祭�� ��� ⮫쪮 ������
  lc_TFpBudCopyInit_TFormMode_All      : word = 0;  // ����஢��� �� ���祭��
  lc_TFpBudCopyInit_TFormMode_Vis      : word = 1;  // ����஢��� ⮫쪮 ������ ���祭��

  // ��७���� �� 䨪��� �� ����஢����
  lc_TFpBudCopyInit_FixMode_Not        : word = 0;  // ���
  lc_TFpBudCopyInit_FixMode_Yes        : word = 1;  // ��

  // 䨪�஢��� ���� ��� ���
  lc_TFpBudCopyInit_FormulaFixMode_Not : word = 0;  // ��
  lc_TFpBudCopyInit_FormulaFixMode_Yes : word = 0;  // ���

  // ०�� ����஢����
  lc_TFpBudCopyInit_CopyMode_Copy      : word = 0;  // ����஢����
  lc_TFpBudCopyInit_CopyMode_Agr       : word = 1;  // ��ॣ���
  lc_TFpBudCopyInit_CopyMode_Dec       : word = 2;  // �����������
  // Type TFpBudCopyInit
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  // Type TFpBudCopyStruct = record
  // ०�� 㤠����� � �ਥ�����
  lc_TFpBudCopyStruct_DSTDelMode_Add   : word = 0;  // ���������
  lc_TFpBudCopyStruct_DSTDelMode_Rpl   : word = 1;  // ������� �०��� ���祭��
  lc_TFpBudCopyStruct_DSTDelMode_Clr   : word = 2;  // ����� �� �����
  //----------------------------------------------------------------------------

end; // const

#endif//__FpAdvBudCop_Inc__
