//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "�����஭��� ���⭮��� ��"
// ����䥩� ।���஢���� : "�������� �� ���"
//------------------------------------------------------------------------------

#ifndef __v001_TRBNDSEditor_Inc__
#define __v001_TRBNDSEditor_Inc__

const
  // ⨯� ���設� � ⠡��� ������樨
  lc_NavNodeType_Title     : word = 01;  // ���������
  lc_NavNodeType_P1_F      : word = 02;  // ����� 1
  lc_NavNodeType_P1_R1_3   : word = 03;  // ����� 1 ������� 1-3
  lc_NavNodeType_P1_R__4   : word = 04;  // ����� 1 ������ 4
  lc_NavNodeType_P1_R__5   : word = 05;  // ����� 1 ������ 5
  lc_NavNodeType_P2_F      : word = 06;  // ����� 2 Folder
  lc_NavNodeType_P2_0      : word = 07;  // ����� 2
  lc_NavNodeType_Pril_01_F : word = 08;  // �ਫ������ 1 (�����)
  lc_NavNodeType_Pril_01_0 : word = 09;  // �ਫ������ 1
  lc_NavNodeType_Pril_02_F : word = 10;  // �ਫ������ 2 (�����)
  lc_NavNodeType_Pril_02_0 : word = 11;  // �ਫ������ 2
  lc_NavNodeType_Pril_03_F : word = 12;  // �ਫ������ 3 (�����)
  lc_NavNodeType_Pril_03_0 : word = 13;  // �ਫ������ 3
  lc_NavNodeType_Pril_04_F : word = 14;  // �ਫ������ 4 (�����)
  lc_NavNodeType_Pril_04_0 : word = 15;  // �ਫ������ 4
  lc_NavNodeType_Pril_05_F : word = 16;  // �ਫ������ 5 (�����)
  lc_NavNodeType_Pril_05_0 : word = 17;  // �ਫ������ 5
  lc_NavNodeType_Pril_06_F : word = 18;  // �ਫ������ 6 (�����)
  lc_NavNodeType_Pril_06_0 : word = 19;  // �ਫ������ 6
  lc_NavNodeType_Pril_07_F : word = 20;  // �ਫ������ 7 (�����)
  lc_NavNodeType_Pril_07_0 : word = 21;  // �ਫ������ 7
  lc_NavNodeType_Pril_08_F : word = 22;  // �ਫ������ 8 (�����)
  lc_NavNodeType_Pril_08_0 : word = 23;  // �ਫ������ 8
  lc_NavNodeType_Pril_09_F : word = 24;  // �ਫ������ 9 (�����)
  lc_NavNodeType_Pril_09_0 : word = 25;  // �ਫ������ 9
  lc_NavNodeType_Pril_10_F : word = 26;  // �ਫ������ 10 (�����)
  lc_NavNodeType_Pril_10_0 : word = 27;  // �ਫ������ 10
  lc_NavNodeType_Pril_11_F : word = 28;  // �ਫ������ 11 (�����)
  lc_NavNodeType_Pril_11_0 : word = 29;  // �ਫ������ 11
  lc_NavNodeType_Pril_12_F : word = 30;  // �ਫ������ 12 (�����)
  lc_NavNodeType_Pril_12_0 : word = 31;  // �ਫ������ 12

  // ⨯ ������樨 (���������, ����⠫��, �������, ��筥��� �������)
  lc_TermType_NotDef  : word = 0;  // �� ��।����
  lc_TermType_Month   : word = 1;  // ���������
  lc_TermType_Quartal : word = 2;  // ����⠫��
  lc_TermType_Year    : word = 3;  // �������
  lc_TermType_RevYear : word = 4;  // ��筥��� �������

  // ���� �������� ������ ���㡫��� ��������
  lc_CurrencyCode_BYR = '974';
  lc_CurrencyCode_BYN = '933';
  // �ଠ�� �������� ������ ���㡫��� ��������
  lc_CurrencyValuesDisplayFormat_RUBLE    = 'RUBLE';
  lc_CurrencyValuesDisplayFormat_THOUSAND = 'THOUSAND';
  lc_CurrencyValuesDisplayFormat_MILLION  = 'MILLION';

  // �ਧ��� �������樨
  lc_liquidationTypeP1 = 'SELF_START';  // � ᮮ⢥��⢨� � ����� 1 �㭪� 2-1 ��.63 �� ��
  lc_liquidationTypeP2 = 'SELF_END'  ;  // � ᮮ⢥��⢨� � ����� 2 �㭪� 2-1 ��.63 �� ��
  lc_liquidationTypeP4 = 'BRANCH'    ;  // � ᮮ⢥��⢨� � ����� 4 �㭪� 2-1 ��.63 �� ��
  lc_liquidationTypeP5 = 'FOREIGN'   ;  // � ᮮ⢥��⢨� � ����� 5 �㭪� 2-1 ��.63 �� ��

  //----------------------------------------------------------------------------
  // ��� �� ����� � �������
  lc_NodePath_P1_R1_31 = 'NDS/NDS_v3_part1/NDS_v3_part1_t001';  // ����� 1 ������ 1-3
  lc_NodePath_P1_R1_32 = 'NDS/NDS_v3_part1/NDS_v3_part1_f002';  // ����� 1 ������ 1-3 (���-�� �ப� 㯫���)
  lc_NodePath_P1_R__4  = 'NDS/NDS_v3_part1/NDS_v3_part1_t003';  // ����� 1 ������ 4
  lc_NodePath_P1_R__5  = 'NDS/NDS_v3_part1/NDS_v3_part1_l4i' ;  // ����� 1 ������ 5
  lc_NodePath_P2       = 'NDS/NDS_v3_part2'                  ;  // ����� 2
  lc_NodePath_Pril_01  = 'NDS/NDS_v3_spravka_t001'           ;  // �ਫ������ 1
  lc_NodePath_Pril_02  = 'NDS/NDS_v3_reestr'                 ;  // �ਫ������ 2
  lc_NodePath_Pril_03  = 'NDS/NDS_v3_reestr0'                ;  // �ਫ������ 3
  lc_NodePath_Pril_04  = 'NDS/NDS_v3_reestr1'                ;  // �ਫ������ 4
  lc_NodePath_Pril_05  = 'NDS/NDS_v3_reestr2'                ;  // �ਫ������ 5
  lc_NodePath_Pril_06  = 'NDS/NDS_v3_reestr3'                ;  // �ਫ������ 6
  lc_NodePath_Pril_07  = 'NDS/NDS_v3_reestr4'                ;  // �ਫ������ 7
  lc_NodePath_Pril_08  = 'NDS/NDS_v3_reestr5'                ;  // �ਫ������ 8
  lc_NodePath_Pril_09  = 'NDS/NDS_v3_reestr6'                ;  // �ਫ������ 9
  lc_NodePath_Pril_10  = 'NDS/NDS_v3_reestr7'                ;  // �ਫ������ 10
  lc_NodePath_Pril_11  = 'NDS/NDS_v3_reestr8'                ;  // �ਫ������ 11
  lc_NodePath_Pril_12  = 'NDS/NDS_v3_reestr12'               ;  // �ਫ������ 12
  // ��� �� ����� � �������
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  // ��� �� ����� ⠡��� � �������
  lc_NodeTblPath_P2       = lc_NodePath_P2                             ;  // ����� 2
  lc_NodeTblPath_Pril_01  = lc_NodePath_Pril_01                        ;  // �ਫ������ 1
  lc_NodeTblPath_Pril_02  = lc_NodePath_Pril_02+'/NDS_v3_reestr_t001'  ;  // �ਫ������ 2
  lc_NodeTblPath_Pril_03  = lc_NodePath_Pril_03+'/NDS_v3_reestr0_t001' ;  // �ਫ������ 3
  lc_NodeTblPath_Pril_04  = lc_NodePath_Pril_04+'/NDS_v3_reestr1_t001' ;  // �ਫ������ 4
  lc_NodeTblPath_Pril_05  = lc_NodePath_Pril_05+'/NDS_v3_reestr2_t001' ;  // �ਫ������ 5
  lc_NodeTblPath_Pril_06  = lc_NodePath_Pril_06+'/NDS_v3_reestr3_t001' ;  // �ਫ������ 6
  lc_NodeTblPath_Pril_07  = lc_NodePath_Pril_07+'/NDS_v3_reestr4_t001' ;  // �ਫ������ 7
  lc_NodeTblPath_Pril_08  = lc_NodePath_Pril_08+'/NDS_v3_reestr5_t001' ;  // �ਫ������ 8
  lc_NodeTblPath_Pril_09  = lc_NodePath_Pril_09+'/NDS_v3_reestr6_t001' ;  // �ਫ������ 9
  lc_NodeTblPath_Pril_10  = lc_NodePath_Pril_10+'/NDS_v3_reestr7_t001' ;  // �ਫ������ 10
  lc_NodeTblPath_Pril_11  = lc_NodePath_Pril_11+'/NDS_v3_reestr8_t001' ;  // �ਫ������ 11
  lc_NodeTblPath_Pril_12  = lc_NodePath_Pril_12+'/NDS_v3_reestr12_t001';  // �ਫ������ 12
  // ��� �� ����� ⠡��� � �������
  //----------------------------------------------------------------------------
end; // const

#endif//__v001_TRBNDSEditor_Inc__
