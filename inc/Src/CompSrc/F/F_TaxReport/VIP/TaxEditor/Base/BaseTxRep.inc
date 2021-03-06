//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - ����� "�����஭��� ���⭮���"
// ������ ����䥩� ।���஢���� : "�����஭�� ����"
//------------------------------------------------------------------------------

#ifndef __BaseTxRep_Inc__
#define __BaseTxRep_Inc__

const
  // ०�� �ନ஢���� �����䨪��� XML 䠩��
  lc_CrtXMLFileIDMode_Title : word = 0; // ���� ���祭�� �� ��㫠 ����䥩�
  lc_CrtXMLFileIDMode_Payer : word = 1; // ���� ���祭�� �� ����஥� ���������⥫�騪�

  // ०��� �࠭���� ������
  lc_DataStoreMode_NDef : word = 0;  // ०�� �࠭���� �� �����
  lc_DataStoreMode_AFld : word = 1;  // �࠭���� ������ � "������ᠫ쭮� �࠭����"
  lc_DataStoreMode_GXML : word = 2;  // �࠭���� ������ � GAL XML
  lc_DataStoreMode_FT01 : word = 3;  // �࠭���� ������ � FORMAT01

  // ࠧ���� �࠭���� � AllMemo
  lc_AllMemoTip_Note : word = 0;  // �ਬ�砭��
  lc_AllMemoTip_GXML : word = 1;  // ����� � GAL XML
  lc_AllMemoTip_FT01 : word = 2;  // ����� � FORMAT01

  // ������祭�� �ਧ����� ࠧ�����
  lc_TypeOfVis_Null   : String[1] = ' ';  // ��� ������
  lc_TypeOfVis_Vis    : String[1] = '+';  // ���㦠���
  lc_TypeOfVis_NotVis : String[1] = '-';  // �� ���㦠���
  lc_TypeOfVis_ReCalc : String[1] = '?';  // �����뢠���
end; // const

#endif//__BaseTxRep_Inc__
