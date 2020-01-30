//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 7.12 - �����⨪�
// ����� ���� �த��/���㯮�. �६���� ⠡����.
//******************************************************************************

// �६����� ⠡��� ��� ���� �����. ���᮪ �����.
table struct tmpListVal
(
  cVal : Comp,
  Sum  : array [1..40] of Double
  // Sum[1..20]  - �⮣��� �㬬� �� �����
  // Sum[21..40] - ��砫�� �⮣��� �㬬� �� ����� ��� ���.����
)
with index
(
  tmpListVal01 = cVal
);

// �६����� ⠡��� ��� ���� �����. ����� ॣ����樨.
table struct tmpBook
(
  cVal                : Comp         "��뫪� �� ������",
  TypeRec             : Word         "��� ����� �� �६����� ⠡���",
  cBookPrZk           : Comp         "��뫪� �� ������ � ����� �த��/���㯮�",
  cCorrected_BookPrZk : Comp         "��뫪� �� ���४������� ������",
  cIspr_BookPrZk      : Comp         "��뫪� �� ��ࠢ�⥫��� ������",
  wDouble             : Word         "�ਧ��� �㡫����饩 �����",
  wTipUsers           : Comp         "��� �����",
  sTipUsersName       : String [80]  "������������ ⨯� �����",
  cPodr               : Comp         "��뫪� �� ���ࠧ�������",
  sPodrName           : String [80]  "������������ ���ࠧ�������",
  cStroyObject        : Comp         "��뫪� �� ��ꥪ� ��ந⥫��⢠",
  sStroyName          : String [200] "������������ ��ꥪ� ��ந⥫��⢠",
  DesGr               : String       "��㯯� ���ਯ�஢",
  sSortName           : String [250] "��� ���஢��",
  wCorrZk_Dop         : Word         "����祭�� � ������� ����� ����� ���㯮�",
  wNotLink            : Word         "���ਢ易���� ���४������ ������", // ��뫪� �� �᭮���� ��ਮ� �� ���譥� ��ਡ��
  dReg                : Date         "��� ॣ����樨 (����� �� BookPrZk)",
  SubTip              : Word         "���⨯ ����� (����� �� BookPrZk)",
  cKatOrg             : Comp         "��뫪� �� ���ࠧ�������",
  sKatOrgName         : String [80]  "������������ ���ࠧ�������",
  sKodOp              : String       "��� ����樨",
  SF_Dop              : Comp         "��뫪� �� ��",
  KO_Med              : Comp         "��ਡ�� ���।��� �� ��"
)
with index
(
  tmpBook01 = cVal + TypeRec + wTipUsers + cPodr + cStroyObject + DesGr + cKatOrg + sSortName, // ��� ���� ����
  tmpBook02 = cVal + TypeRec + cBookPrZk + wCorrZk_Dop,
  tmpBook03 = cVal + TypeRec + cCorrected_BookPrZk + sSortName,
  tmpBook04 = cVal + wDouble,
  tmpBook05 = cVal + TypeRec + wCorrZk_Dop,
  tmpBook06 = cBookPrZk
);

// �६����� ⠡��� ��� ���� �����. ����� ���
table struct tmpGTDN
(
  wSortName : word,
  sNum      : string,
  sCountry  : string
)
with index
(
  tmpGTDN01 = wSortName,
  tmpGTDN02 = sNum + sCountry,
  tmpGTDN03 = sCountry
)
;

// �६����� ⠡��� ��� ���� �����. ��࠭� ���
table struct tmpGTDC
(
  wSortName : word,
  sCountry  : string,
  sKod      : string
)
with index
(
  tmpGTDC01 = wSortName,
  tmpGTDC02 = sCountry
);

// �६����� ⠡��� ��� ����஢ � ��࠭ ���, �ਣ����� ��� ���� ��� �������⥫��� �஢�ப
table struct tmpGTD_ForPrint
(
  Npp  : Word,
  Name : string
)
with index
(
  tmpGTD_ForPrint01 = Npp
);

// �६����� ⠡��� ��� ���� �����. ��� ����樨
table struct tmpListKodOp
(
  cVal   : Comp,
  bKodOp : Byte,
  Sum    : array [1..4] of Double
)
with index
(
  tmpListKodOp01 = cVal + bKodOp
);

// �६����� ⠡��� ��� ���� �����. ������ �⢥��⢥�����
table struct tmpListPodr
(
  sPodrName : String,
  Sum       : array [1..4] of Double
);

// �६����� ⠡��� ��� ���� �����. �� ���
table struct tmpTNVED
(
  Npp   : Word,
  sCode : String
)
with index
(
  tmpTNVED01 = Npp,
  tmpTNVED02 = sCode
);
