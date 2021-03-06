//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "��ࠢ����� ��⮬"
// ����⠭�� ��ꥪ⭮� ⠡����
//------------------------------------------------------------------------------

#ifndef __FpObjTblMonitoring_Inc__
#define __FpObjTblMonitoring_Inc__

const
  lcUMI_CommonPrefix             = 'UserMonitorInt_';                     // ��䨪� ��� ���� ����� �� FpLockData.DataID Length=15
  lcUMI_Data                     = lcUMI_CommonPrefix+'Data_';            // ���-� ।���஢���� ������
  lcUMI_MetaData                 = lcUMI_CommonPrefix+'MetaData_';        // ���-� ।���஢���� ��⠤�����
  lcUMI_ExclusiveAccess          = lcUMI_CommonPrefix+'ExclusiveAccess';  // ��������� ����� ����祭
  lcUMI_PrepareToExclusiveAccess = lcUMI_CommonPrefix+'Prepare';          // �����⮢�� � ��⠭���� �������쭮�� ����㯠

  lcUMI_IsData            = 1;       //⨯� ����ᥩ � FpObjTblMonitoring
  lcUMI_IsMetaData        = 2;
  lcUMI_IsPreparing       = 3;
  lcUMI_IsExclusiveAccess = 4;

  lcUMI_NoExclusiveAccess          = 0;    //��� ०��� � FpObjTblMonitoring
  lcUMI_PreparingToExclusiveAccess = 1;
  lcUMI_ExclusiveAccessIsSet       = 2;

  // ��稭� �⪠�� � ����㯥
  lcUMI_NoReason                          = 0; // ��稭� ��� �⪠�� �� �������
  lcUMI_MetaData_Reason_NoExclusiveAccess = 1; // �� ����祭 ��������� ����� ��� ।���஢���� ��⠤�����
  lcUMI_MetaData_Reason_NotAdmin          = 2; // ���짮��⥫� - �� �����������, ��⠭����訩 ��������� �����
  lcUMI_MetaData_Reason_IsDataEditing     = 3; // ���� ।���஢���� ������
  lcUMI_Data_Reason_NotAdmin              = 4; // ���짮��⥫� - �� �����������, ��⠭����訩 ��������� �����
  lcUMI_Data_Reason_IsMetaDataEditing     = 5; // ���� ।���஢���� ��⠤�����

  // ⥪�� ᮮ�饭�� �� ����� ।���஢���� ������
  lcUMI_Data_InhibitMessage = '� ����� ������ �ந�室�� �������쭮� ।���஢���� ��⠤����� �����...';
end;

#endif//__FpObjTblMonitoring_Inc__
