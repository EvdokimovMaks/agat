//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.1 - �����⨪�
// ���㬥���, ���⠢�塞� � ��㧮�. ������� � �����
//******************************************************************************

#component "L_SoprBase"

// ������������ ���㬥�⮢
Table Struct TmpDocOfGds
(
  Npp         : word
, wCode       : word   "��� ⠡����"
, NameDoc     : string "������������ ���㬥��"
)
with index
(
  TmpDocOfGds01 = Npp
);

//*****************************************************************************
// ���祭�� ���㬥�⮢
Table Struct TmpDocOfGdsVal
(
  Npp         : word
, cSpSopr     : comp
, cMCUsl      : comp
, cParty      : comp
, Value       : string "���祭�� ��ਡ��"
)
with index
(
  TmpDocOfGds01 = cSpSopr + Npp
, TmpDocOfGds02 = Npp + cMCUsl
, TmpDocOfGds03 = Npp + cParty
);
