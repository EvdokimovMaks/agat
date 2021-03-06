//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "�����஭��� ���⭮��� ��"
// ������� ��ꥪ� : "������� ����"
//------------------------------------------------------------------------------

#ifndef __TRBTablRepStruct_Inc__
#define __TRBTablRepStruct_Inc__

const
  // Null ���祭��
  lc_NullValue : string = '';

  // ⨯� ���祭��
  lc_ValueTypeString  : word = 0;  // ��ப�
  lc_ValueTypeNumber  : word = 1;  // �᫮
  lc_ValueTypeDate    : word = 2;  // ���
  lc_ValueTypeBoolean : word = 3;  // �����᪨� (��/���)

  // �ଠ� ���� �� 㬮�砭��
  lc_DefaultDateFormat = 'YYYY-MM-DD+03:00';// 'DD.MM.YYYY'

  // ᯮᮡ ����䨪�樨 ����
  lc_ModifyOwner_Def : word = 0;  // �� 㬮�砭��
  lc_ModifyOwner_Usr : word = 1;  // ���짮��⥫�
  lc_ModifyOwner_Alg : word = 2;  // ������
  lc_ModifyOwner_Frm : word = 3;  // ��㫠

  // ��易⥫쭮��� ���������� ����
  lc_NeedMode_NotRequired    : word = 0;  // �� ��易⥫쭮�
  lc_NeedMode_StrongRequired : word = 1;  // ��易⥫쭮�

  // ������������ ���� � ���祭��� ⥪�⮢�� ���設�
  lc_StructTextValueFieldName = 'Value';

end; // const

#endif//__TRBTablRepStruct_Inc__
