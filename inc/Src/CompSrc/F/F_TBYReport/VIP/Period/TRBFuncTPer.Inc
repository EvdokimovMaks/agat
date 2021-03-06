//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "�����஭��� ���⭮��� ��"
// ������⥪� �㭪権 : "���� ��ਮ���"
//------------------------------------------------------------------------------

#ifndef __TRBFuncTPer_Inc__
#define __TRBFuncTPer_Inc__

const
  // ⨯� ��������� ��ਮ���
  lc_TRBRepTPer_Not         : word = 0;  // �� ��।����
  lc_TRBRepTPer_Day         : word = 1;  // ����
  lc_TRBRepTPer_Week        : word = 2;  // ������
  lc_TRBRepTPer_Month       : word = 3;  // �����
  lc_TRBRepTPer_Quater      : word = 4;  // ����⠫
  lc_TRBRepTPer_HalfYear    : word = 5;  // ���㣮���
  lc_TRBRepTPer_Year        : word = 6;  // ���
  lc_TRBRepTPer_9Month      : word = 7;  // 9 ����楢

  // ���� ��������� ��ਮ���
  lc_TRBRepTPerBit_Day      : word = word(2**(lc_TRBRepTPer_Day     -1) );  // ����
  lc_TRBRepTPerBit_Week     : word = word(2**(lc_TRBRepTPer_Week    -1) );  // ������
  lc_TRBRepTPerBit_Month    : word = word(2**(lc_TRBRepTPer_Month   -1) );  // �����
  lc_TRBRepTPerBit_Quater   : word = word(2**(lc_TRBRepTPer_Quater  -1) );  // ����⠫
  lc_TRBRepTPerBit_HalfYear : word = word(2**(lc_TRBRepTPer_HalfYear-1) );  // ���㣮���
  lc_TRBRepTPerBit_Year     : word = word(2**(lc_TRBRepTPer_Year    -1) );  // ���
  lc_TRBRepTPerBit_9Month   : word = word(2**(lc_TRBRepTPer_9Month  -1) );  // 9 ����楢
end; //const

#endif//__TRBFuncTPer_Inc__
