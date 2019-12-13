//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 7.12 - �����⨪�
// ����⭠� ॣ������ ����ᮢ�� ���⥦�� (⠡���� �����)
//******************************************************************************
#ifNdef __AVMEMTBL_VPP
#define __AVMEMTBL_VPP

// ⠡���� ����� ��� �࠭���� ����ᮢ�� ���㬥�⮢
Table struct sPlatTips
(
  Owner: comp,
  Name  : string,
  TipDoc: word,
  nSel  : longint
)
with index
(
  sPlatTips00 = TipDoc,
  sPlatTips01 = Owner
);

Table struct sPlatDocs
(
  NRec    : comp,
  cPlat   : comp,  //��뫪� �� ���㬥��
  TipDoc  : word,  //⨯ ���㬥�� ��⥬��
  TipDocUs: word,  //⨯ ���㬥�� ���짮��⥫�
  DatOb   : Date,
  cPlPor  : comp,
  NoDoc   : string,
  NameTXO : string,
  Summa   : double,
  SumValut: double,
  Valuta  : string,
  SfNum   : string,
  cOrg    : comp,
  cOrg2   : comp,
  cOwner  : comp,
  isLeaf  : word, //boolean,
  regStat : string,
  NoSf    : string,
  cSf     : comp,
  nSel    : longint
)
with index
(
  sPlatDocs00 = NRec  ( Surrogate), //(Unique, Surrogate),
  sPlatDocs01 = cPlat,
  sPlatDocs02 = TipDoc + cOwner + DatOb,
  sPlatDocs03 = cOwner + DatOb,
  sPlatDocs04 = isLeaf,
  sPlatDocs05 = cOwner + isLeaf + TipDoc + cPlat,
  sPlatDocs06 = cPlPor
);

// ��� �ନ஢���� ᢮���� ��
table struct sSvSchFact
(
  NRec     : Comp,
  dSF      : Date    "��� ᢮����� ��",
  dSFBeg   : Date    "��砫쭠� ���", // � ���ன ���⥦� �������� � ����� ᢮��� ��
  dSFEnd   : Date    "����筠� ���",  // �� ���ன ���⥦� �������� � ����� ᢮��� ��
  TypeDoc  : Word    "��� ���⥦���� ���㬥��",
  cOrg     : Comp    "����ࠣ���",
  Direct   : Word    "���ࠢ�����",
  cStepDoc : Comp    "���㬥��-�᭮�����, �⠯",
  cDogovor : Comp    "�������",
  KolSH    : Integer "������⢮ ᮯ�宧�� � ᢮���� ��",
  cSF      : Comp    "��뫪� �� ᢮��� �� (SchFact)"
)
with index
(
  sSvSchFact00 = NRec (Unique, Surrogate),
  sSvSchFact01 = TypeDoc + cOrg + cStepDoc + cDogovor,
  sSvSchFact02 = TypeDoc + cOrg + cDogovor
);

table struct sLink_SF_SH
(
  NRec       : Comp,
  cSvSchFact : Comp  "������ ��",
  cSoprHoz   : Comp  "����宧, ����� �室�� � ᢮��� ��",
  cPlPor     : Comp  "���⥦ ᮯ�宧�" // �㦥�, �⮡� �������� ��譨� GetFirst'�� �� ���������� ����� ᢮���� �� � ��ॢ�
)
with index
(
  sLink_SF_SH00 = NRec (Unique, Surrogate),
  sLink_SF_SH01 = cSvSchFact,
  sLink_SF_SH02 = cSoprHoz
);

#end
