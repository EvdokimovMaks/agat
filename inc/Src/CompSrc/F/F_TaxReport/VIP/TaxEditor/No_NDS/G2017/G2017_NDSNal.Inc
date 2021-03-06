//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - ����� "�����஭��� ���⭮���"
// ����䥩� ।���஢���� : "�������� �� ���"
//------------------------------------------------------------------------------

#ifndef __G2017_NDSNal_Inc__
#define __G2017_NDSNal_Inc__

const
  // ������������ ���設� "��뫪� �� ������ � ��"
  lc_NRecNodePath : string = 'NRec';

  // ⨯� ����ᥩ � ⠡��� ������樨 (NavStruct.wType)
  lc_Title_NavNodeType : word = 01;  // ������ ����
  lc_R01_0_NavNodeType : word = 02;  // ������ 1
  lc_R02_F_NavNodeType : word = 03;  // ������ 2 (�����)
  lc_R02_0_NavNodeType : word = 04;  // ������ 2
  lc_R03_0_NavNodeType : word = 05;  // ������ 3
  lc_R03_1_NavNodeType : word = 06;  // ������ 3 �ਫ������ 1
  lc_R03_2_NavNodeType : word = 07;  // ������ 3 �ਫ������ 2
  lc_R04_0_NavNodeType : word = 08;  // ������ 4
  lc_R04_1_NavNodeType : word = 09;  // ������ 4 ����� �㬬� ������, �������饩 ����⠭�������, �� ���� ����樨
  lc_R04_2_NavNodeType : word = 10;  // ������ 4 ���४�஢�� ��������� ���� �� ������ ⮢�஢
  lc_R04_3_NavNodeType : word = 11;  // ������ 4 ���४�஢�� ��������� ���� �� 㢥��祭�� (㬥��襭��) 業�
  lc_R05_F_NavNodeType : word = 12;  // ������ 5 (�����)
  lc_R05_0_NavNodeType : word = 13;  // ������ 5
  lc_R06_0_NavNodeType : word = 14;  // ������ 6
  lc_R06_1_NavNodeType : word = 15;  // ������ 6 ����� �㬬� ������ �� ���� ����樨
  lc_R06_2_NavNodeType : word = 16;  // ������ 6 ���४�஢�� �㬬 ������ �� ������ ⮢�஢
  lc_R06_3_NavNodeType : word = 17;  // ������ 6 ���४�஢�� �㬬 ������ �� ��������� 業� ॠ���������� ⮢�஢ (ࠡ��, ���)
  lc_R07_0_NavNodeType : word = 18;  // ������ 7
  lc_R08_F_NavNodeType : word = 19;  // ������ 8 (�����)
  lc_R08_0_NavNodeType : word = 20;  // ������ 8
  lc_R8D_F_NavNodeType : word = 21;  // ������ 8 �ਫ������ 1 (�����)
  lc_R8D_0_NavNodeType : word = 22;  // ������ 8 �ਫ������ 1
  lc_R09_F_NavNodeType : word = 23;  // ������ 9 (�����)
  lc_R09_0_NavNodeType : word = 24;  // ������ 9
  lc_R9D_F_NavNodeType : word = 25;  // ������ 9 �ਫ������ 1 (�����)
  lc_R9D_0_NavNodeType : word = 26;  // ������ 9 �ਫ������ 1
  lc_R10_F_NavNodeType : word = 27;  // ������ 10 (�����)
  lc_R10_0_NavNodeType : word = 28;  // ������ 10
  lc_R10_1_NavNodeType : word = 29;  // ������ 10 �த�������
  lc_R11_F_NavNodeType : word = 30;  // ������ 11 (�����)
  lc_R11_0_NavNodeType : word = 31;  // ������ 11
  lc_R11_1_NavNodeType : word = 32;  // ������ 11 �த�������
  lc_R12_F_NavNodeType : word = 33;  // ������ 12 (�����)
  lc_R12_0_NavNodeType : word = 34;  // ������ 12

  // ���� �����䨪�樨 ࠧ�����
  lc_RazdelIDBit_BR : word =   1;  // �᭮��� ࠧ����
  lc_RazdelIDBit_08 : word =   2;  // ������  8
  lc_RazdelIDBit_8D : word =   4;  // ������  8 �ਫ������ 1
  lc_RazdelIDBit_09 : word =   8;  // ������  9
  lc_RazdelIDBit_9D : word =  16;  // ������  9 �ਫ������ 1
  lc_RazdelIDBit_10 : word =  32;  // ������ 10
  lc_RazdelIDBit_11 : word =  64;  // ������ 11
  lc_RazdelIDBit_12 : word = 128;  // ������ 12

end; // const

#endif//__G2017_NDSNal_Inc__
