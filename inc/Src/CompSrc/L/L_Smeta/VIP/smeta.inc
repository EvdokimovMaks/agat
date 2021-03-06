//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.1 - ���⭠� ���㬥����
// ����⠭�� ������ ���⮢
//------------------------------------------------------------------------------

Const
  // ������ ������ ᬥ�/��⮢ �믮������� ࠡ�� (���祭�� ��ࠬ��� pwMode ����䥩� PacketImport)
  // �����㦨� ᫥���騥 �।��������� � ����饬�� ���� �� ������ ���祭�� ����⠭�:
  // 1. ����⠭�� � ���祭�ﬨ �� 9 �����⥫쭮 ������� ������ ᬥ�;
  // 2. ����⠭�� �� � ���祭�ﬨ �� 10 � ��� ������� ������ ��⮢.
  // ���������� �ਤ�ন������ �⮣� ᮣ��襭�� �� ���������� ����� ����⠭�.
  cgImportModeSmetaSt        = 0;
  cgImportModeSmetaGrand     = 1;
  cgImportModeAktsFirstConst = 10; // ���뢠� ����砭�� ��� �訫 ������ ⠪�� ����⠭�� � ���⥯����
                                   // �ᯮ�짮���� �� � ���� �஢�ન ������ ��⮢ ��� ᬥ� ����� �᫠ 10
  cgImportModeAktSt          = 10;
  cgImportModeAktGrand       = 11;
  cgImportModeAktArps110     = 12;

  // ������ ��७�� 業� �� �����쭮� ᬥ�� � ��� �믮������� ࠡ��
  cgSmetaPriceToBaseCost        = 0; // ���� �� ᬥ�� ��७����� � ������� 業� ���
  cgSmetaPriceToCurrCost        = 1; // ���� �� ᬥ�� ��७����� � ⥪���� 業� ���
  cgSmetaPriceToBaseAndCurrCost = 2; // ���� �� ᬥ�� ��७����� � ������� � ⥪���� 業� ���.

  coTechPart = 27999;

// ��ଠ� ᬥ�� (SmetaStroy.Priznak)
  cgPrizn_ARPS  = 0; // ���ᨩ᪠� "����"
  cgPrizn_ST    = 2; // ��ࠨ�᪠� "��-����"
  cgPrizn_Grand = 4; // ���ᨩ᪠� "�࠭�-����"

