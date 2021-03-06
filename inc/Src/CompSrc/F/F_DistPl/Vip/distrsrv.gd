#ifndef _DISTRSRV_GD
#define _DISTRSRV_GD

table struct  t_chek
(
  cUsl     : comp,
  SumFact  : double,
  dRSumFact: double,
  dSumma   : double,
  dCurSumma: double,
  dKoef    : double,
  dDelta   : double,
  cSopr    : comp,
  Cena     : double
)
with index
(
  t_chek00 = cSopr + cUsl,
  t_chek01 = cSopr + dDelta,
  t_chek02 = cUsl
);

table struct  t_SpSopr
(
  cSpSopr : comp,     // ��뫪� �� SpSopr
  cSopr   : comp,     //��뫪� �� ���������
  Npp     : tNpp,     // ����� �� ���浪�
  PrMCUsl : word,     // �ਧ��� ( �� / ��㣨 )
  KolFact : double,   // ���-�� �ᥣ�
  Price   : double,   // �⮨�����
  Summa1  : double,   //
  Summa2  : double,
  Summa3  : double,
  Summa4  : double,
  Summa5  : double,
  SumNDS  : double,
  SumVal  : double
)
with index
(
  t_SpSopr00 = cSpSopr,
  t_SpSopr01 = Summa3,
  t_SpSopr02 = cSopr + Summa3,
  t_SpSopr03 = cSopr + Npp + Summa3
);

table struct  t_KatS
(
  cKatSopr :comp,      // ��뫪� �� KatSopr
  Summa1   : TSumma,   // �㬬� � ����� ��  KatSopr
  Summa2   : TSumma,
  Summa3   : TSumma,
  Summa4   : TSumma,
  Summa5   : TSumma,
  cMainKS  : comp,     // ��뫪� �� ���४����騩 ���㬥��
  wType    : word,     // 1 - ���४�஢�筠� ��������� ���筨� 0 - ��⠫��
  pr       : word,     //0 - ����. �㬬� ���������, 1 - �����. �㬬� ����.
  dat      : date,     // ��� ���������
  prOpr    : word,     //0 - ����. �㬬� ���������, 1 - �����. �㬬� ����, 2 ��� ����
  datOpr   : date,     // ��� ���室������
  DistrNDE : TSumma,   // ��।������� �㬬� � ���
  DistrVal : TSumma    // ��।������� �㬬� � �����
)
with index
(
  t_KatS00 = cKatSopr,
  t_KatS01 = pr + dat + cKatSopr,
  t_KatS02 = prOpr + datOpr + cKatSopr,
  t_KatS03 = cMainKS + pr + dat + cKatSopr
);

#end // _DISTRSRV_GD
