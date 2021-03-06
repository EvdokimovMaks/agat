//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "�����஭��� ���⭮��� ���"
// ������⥪� �㭪権 : "���� ��ਮ���"
//------------------------------------------------------------------------------

#ifndef __gzrFuncTPer_Inc__
#define __gzrFuncTPer_Inc__

const
  // ⨯� ��ਮ���
  lc_gzrRepTPer_Not         : word = 0;  // �� ��।����
  lc_gzrRepTPer_Day         : word = 1;  // ����
  lc_gzrRepTPer_Week        : word = 2;  // ������
  lc_gzrRepTPer_Month       : word = 3;  // �����
  lc_gzrRepTPer_Quater      : word = 4;  // ����⠫
  lc_gzrRepTPer_HalfYear    : word = 5;  // ���㣮���
  lc_gzrRepTPer_Year        : word = 6;  // ���
  lc_gzrRepTPer_9Month      : word = 7;  // 9 ����楢

  // ���� ��ਮ���
  lc_gzrRepTPerBit_Day      : word = word(2**(lc_gzrRepTPer_Day     -1) );  // ����
  lc_gzrRepTPerBit_Week     : word = word(2**(lc_gzrRepTPer_Week    -1) );  // ������
  lc_gzrRepTPerBit_Month    : word = word(2**(lc_gzrRepTPer_Month   -1) );  // �����
  lc_gzrRepTPerBit_Quater   : word = word(2**(lc_gzrRepTPer_Quater  -1) );  // ����⠫
  lc_gzrRepTPerBit_HalfYear : word = word(2**(lc_gzrRepTPer_HalfYear-1) );  // ���㣮���
  lc_gzrRepTPerBit_Year     : word = word(2**(lc_gzrRepTPer_Year    -1) );  // ���
  lc_gzrRepTPerBit_9Month   : word = word(2**(lc_gzrRepTPer_9Month  -1) );  // 9 ����楢
end; //const

#endif//__gzrFuncTPer_Inc__
