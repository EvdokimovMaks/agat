//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - ��壠���᪨� ������
// ��ꥪ� �� ��ᬮ��� ᯨ᪠ ���㬥�⮢
//******************************************************************************

table struct mt_DocInfo
(
  cDocInfo       : comp     // DocInfo.NRec
               
  // ���⢥ত��� ��।��� ��ꥪ� � �७��
, dArendStart    : date     // ��� ��砫� �७��
, dArendEnd      : date     // ��� ����砭�� �७��
, cArendator     : comp     // �࣠������ �७����
, cDogovor       : comp     // �������
, cMove          : comp     // ������
, inArend        : TSumma   // ��।��� � �७��
, cEd            : comp     // ������� ����७��

  // ������஢�� ���ଠ��
, sCadNum        : TName    // ������஢� �����
, sCadNumAdd     : TName    // ������஢� ����� ����饭��
, sUslNum        : TName    // �᫮��� �����
, sTerrType      : TName    // ��⥣��� ������
, doCadStoim     : TSumma   // ������஢�� �⮨�����
, TaxRate        : TSumma   // ��������� �⠢��
, TaxpayerShare  : TSumma   // ���� ���������⥫�騪�
, sDoljaNPChsl   : s10      // ���� ���������⥫�騪� (�᫨⥫�)
, sDoljaNPZnam   : s10      // ���� ���������⥫�騪� (�������⥫�)
, sDoljaPravSob  : TName    // ���� � �ࠢ� ��饩 ᮡ�⢥�����
, sDolja_6_378_2 : TName    // ���� ������஢�� �⮨���� ������ � ᮮ⢥��⢨� � �. 6 ��. 378.2 �� ��
, IsNotObjTax    : boolean  // �� ���� ��ꥪ⮬ ��������������� ��� �����쭮�� ������

  // ��� � ��������� �࣠��
, wFNSOrg        : word     // ����� ��� � ��������� �࣠��
, sFNSOKTMO      : TName    // ����� ���������� �࣠�� ���
, sFNSCode       : TName    // ��� ���������� �࣠�� ���
, IsSmenaNM      : boolean  // ������� ���� � ��砫� �����

  // ����� �� ������������
, IsImNotTax     : boolean  // �� �������� ���������������
, wImMovable     : word     // ��� �����⢠ (��������/����������)
, wImTaxBase     : word     // ��������� ���� ����������� �����⢠ (�।���������/������஢�� �⮨�����)
, ImNotTaxSum    : TSumma   // �� ���������� ������஢�� �⮨�����
, wImVidCode     : word     // ��� ���� �����⢠ (��� �/� �।��������� �⮨�����)
, cImKatRate     : comp     // ��뫪� �� "��⠫�� �⠢�� � �죮�"
, wImFeatures    : word     // �ᮡ������ ���������������

  // ����� �� �����⢮ - ����
, sElPlanStr_Tip  : TName   // ��� ����� �����஢�筮� ��������
, sElPlanStr_Naim : TName   // ������������ ����� �����஢�筮� ��������
, sElDrUlSet_Tip  : TName   // ��� ����� 㫨筮-��஦��� ��
, sElDrUlSet_Naim : TName   // ������������ ����� 㫨筮-��஦��� ��
, sPomZdanie_Tip  : TName   // ��� ����饭�� � �।���� ������, ᮮ�㦥��� / ��設�-����
, sPomZdanie_Nomer: TName   // ����� ����饭�� � �।���� ������, ᮮ�㦥��� / ��設�-����
, sPomKvart_Tip   : TName   // ��� ����饭�� � �।���� �������
, sPomKvart_Nomer : TName   // ����� ����饭�� � �।���� �������

  // ����� �� �����⢮ - ������/ᮮ�㦥���
, sZdan_Tip    : TName
, sZdan_Naim   : TName
, sZdan_Tip_1  : TName
, sZdan_Naim_1 : TName
, sZdan_Tip_2  : TName
, sZdan_Naim_2 : TName
, sZdan_Tip_3  : TName
, sZdan_Naim_3 : TName
, sZdan_Tip_4  : TName
, sZdan_Naim_4 : TName

)
with index
(
  mt_DocInfo01 = cDocInfo
, mt_DocInfo02 = inArend + cEd
, mt_DocInfo03 = dArendStart + dArendEnd + cArendator
);
