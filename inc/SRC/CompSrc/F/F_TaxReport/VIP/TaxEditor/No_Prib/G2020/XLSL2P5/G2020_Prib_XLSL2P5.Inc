//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - ����� "�����஭��� ���⭮���"
// ������⥪� �㭪権 : "������ �� Excel ����2 �ਫ������ 5"
//------------------------------------------------------------------------------

#ifndef __G2020_Prib_XLSL2P5_Inc__
#define __G2020_Prib_XLSL2P5_Inc__

const
  // �������㥬� �����
  lc_XLSL2P5_BegDataRow        : LongInt =  6;  // ��砫쭠� ��ப� � Excel ����묨
  lc_XLSL2P5_Col_Count         : LongInt = 22;  // ������⢮ ������� � ��⮪� ������

  // �������㥬� ����
  lc_XLSL2P5_TipNP            : LongInt =  1;  // �ਧ��� ���������⥫�騪� (���)
  lc_XLSL2P5_NomDok           : LongInt =  2;  // ����� ���㬥��
  lc_XLSL2P5_ObRasch          : LongInt =  3;  // ����� ��⠢��� (���)
  lc_XLSL2P5_KPPOP            : LongInt =  4;  // ���
  lc_XLSL2P5_ObjazUplNalOP    : LongInt =  5;  // ���������� ��易����� �� 㯫�� ������ �� ���ᮡ������ ���ࠧ�������
  lc_XLSL2P5_NaimOP           : LongInt =  6;  // ������������
  lc_XLSL2P5_NalBazaOrg       : LongInt =  7;  // ��������� ���� � 楫�� �� �࣠����樨 (���. 030)
  lc_XLSL2P5_NalBazaBezLikvOP : LongInt =  8;  // � ⮬ �᫥ ��� ��� �������� � �祭�� ⥪�饣� ���������� ��ਮ�� ���ᮡ������ ���ࠧ������� (���. 031)
  lc_XLSL2P5_DoljaNalBaz      : LongInt =  9;  // ���� ��������� ���� (%) (���. 040)
  lc_XLSL2P5_NalBazaDolja     : LongInt = 10;  // ��������� ����, ��室� �� ���� (���. 050)
  lc_XLSL2P5_NalBazaDoljaPnSt : LongInt = 11;  // � ⮬ �᫥ ��� ���᫥��� ������ �� ���������� �⠢�� (���. 051)
  lc_XLSL2P5_StavNalSubRF     : LongInt = 12;  // �⠢�� ������ � ��� ��ꥪ� �� (%) (���. 060)
  lc_XLSL2P5_ZakUstStavNal    : LongInt = 13;  // ����� ��ꥪ� ��, ����� ��⠭������ ��������� �⠢�� (���. 061)
  lc_XLSL2P5_SumNal           : LongInt = 14;  // �㬬� ������ (���. 070)
  lc_XLSL2P5_NalNachislSubRF  : LongInt = 15;  // ���᫥�� ������ � ��� ��ꥪ� �� (���. 080)
  lc_XLSL2P5_NalViplVneRF     : LongInt = 16;  // �㬬� ������, �믫�祭��� �� �।����� �� � �����뢠���� � 㯫��� ������ (���. 090)
  lc_XLSL2P5_TSUplNachPer     : LongInt = 17;  // �㬬� �࣮���� ᡮ�, 䠪��᪨ 㯫�祭��� � ��� ��. �� � ��砫� ���. ���. (���. 095)
  lc_XLSL2P5_TSUmenAvPred     : LongInt = 18;  // �㬬� �࣮���� ᡮ�, �� ������ �. �����. ���⥦� � ��� ��. �� �� �।��騩 ���. ���. (���. 096)
  lc_XLSL2P5_TSUmenAvOtch     : LongInt = 19;  // �㬬� �࣮���� ᡮ�, �� ������ �. ���. �����. ���⥦� (�����) � ��� ��. �� �� ���. (���.) ���. (���. 097)
  lc_XLSL2P5_SumInvVych       : LongInt = 20;  // �㬬� ������樮����� ���������� ���� (���. 098)
  lc_XLSL2P5_SumNalP          : LongInt = 21;  // �㬬� ������ � ������/�㬬� ������ � 㬥��襭�� (���. 100/110)
  lc_XLSL2P5_MesAvPlat        : LongInt = 22;  // ��������� ����ᮢ� ���⥦� � ����⠫�, ᫥���饬 �� ����� ��ਮ��� (���. 120)
  lc_XLSL2P5_MesAvPlat1KvSled : LongInt = 23;  // ��������� ����ᮢ� ���⥦� �� ���� ����⠫ ᫥���饣� ���������� ��ਮ�� (���. 121)

  // ��� �� ����� ��������
  lc_XLSL2P5_ParentNodePath_v1 : string = '����/���㬥��/�ਡ��/���獠�';
  lc_XLSL2P5_ParentNodePath_v2 : string = '����/���㬥��/�ਡ��';
