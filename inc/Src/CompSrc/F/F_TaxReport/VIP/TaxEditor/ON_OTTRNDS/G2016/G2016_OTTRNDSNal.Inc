//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - ����� "�����஭��� ���⭮���"
// ����䥩� ।���஢���� : "�⢥� �� �ॡ������ � �।�⠢����� ���᭥��� �� ���"
//------------------------------------------------------------------------------

#ifndef __OTTRNDNal_Inc__
#define __OTTRNDNal_Inc__

const
  // ������⢮ ������⮢ � ������� �� 㬮�砭��
  lc_StructCount_ErrorGraf  : word = 1;  // ����� ����, ᮤ�ঠ饩 �訡��
  lc_StructCount_CodeVidOp  : word = 4;  // ��� ���� ����樨
  lc_StructCount_DocOplata  : word = 1;  // �������� � ���㬥��, ���⢥ত��饬 㯫��� ������
  lc_StructCount_DataOprTov : word = 1;  // ��� �ਭ��� �� ��� ⮢�஢

  // ⨯� ����ᥩ � ⠡��� ������樨 (NavStruct.wType)
  lc_Title_NavNodeType : word = 01;  // ������ ����
  lc_R01_0_NavNodeType : word = 02;  // ������ 1
  lc_R02_F_NavNodeType : word = 03;  // ������ 2 (�����)
  lc_R02_0_NavNodeType : word = 04;  // ������ 2
  lc_R03_0_NavNodeType : word = 05;  // ������ 3
  lc_R03_1_NavNodeType : word = 06;  // ������ 3 �ਫ������ 1
  lc_R03_2_NavNodeType : word = 07;  // ������ 3 �ਫ������ 2
  lc_R04_0_NavNodeType : word = 08;  // ������ 4
  lc_R05_F_NavNodeType : word = 09;  // ������ 5 (�����)
  lc_R05_0_NavNodeType : word = 10;  // ������ 5
  lc_R06_0_NavNodeType : word = 11;  // ������ 6
  lc_R07_0_NavNodeType : word = 12;  // ������ 7
  lc_R08_F_NavNodeType : word = 13;  // ������ 8 (�����)
  lc_R08_0_NavNodeType : word = 14;  // ������ 8
  lc_R8D_F_NavNodeType : word = 15;  // ������ 8 �ਫ������ 1 (�����)
  lc_R8D_0_NavNodeType : word = 16;  // ������ 8 �ਫ������ 1
  lc_R09_F_NavNodeType : word = 17;  // ������ 9 (�����)
  lc_R09_0_NavNodeType : word = 18;  // ������ 9
  lc_R9D_F_NavNodeType : word = 19;  // ������ 9 �ਫ������ 1 (�����)
  lc_R9D_0_NavNodeType : word = 20;  // ������ 9 �ਫ������ 1
  lc_R10_F_NavNodeType : word = 21;  // ������ 10 (�����)
  lc_R10_0_NavNodeType : word = 22;  // ������ 10
  lc_R10_1_NavNodeType : word = 23;  // ������ 10 �த�������
  lc_R11_F_NavNodeType : word = 24;  // ������ 11 (�����)
  lc_R11_0_NavNodeType : word = 25;  // ������ 11
  lc_R11_1_NavNodeType : word = 26;  // ������ 11 �த�������
  lc_R12_F_NavNodeType : word = 27;  // ������ 12 (�����)
  lc_R12_0_NavNodeType : word = 28;  // ������ 12

  // ��� �� ����� ࠧ����� �ॡ������
  lc_RXX_ParentNodePath : string = '�����ॡ/���㬥��/�ਫ�ॡ���';

  lc_R08_ParentNodePath : string = lc_RXX_ParentNodePath + '/��������8';
  lc_R08_SlavedNodePath : string = lc_R08_ParentNodePath + '/��������';

  lc_R8D_ParentNodePath : string = lc_RXX_ParentNodePath + '/��������8.1';
  lc_R8D_SlavedNodePath : string = lc_R8D_ParentNodePath + '/����������';

  lc_R09_ParentNodePath : string = lc_RXX_ParentNodePath + '/��������9';
  lc_R09_SlavedNodePath : string = lc_R09_ParentNodePath + '/���த���';

  lc_R9D_ParentNodePath : string = lc_RXX_ParentNodePath + '/��������9.1';
  lc_R9D_SlavedNodePath : string = lc_R9D_ParentNodePath + '/���த�����';

  lc_R10_ParentNodePath : string = lc_RXX_ParentNodePath + '/��������10';
  lc_R10_SlavedNodePath : string = lc_R10_ParentNodePath + '/������甑��';

  lc_R11_ParentNodePath : string = lc_RXX_ParentNodePath + '/��������11';
  lc_R11_SlavedNodePath : string = lc_R11_ParentNodePath + '/��珮���甑��';

  lc_R12_ParentNodePath : string = lc_RXX_ParentNodePath + '/��������12';
  lc_R12_SlavedNodePath : string = lc_R12_ParentNodePath + '/�����_173.5';

  // ᯨ᮪ ���㬥�⮢
  lc_DocListSeparator  = ';'         ;  // ࠧ����⥫� ᯨ᪠ ���㬥�⮢
  lc_DocListDateSepar  = '.'         ;  // ࠧ����⥫� �ଠ� ����
  lc_DocListDateFormat = 'DD.MM.YYYY';  // �ଠ� ����

  // ०�� �ॡ������ ��� ���᭥���
  lc_wTPMode_Treb : word = 0;  // �ॡ������
  lc_wTPMode_Poys : word = 1;  // ���᭥���

  // १���� ��ࠡ�⪨ ��ப� �ॡ������
  lc_wDataCorrespond_Yes : word   =  0 ;  // ����� ᮮ⢥������
  lc_wDataCorrespond_Not : word   =  1 ;  // ����� �� ᮮ⢥������
  lc_sDataCorrespond_Yes : string = string(lc_wDataCorrespond_Yes);  // ����� ᮮ⢥������
  lc_sDataCorrespond_Not : string = string(lc_wDataCorrespond_Not);  // ����� �� ᮮ⢥������
end; // const

//------------------------------------------------------------------------------
// ��ਡ��� ���㬥��
Type TDRMDocAttr = record
  sNum : string;  // ����� ���㬥��
  dDat : date;    // ���  ���㬥��
end;
//------------------------------------------------------------------------------
// ���᮪ ���㬥�⮢
Type TDRMDocList = array[0..0] of TDRMDocAttr;
//------------------------------------------------------------------------------
// ���᮪ ��ப���� �।�⠢����� ४����⮢ ���㬥�⮢
Type TDRMStrDocList = array[0..0] of string;

//------------------------------------------------------------------------------
// ������ப�
Type TDRMMultyStr = array[0..0] of string[lc_ValueLength];

#endif//__OTTRNDNal_Inc__
