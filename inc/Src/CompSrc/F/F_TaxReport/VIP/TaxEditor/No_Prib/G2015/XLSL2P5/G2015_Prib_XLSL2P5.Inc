//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - ����� "�����஭��� ���⭮���"
// ������⥪� �㭪権 : "������ �� Excel ����2 �ਫ������ 5"
//------------------------------------------------------------------------------

#ifndef __G2015_Prib_XLSL2P5_Inc__
#define __G2015_Prib_XLSL2P5_Inc__

const
  // �������㥬� �����
  lc_XLSL2P5_BegDataRow        : LongInt =  6;  // ��砫쭠� ��ப� � Excel ����묨
  lc_XLSL2P5_Col_Count         : LongInt = 16;  // ������⢮ ������� � ��⮪� ������

  // �������㥬� ����
  lc_XLSL2P5_TaxPriz           : LongInt =  1;  // �ਧ��� ���������⥫�騪� (���)
  lc_XLSL2P5_RaschSost         : LongInt =  2;  // ����� ��⠢��� (���)
  lc_XLSL2P5_KPP               : LongInt =  3;  // ���
  lc_XLSL2P5_VozlObiaz         : LongInt =  4;  // ���������� ��易����� �� 㯫�� ������ �� ���ᮡ������ ���ࠧ�������
  lc_XLSL2P5_PodrName          : LongInt =  5;  // ������������
  lc_XLSL2P5_TaxBaseAll        : LongInt =  6;  // ��������� ���� � 楫�� �� �࣠����樨 (���.030)
  lc_XLSL2P5_TaxBaseInc        : LongInt =  7;  // � ⮬ �᫥ ��� ��� �������� � �祭�� ⥪�饣� ���������� ��ਮ�� ���ᮡ������ ���ࠧ������� (���.031)
  lc_XLSL2P5_DoliaBase         : LongInt =  8;  // ���� ��������� ���� (%) (���.040)
  lc_XLSL2P5_TaxBaseByDolia    : LongInt =  9;  // ��������� ����, ��室� �� ���� (���.050)
  lc_XLSL2P5_TaxRate           : LongInt = 10;  // �⠢�� ������ � ��� ��ꥪ� �� (%) (���.060)
  lc_XLSL2P5_TaxSumAll         : LongInt = 11;  // �㬬� ������ (���.070)
  lc_XLSL2P5_TaxSumBud         : LongInt = 12;  // ���᫥�� ������ � ��� ��ꥪ� �� (���.080)
  lc_XLSL2P5_TaxSumOut         : LongInt = 13;  // �㬬� ������, �믫�祭��� �� �।����� �� � �����뢠���� � 㯫��� ������ (���.090)
  lc_XLSL2P5_TaxSumAdd         : LongInt = 14;  // �㬬� ������ � ������/�㬬� ������ � 㬥��襭�� (���.100/110)
  lc_XLSL2P5_AvnSumNextQuarter : LongInt = 15;  // ��������� ����ᮢ� ���⥦� � ����⠫�, ᫥���饬 �� ����� ��ਮ��� (���.120)
  lc_XLSL2P5_AvnSumNextPeriod  : LongInt = 16;  // ��������� ����ᮢ� ���⥦� �� ���� ����⠫ ᫥���饣� ���������� ��ਮ�� (���.121)

  // ��� �� ����� ��������
  lc_XLSL2P5_ParentNodePath_v1 : string = '����/���㬥��/�ਡ��/���獠�';
  lc_XLSL2P5_ParentNodePath_v2 : string = '����/���㬥��/�ਡ��';
end; // const

Type TImpData = record
  TaxPriz           : string;  // �ਧ��� ���������⥫�騪� (���)
  RaschSost         : string;  // ����� ��⠢��� (���)
  KPP               : string;  // ���
  VozlObiaz         : string;  // ���������� ��易����� �� 㯫�� ������ �� ���ᮡ������ ���ࠧ�������
  PodrName          : string;  // ������������
  TaxBaseAll        : double;  // ��������� ���� � 楫�� �� �࣠����樨 (���.030)
  TaxBaseInc        : double;  // � ⮬ �᫥ ��� ��� �������� � �祭�� ⥪�饣� ���������� ��ਮ�� ���ᮡ������ ���ࠧ������� (���.031)
  DoliaBase         : double;  // ���� ��������� ���� (%) (���.040)
  TaxBaseByDolia    : double;  // ��������� ����, ��室� �� ���� (���.050)
  TaxRate           : double;  // �⠢�� ������ � ��� ��ꥪ� �� (%) (���.060)
  TaxSumAll         : double;  // �㬬� ������ (���.070)
  TaxSumBud         : double;  // ���᫥�� ������ � ��� ��ꥪ� �� (���.080)
  TaxSumOut         : double;  // �㬬� ������, �믫�祭��� �� �।����� �� � �����뢠���� � 㯫��� ������ (���.090)
  TaxSumAdd         : double;  // �㬬� ������ � ������/�㬬� ������ � 㬥��襭�� (���.100/110)
  AvnSumNextQuarter : double;  // ��������� ����ᮢ� ���⥦� � ����⠫�, ᫥���饬 �� ����� ��ਮ��� (���.120)
  AvnSumNextPeriod  : double;  // ��������� ����ᮢ� ���⥦� �� ���� ����⠫ ᫥���饣� ���������� ��ਮ�� (���.121)
end; // Type
#endif//__G2015_Prib_XLSL2P5_Inc__
