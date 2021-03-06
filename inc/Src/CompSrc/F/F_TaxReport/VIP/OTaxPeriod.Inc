//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - ����� "�����஭��� ���⭮���"
// ������ ��ꥪ� : "����� � �������묨 ��ਮ����"
//------------------------------------------------------------------------------

#ifndef __OTaxPeriod_Inc__
#define __OTaxPeriod_Inc__

const
  // ⨯� ��������� ��ਮ���
  lc_TaxRepTPer_Not         : word = 0;  // �� ��।����
  lc_TaxRepTPer_Day         : word = 1;  // ����
  lc_TaxRepTPer_Week        : word = 2;  // ������
  lc_TaxRepTPer_Month       : word = 3;  // �����
  lc_TaxRepTPer_Quater      : word = 4;  // ����⠫
  lc_TaxRepTPer_HalfYear    : word = 5;  // ���㣮���
  lc_TaxRepTPer_Year        : word = 6;  // ���
  lc_TaxRepTPer_9Month      : word = 7;  // 9 ����楢

  // ���� ��������� ��ਮ���
  lc_TaxRepTPerBit_Day      : word = word(2**(lc_TaxRepTPer_Day     -1) );  // ����
  lc_TaxRepTPerBit_Week     : word = word(2**(lc_TaxRepTPer_Week    -1) );  // ������
  lc_TaxRepTPerBit_Month    : word = word(2**(lc_TaxRepTPer_Month   -1) );  // �����
  lc_TaxRepTPerBit_Quater   : word = word(2**(lc_TaxRepTPer_Quater  -1) );  // ����⠫
  lc_TaxRepTPerBit_HalfYear : word = word(2**(lc_TaxRepTPer_HalfYear-1) );  // ���㣮���
  lc_TaxRepTPerBit_Year     : word = word(2**(lc_TaxRepTPer_Year    -1) );  // ���
  lc_TaxRepTPerBit_9Month   : word = word(2**(lc_TaxRepTPer_9Month  -1) );  // 9 ����楢
end; // const

#endif//__OTaxPeriod_Inc__
