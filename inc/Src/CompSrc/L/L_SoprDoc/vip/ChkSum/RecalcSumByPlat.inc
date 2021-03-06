//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.1 - �����⨪�
// ������ ������ �㬬 ��� � ���������/��⮢ �� ���ᠬ �� ���� ���⥦�
//******************************************************************************

/*Const
  lnPlatDoc   = 40;
  lnDateOplat = 15;
  lnSummaVal  = 19;
  lnValSymbol = 7;
  lnSummaNDE  = 19;
  lnCurseVal  = 11;
end;
*/
Table STRUCT TmpProtRSBP
(
  NRec      : tNRec
, Npp       : tNpp
, PlatDoc   : string              "���⥦�� ���㬥�� ��� ������������"
, DateOplat : string[15] "��� ������"
, SummaVal  : string[19]  "�㬬� � �����"
, ValSymbol : string[7] "������"
, SummaNDE  : string[19]  "�㬬� � ���, ��ப�"
, doSummaNDE: TSumma              "�㬬� � ���"
, CurseVal  : string[11]  "���� ������"
, wItog     : word                "1 - ����, 2 - �⮣"
)
with index
(
  TmpProtRSBP01 = NRec + wItog
, TmpProtRSBP02 = Npp
);


Table STRUCT TmpSpSoprRSBP
(
  NRec     : tNRec
, SumDolg  : tSumma
, Summa    : tSumma
)
with index
(
  TmpSpSoprRSBP01 = NRec
);

