//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "��ࠢ����� ��⮬"
// ���㠫�� ����䥩� : "������ ��⮢"
//------------------------------------------------------------------------------

#ifndef __FpBudA_Inc__
#define __FpBudA_Inc__

Const
  // ०��� ����㧪� ������ �� ᫮�
  lc_LoadStBudMode_OldLoad = -2;  // ���� ��ॣ�㧨�� �� ᫮� ��� 㦥 �뫮 ����㦥��
  lc_LoadStBudMode_NotLoad = -1;  // �ਧ��� �� �� ����㦥��
  lc_LoadStBudMode_BySloj0 =  0;  // �� 0-�� ᫮�
  lc_LoadStBudMode_BySloj1 =  1;  // �� ᫮� ⨯���� ���
  lc_LoadStBudMode_BySloj2 =  2;  // �� �ᥩ ��������� �����⨪� (��㯯� �����⨪)

  // ०��� ���४�஢�� �࠭���� ����ன�� ����娨
  lc_StoredHierSettingModifyMode_Not : word = 0;  // ��祣� �� ������
  lc_StoredHierSettingModifyMode_Del : word = 1;  // 㤠����� ��譨� �����⨪ �� ����ன�� ����娨
  lc_StoredHierSettingModifyMode_Add : word = 2;  // ���������� ����� �����⨪ �� ����ன�� ����娨

end; // Const

#endif//__FpBudA_Inc__

