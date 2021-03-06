//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "�����஭��� ���⭮��� ��"
// Persistent Object Manager : "���⥬�� ⨯� ���⮢"
//------------------------------------------------------------------------------

#ifndef __TRBPersSysRepType_Inc__
#define __TRBPersSysRepType_Inc__

const
  // ��㯯� ���⮢
  lc_TRBRepGroupName_All  = '���';
  lc_TRBRepGroupName_0001 = '��������� ���⭮���';
  lc_TRBRepGroupName_0002 = '������᪠� ���⭮���';
  lc_TRBRepGroupCode_All  : word = 0;
  lc_TRBRepGroupCode_0001 : word = 1;
  lc_TRBRepGroupCode_0002 : word = 2;

  // ⨯� �����஭��� ���⮢
  lc_TRBRepID_NDS         : word =  1;  // �������� �� ���

  // ��䨪��
  lc_RepInfo_ComponentPrefix = '#(__COMPONENT__)::';
  lc_RepInfo_IfcPrefix  = 'TRBRepInfo_';
  lc_RepInfo_ObjIfcName = lc_RepInfo_ComponentPrefix+'ITRBBaseRepInfo';
end; // const

#endif//__TRBPersSysRepType_Inc__
