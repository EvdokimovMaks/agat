//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - ����� "�����஭��� ���⭮���"
// ������⥪� �㭪権 : "������ �� Excel ��⠫��� ��������� �⠢��"
//------------------------------------------------------------------------------

#ifndef __XLSTaxRatesTS_Inc__
#define __XLSTaxRatesTS_Inc__

const
  // �������㥬� �����
  lc_XLSTaxRatesTS_BegDataRow : LongInt =  5;  // ��砫쭠� ��ப� � Excel ����묨
  lc_XLSTaxRatesTS_Col_Count  : LongInt = 10;  // ������⢮ ������� � ��⮪� ������

  // �������㥬� ����
  lc_XLSTaxRatesTS_SubRF     : LongInt = 1;  // ��ꥪ� �� (���)
  lc_XLSTaxRatesTS_FromDate  : LongInt = 2;  // ��� ��砫� ����⢨�
  lc_XLSTaxRatesTS_KodVidTS  : LongInt = 3;  // ��� ���� ��
  lc_XLSTaxRatesTS_PowerFrom : LongInt = 4;  // ��魮��� (��)
  lc_XLSTaxRatesTS_PowerTo   : LongInt = 5;  // ��魮��� (��)
  lc_XLSTaxRatesTS_NalSt     : LongInt = 6;  // ��������� �⠢��
  lc_XLSTaxRatesTS_AgeFrom   : LongInt = 7;  // ������ �� (��)
  lc_XLSTaxRatesTS_AgeTo     : LongInt = 8;  // ������ �� (��)
  lc_XLSTaxRatesTS_OKEI      : LongInt = 9;  // ��� ����
end; // const

Type TImpData = record
  SubRF     : String;  // ��ꥪ� �� (���)
  FromDate  : String;  // ��� ��砫� ����⢨�
  KodVidTS  : String;  // ��� ���� ��
  PowerFrom : TSumma;  // ��魮��� (��)
  PowerTo   : TSumma;  // ��魮��� (��)
  NalSt     : TSumma;  // ��������� �⠢��
  AgeFrom   : Word  ;  // ������ �� (��)
  AgeTo     : Word  ;  // ������ �� (��)
  OKEI      : Word  ;  // ��� ����
end; // Type

#endif//__XLSTaxRatesTS_Inc__