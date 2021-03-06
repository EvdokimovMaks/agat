//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - ����� "�����஭��� ���⭮���"
// ����䥩� ।���஢���� : "����� �� ����ᮢ��� ���⥦� �� ������ �� �����⢮ �࣠����権"
//------------------------------------------------------------------------------

#ifndef __ImuRNal_Inc__
#define __ImuRNal_Inc__

#include TRNImuKatOSVer.Inc

const
  // ⨯� ����ᥩ � ⠡��� ������樨 (NavStruct.wType)
  lc_Tit_NavNodeType : word = 01;  // ������ ����
  lc_R01_NavNodeType : word = 02;  // ������ 1
  lc_R02_NavNodeType : word = 03;  // ������ 2
  lc_R03_NavNodeType : word = 04;  // ������ 3

  // ������������ ���設� "��뫪� �� KatOS"
  lc_KatOSNRecNodePath : string = 'cKatOS';
  // ������������ ���設� "�����襭�� �㬬� ������: ��業�"
  lc_LowSLgProcNodePath : string = 'LowSLgProc';

  // ०�� 㤠����� �०��� ������ �� ������
  lc_Imp_DelMode : word = 0;  // ०�� 㤠�����
  lc_Imp_AddMode : word = 1;  // ०�� ����������

  // ��� �� ����� ࠧ�����
  lc_R01ParentNodePath : string = '����/���㬥��/���逢';
  lc_R01SlavedNodePath : string = lc_R01ParentNodePath + '/�㬍����';

end; // const

#endif//__ImuRNal_Inc__
