//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - ����� "�����஭��� ���⭮���"
// ������⥪� �㭪権 : "������ �� Excel ����2 �ਫ������ 5"
//------------------------------------------------------------------------------

#ifndef __G2017_Prib_XLSL2P5_Inc__
#define __G2017_Prib_XLSL2P5_Inc__

const
  // �������㥬� �����
  lc_XLSL2P5_BegDataRow        : LongInt =  6;  // ��砫쭠� ��ப� � Excel ����묨
  lc_XLSL2P5_Col_Count         : LongInt = 20;  // ������⢮ ������� � ��⮪� ������

  // �������㥬� ����
  lc_XLSL2P5_TipNP            : LongInt =  1;  // �ਧ��� ���������⥫�騪� (���)
  lc_XLSL2P5_ObRasch          : LongInt =  2;  // ����� ��⠢��� (���)
  lc_XLSL2P5_KPPOP            : LongInt =  3;  // ���
  lc_XLSL2P5_ObjazUplNalOP    : LongInt =  4;  // ���������� ��易����� �� 㯫�� ������ �� ���ᮡ������ ���ࠧ�������
  lc_XLSL2P5_NaimOP           : LongInt =  5;  // ������������
  lc_XLSL2P5_NalBazaOrg       : LongInt =  6;  // ��������� ���� � 楫�� �� �࣠����樨 (���. 030)
  lc_XLSL2P5_NalBazaBezLikvOP : LongInt =  7;  // � ⮬ �᫥ ��� ��� �������� � �祭�� ⥪�饣� ���������� ��ਮ�� ���ᮡ������ ���ࠧ������� (���. 031)
  lc_XLSL2P5_DoljaNalBaz      : LongInt =  8;  // ���� ��������� ���� (%) (���. 040)
  lc_XLSL2P5_NalBazaDolja     : LongInt =  9;  // ��������� ����, ��室� �� ���� (���. 050)
  lc_XLSL2P5_NalBazaDoljaPnSt : LongInt = 10;  // � ⮬ �᫥ ��� ���᫥��� ������ �� ���������� �⠢�� (���. 051)
  lc_XLSL2P5_StavNalSubRF     : LongInt = 11;  // �⠢�� ������ � ��� ��ꥪ� �� (%) (���. 060)
  lc_XLSL2P5_SumNal           : LongInt = 12;  // �㬬� ������ (���. 070)
  lc_XLSL2P5_NalNachislSubRF  : LongInt = 13;  // ���᫥�� ������ � ��� ��ꥪ� �� (���. 080)
  lc_XLSL2P5_NalViplVneRF     : LongInt = 14;  // �㬬� ������, �믫�祭��� �� �।����� �� � �����뢠���� � 㯫��� ������ (���. 090)
  lc_XLSL2P5_TSUplNachPer     : LongInt = 15;  // �㬬� �࣮���� ᡮ�, 䠪��᪨ 㯫�祭��� � ��� ��. �� � ��砫� ���. ���. (���. 095)
  lc_XLSL2P5_TSUmenAvPred     : LongInt = 16;  // �㬬� �࣮���� ᡮ�, �� ������ �. �����. ���⥦� � ��� ��. �� �� �।��騩 ���. ���. (���. 096)
  lc_XLSL2P5_TSUmenAvOtch     : LongInt = 17;  // �㬬� �࣮���� ᡮ�, �� ������ �. ���. �����. ���⥦� (�����) � ��� ��. �� �� ���. (���.) ���. (���. 097)
  lc_XLSL2P5_SumNalP          : LongInt = 18;  // �㬬� ������ � ������/�㬬� ������ � 㬥��襭�� (���. 100/110)
  lc_XLSL2P5_MesAvPlat        : LongInt = 19;  // ��������� ����ᮢ� ���⥦� � ����⠫�, ᫥���饬 �� ����� ��ਮ��� (���. 120)
  lc_XLSL2P5_MesAvPlat1KvSled : LongInt = 20;  // ��������� ����ᮢ� ���⥦� �� ���� ����⠫ ᫥���饣� ���������� ��ਮ�� (���. 121)

  // ��� �� ����� ��������
  lc_XLSL2P5_ParentNodePath_v1 : string = '����/���㬥��/�ਡ��/���獠�';
  lc_XLSL2P5_ParentNodePath_v2 : string = '����/���㬥��/�ਡ��';
end; // const

Type TImpData = record
  TipNP            : string;  // �ਧ��� ���������⥫�騪� (���)
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
  SumNal           : double;  // �㬬� ������ (���. 070)
  NalNachislSubRF  : double;  // ���᫥�� ������ � ��� ��ꥪ� �� (���. 080)
  NalViplVneRF     : double;  // �㬬� ������, �믫�祭��� �� �।����� �� � �����뢠���� � 㯫��� ������ (���. 090)
  TSUplNachPer     : double;  // �㬬� �࣮���� ᡮ�, 䠪��᪨ 㯫�祭��� � ��� ��. �� � ��砫� ���. ���. (���. 095)
  TSUmenAvPred     : double;  // �㬬� �࣮���� ᡮ�, �� ������ �. �����. ���⥦� � ��� ��. �� �� �।��騩 ���. ���. (���. 096)
  TSUmenAvOtch     : double;  // �㬬� �࣮���� ᡮ�, �� ������ �. ���. �����. ���⥦� (�����) � ��� ��. �� �� ���. (���.) ���. (���. 097)
  SumNalP          : double;  // �㬬� ������ � ������/�㬬� ������ � 㬥��襭�� (���. 100/110)
  MesAvPlat        : double;  // ��������� ����ᮢ� ���⥦� � ����⠫�, ᫥���饬 �� ����� ��ਮ��� (���. 120)
  MesAvPlat1KvSled : double;  // ��������� ����ᮢ� ���⥦� �� ���� ����⠫ ᫥���饣� ���������� ��ਮ�� (���. 121)
end; // Type
#endif//__G2017_Prib_XLSL2P5_Inc__
