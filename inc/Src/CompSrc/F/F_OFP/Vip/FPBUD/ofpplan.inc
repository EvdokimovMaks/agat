//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - ����� "���⥦�� ���������"
// ����⠭�� ����� ����㧪� ������ ���
//------------------------------------------------------------------------------

#ifndef __Ofpplan_Inc__
#define __Ofpplan_Inc__

const

  cgCurWin_Null  = 0; // ��� ��ࢮ�� ����᪠ RunDirect
  cgCurWin_Tune  = 1; // ����ன��
  cgCurWin_Clear = 2; // ���⪠ ������ ���
  cgCurWin_Load  = 3; // ����㧪� ������ ���

  cgCurDir_Forw  = 1; // �����
  cgCurDir_Back  = 2; // �����

  cgBudVar_ComPlan  = '��ନ஢�� ��� �� 䨭��易⥫��⢠�';
  cgBudVar_ComClear = '�ந������� ���⪠ ��� �� 䨭��易⥫��⢠�';

  cgFlag_UseFOB     = 0; // �ᯮ�짮���� 䨭��ᮢ� ��易⥫��⢠
  cgFlag_UseCourse  = 1; // �ᯮ�짮���� �ண����� ����
  cgFlag_ClBudget   = 2; // �।���⥫쭮 ������ ���

  cgFlag_UseTForma  = 0; // �ᯮ�짮���� ⨯���� ���

  cgFlag_TFByClearing = 1; // ���뢠�� �� ����஥��� �� ���
  cgFlag_TFByAktOfp   = 2; // ���뢠�� �� ����஥��� �� ��

end;

#endif // __Ofpplan_Inc__
