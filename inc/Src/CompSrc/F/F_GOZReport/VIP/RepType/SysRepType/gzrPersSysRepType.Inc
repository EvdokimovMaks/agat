//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "�����஭��� ���⭮��� ���"
// Persistent Object Manager : "���⥬�� ⨯� ���⮢"
//------------------------------------------------------------------------------

#ifndef __gzrPersSysRepType_Inc__
#define __gzrPersSysRepType_Inc__

//------------------------------------------------------------------------------
#include EletronOtch.Inc  // �������� ����⠭�� "�����஭��� ���⭮��"
//------------------------------------------------------------------------------

const
  //----------------------------------------------------------------------------
  // ��㯯� ���⮢
  lc_gzrRepGroupName_All  = '���';
  lc_gzrRepGroupName_0001 = '���⭮��� ���';
  lc_gzrRepGroupCode_All  : word = 10;  // ���
  lc_gzrRepGroupCode_0001 : word = 11;  // ���⭮��� ���

  //----------------------------------------------------------------------------
  // ⨯� �����஭��� ���⮢
  // !!!�������� ⨯�� ��� F_GOZReport: cg_EOGOZRepID_MinValue..cg_EOGOZRepID_MaxValue (�. EletronOtch.Inc)
  lc_gzrRepID_F47         : word = cg_EOGOZRepID_MinValue;  // ���� �� �ᯮ������ �� �࣠����樥�, �믮����饩 ���
  // !!!�������� ⨯�� ��� F_GOZReport: cg_EOGOZRepID_MinValue..cg_EOGOZRepID_MaxValue (�. EletronOtch.Inc)
  // ⨯� �����஭��� ���⮢
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  // ��䨪��
  lc_RepInfo_ComponentPrefix = '#(__COMPONENT__)::';
  lc_RepInfo_IfcPrefix  = 'gzrRepInfo_';
  lc_RepInfo_ObjIfcName = lc_RepInfo_ComponentPrefix+'IgzrBaseRepInfo';
  //----------------------------------------------------------------------------

end; // const

#endif//__gzrPersSysRepType_Inc__
