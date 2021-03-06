//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "�����஭��� ���⭮��� ���"
// ������� ��ꥪ� : "������� ����"
//------------------------------------------------------------------------------

#ifndef __gzrTablRepStruct_Inc__
#define __gzrTablRepStruct_Inc__

const
  // Null ���祭��
  lc_NullValue : string = '';

  // ⨯� ���祭��
  lc_ValueTypeString   : word = 0;  // ��ப�
  lc_ValueTypeNumber   : word = 1;  // �᫮
  lc_ValueTypeDate     : word = 2;  // ���
  lc_ValueTypeDateTime : word = 3;  // ��� �६�
  lc_ValueTypeBoolean  : word = 4;  // �����᪨� (��/���)

  // �ଠ� ���� � �६��� �� 㬮�砭��
  lc_DefaultDateFormat     = 'YYYY-MM-DD';//'YYYY-MM-DD+03:00'
  lc_DefaultDateTimeFormat = 'YYYY-MM-DD HH:NN:SS';
//lc_XMLDateTimeFormat     = 'YYYY-MM-DDTHH:NN:SS';

  // ᯮᮡ ����䨪�樨 ����
  lc_ModifyOwner_Def : word = 0;  // �� 㬮�砭��
  lc_ModifyOwner_Usr : word = 1;  // ���짮��⥫�
  lc_ModifyOwner_Alg : word = 2;  // ������
  lc_ModifyOwner_Frm : word = 3;  // ��㫠

  // ��易⥫쭮��� ���������� ����
  lc_NeedMode_NotRequired    : word = 0;  // �� ��易⥫쭮�
  lc_NeedMode_StrongRequired : word = 1;  // ��易⥫쭮�

  // ०��� ����
  lc_CalcModeAlg_Bit : word = 1;  // �����뢠���� �� �������

  // ०��� ����� ����
  lc_NotCalcAlg_Bit : word = 1;  // �� �ᯮ�짮���� ���� �� �������
  lc_NotCalcFrm_Bit : word = 2;  // �� �ᯮ�짮���� ���� �� ��㫥

  // ������������ ���� � ���祭��� ⥪�⮢�� ���設�
  lc_StructTextValueFieldName = 'Value';

end; // const

#endif//__gzrTablRepStruct_Inc__