end; // const

Type TImpData = record
  TipNP            : string;  // �ਧ��� ���������⥫�騪� (���)
  NomDok           : string;  // ����� ���㬥��
  ObRasch          : string;  // ����� ��⠢��� (���)
  KPPOP            : string;  // ���
  ObjazUplNalOP    : string;  // ���������� ��易����� �� 㯫�� ������ �� ���ᮡ������ ���ࠧ�������
  NaimOP           : string;  // ������������
  NalBazaOrg       : double;  // ��������� ���� � 楫�� �� �࣠����樨 (���. 030)
  NalBazaBezLikvOP : double;  // � ⮬ �᫥ ��� ��� �������� � �祭�� ⥪�饣� ���������� ��ਮ�� ���ᮡ������ ���ࠧ������� (���. 031)
  DoljaNalBaz      : double;  // ���� ��������� ���� (%) (���. 040)
  NalBazaDolja     : double;  // ��������� ����, ��室� �� ���� (���. 050)
  NalBazaDoljaPnSt : double;  // � ⮬ �᫥ ��� ���᫥��� ������ �� ���������� �⠢�� (���. 051)
  StavNalSubRF     : double;  // �⠢�� ������ � ��� ��ꥪ� �� (%) (���. 060)
  ZakUstStavNal    : string;  // ����� ��ꥪ� ��, ����� ��⠭������ ��������� �⠢�� (���. 061)
  SumNal           : double;  // �㬬� ������ (���. 070)
  NalNachislSubRF  : double;  // ���᫥�� ������ � ��� ��ꥪ� �� (���. 080)
  NalViplVneRF     : double;  // �㬬� ������, �믫�祭��� �� �।����� �� � �����뢠���� � 㯫��� ������ (���. 090)
  TSUplNachPer     : double;  // �㬬� �࣮���� ᡮ�, 䠪��᪨ 㯫�祭��� � ��� ��. �� � ��砫� ���. ���. (���. 095)
  TSUmenAvPred     : double;  // �㬬� �࣮���� ᡮ�, �� ������ �. �����. ���⥦� � ��� ��. �� �� �।��騩 ���. ���. (���. 096)
  TSUmenAvOtch     : double;  // �㬬� �࣮���� ᡮ�, �� ������ �. ���. �����. ���⥦� (�����) � ��� ��. �� �� ���. (���.) ���. (���. 097)
  SumInvVych       : double;  // �㬬� ������樮����� ���������� ���� (���. 098)
  SumNalP          : double;  // �㬬� ������ � ������/�㬬� ������ � 㬥��襭�� (���. 100/110)
  MesAvPlat        : double;  // ��������� ����ᮢ� ���⥦� � ����⠫�, ᫥���饬 �� ����� ��ਮ��� (���. 120)
  MesAvPlat1KvSled : double;  // ��������� ����ᮢ� ���⥦� �� ���� ����⠫ ᫥���饣� ���������� ��ਮ�� (���. 121)
end; // Type
#endif//__G2020_Prib_XLSL2P5_Inc__
