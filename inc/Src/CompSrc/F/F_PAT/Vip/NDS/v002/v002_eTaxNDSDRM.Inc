//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "��壠���᪠� ���⭮���"
// ����䥩� ।���஢���� : "�������⥫�� ࠧ���� ���"
//------------------------------------------------------------------------------

#ifndef __v002_eTaxNDSDRM_Inc__
#define __v002_eTaxNDSDRM_Inc__

const
  // �����䨪���� ࠧ�����
  lc_wRazdelID_00 : word =   0;  // ���� ����
  lc_wRazdelID_BR : word =   1;  // �᭮��� ࠧ����
  lc_wRazdelID_08 : word =  80;  // ������  8
  lc_wRazdelID_8D : word =  81;  // ������  8 �ਫ������ 1
  lc_wRazdelID_09 : word =  90;  // ������  9
  lc_wRazdelID_9D : word =  91;  // ������  9 �ਫ������ 1
  lc_wRazdelID_10 : word = 100;  // ������ 10
  lc_wRazdelID_11 : word = 110;  // ������ 11
  lc_wRazdelID_12 : word = 120;  // ������ 12

  // ���� �������㥬�� ࠧ�����
  lc_DopRazdelManagerBit_08 =   1;  // ������  8
  lc_DopRazdelManagerBit_8D =   2;  // ������  8 �ਫ������ 1
  lc_DopRazdelManagerBit_09 =   4;  // ������  9
  lc_DopRazdelManagerBit_9D =   8;  // ������  9 �ਫ������ 1
  lc_DopRazdelManagerBit_10 =  16;  // ������ 10
  lc_DopRazdelManagerBit_11 =  32;  // ������ 11
  lc_DopRazdelManagerBit_12 =  64;  // ������ 12

  // ०��� ��࠭���� � XML 䠩�
  lc_SaveToXMLMode_STD : word = 0;  // �⠭����� ०�� ��࠭����
  lc_SaveToXMLMode_Chk : word = 1;  // ��࠭���� ��� XSD �஢�ન

  lc_MaxLengthGTD : word = 1000;  // ���ᨬ��쭠� ����� ���� ���
end; // const

#endif//__v002_eTaxNDSDRM_Inc__