// ���� ����権 ����� ࠡ�� (SmetaSpec.TipPos)
  cgSmPos_Part = 10; // ����� ࠧ���
  cgSmPos_Job  = 20; // �����
  cgSmPos_Res  = 30; // ������
  cgSmPos_TD   = 40; // ��孨�᪮� �襭��

  // ��� ����� � �����쭮� ᬥ� (SmetaSpec.TipRes)
  cgSmRes_ZP  =   0; // ��௫�
  cgSmRes_EM  =   1; // �⮨����� ��ᯫ��樨 ��設
  cgSmRes_MC  =   2; // ���ਠ�
  cgSmRes_Dav =   3; // �������᪨� ���ਠ�
  cgSmRes_Ob  = 100; // ����㤮�����
  cgSmRes_SR  = 101; // ����� ࠧ��� (� ��ꥪ⭮� ��� ᢮���� ᬥ�)
  cgSmRes_LS  = 102; // �����쭠� ᬥ� (� ��ꥪ⭮� ᬥ�)
  cgSmRes_DZ  = 103; // �������⥫�� ������ (� ᢮���� ᬥ�)

  // ��� ����� �� �롮� �� ᬥ� (NormResource.ResType, PickSmeta.TipRes, SpDocSmeta.TipRes, PlanJob.TipRes)
  cgRes_None      = 0; // ��稥 ������
  cgRes_OZP       = 1; // �᭮���� ��
  cgRes_ZPM       = 2; // �� ��設��⮢
  cgRes_EM        = 3; // ��ᯫ���� ��設 � ��堭�����
  cgRes_MC        = 4; // ���ਠ��
  cgRes_SP        = 5; // ���⭠� �ਡ��
  cgRes_NR        = 6; // �������� ��室�
  cgRes_Koef      = 7; // �����樥�� � ���
  cgRes_UslVR     = 8; // ��㣠 � ���� ࠡ��
  cgRes_Dav       = 9; // �������᪨� ���ਠ�

  // ��� ����� � ⠡��� Koeff4Act (��।������ ���祭��� ���� Koeff4Act.wKoeff)
  cgRecK4A_Koeff = 0; // �����樥�� � ���            (Koeff4Act.cDoc->KatSopr.NRec, Koeff4Act.cPosition->SmetaStroy.NRec)
  cgRecK4A_Limit = 1; // �����஢����� ����� � ��� (Koeff4Act.cDoc->KatSopr.NRec, Koeff4Act.cPosition->SmetaStroy.NRec)

  // ��� �����樥�� ᬥ�� (SmetaKoeff.TipKoeff)
  cgTipKoef_Infl  =     0; // �����樥�� ��� ����樨
  cgTipKoef_Zima  =     1; // �����樥�� ������� 㤮஦����
  cgTipKoef_NR    =     2; // ��ଠ⨢ ��������� ��室��
  cgTipKoef_SP    =     3; // ��ଠ⨢ ᬥ⭮� �ਡ뫨
  cgTipKoef_Trud  =     4; // �����樥�� ��� �᫮��� ࠡ��
  cgTipKoef_Proch =    10; // ��稥 �����樥���
  cgTipKoef_Zatr  =    11; // �����樥��� � ������⠬ �����
  cgTipKoef_All   = 12345; // �� (��ࠬ��� ����䥩� GetKatKoeff)
  cgTipKoef_Invalid = rvMaxWord; // ������⢨⥫쭮� ���祭�� �����樥��.

  // � 祬� �⭮���� �����樥�� (SmetaKoeff.Primenenie)
  cgPrimenenie_OZP   =  0; // ��ࠡ�⭠� ����
  cgPrimenenie_EM    =  1; // ��ᯫ���� ��設 � ��堭�����
  cgPrimenenie_MC    =  2; // �⮨����� ���ਠ���
  cgPrimenenie_ZPM   =  3; // ��ࠡ�⭠� ���� ��堭����஢
  cgPrimenenie_TZO   =  4; // ��㤮������ �᭮���� ࠡ���
  cgPrimenenie_TZM   =  5; // ��㤮������ ��堭����஢
  cgPrimenenie_PZ    = 10; // ���� ������
  cgPrimenenie_PZNR  = 11; // ���� ������ � �������� ��室�
  cgPrimenenie_OZPNR = 12; // ��ࠡ�⭠� ���� � �������� ��室�
  cgPrimenenie_ZPMNR = 13; // ��ࠡ�⭠� ���� ��堭����஢ � �������� ��室�
  cgPrimenenie_Invalid = rvMaxWord; // ������⢨⥫쭮� ���祭�� ����.

  // ����⢨� �����樥�� (SmetaKoeff.Deystv)
  cgDeystv_Mul = 0; // 㬭������ (*)
  cgDeystv_Div = 1; // �������   (/)
  cgDeystv_Add = 2; // ᫮�����  (+)
  cgDeystv_Sub = 3; // ���⠭�� (-)
  cgDeystv_Invalid = rvMaxWord; // ������⢨⥫쭮� ���祭�� ����.

  // ����� �������� ��� ��४��祭�� ������ ����� ��楤�ன SetCurrentTab,
  // ����饩�� � SmetaSpecRazd, SmetaSpecRes, SmetaSpecJob
  tabAttr    = 1;
  tabKoeff   = 2;
  tabZatr    = 3;
  tabLimit   = 4;
  tabKomm    = 5;
  tabObj     = 6;
  tabOsn     = 7;
  tabLinkMTR = 8; // 楫���� ���

  // �������� ���祭�� PickSmeta.wList, ����� ��⠭�������� ����䥩� GetSmetaMCU (�롮� �� �������� ᬥ�)
  cgPickedSmetaResources = 0; // ������ �����쭮� ᬥ��
  cgPickedSmetaParts     = 1; // ����祭�� ࠧ���� �����쭮� ᬥ�� (����� ������� ⨯� ������� �� �롮� �� ᬥ� � ����� ��ந⥫��⢠)
End;
