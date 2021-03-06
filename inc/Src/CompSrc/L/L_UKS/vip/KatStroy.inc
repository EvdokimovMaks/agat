//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - ��ࠢ����� ����⠫�묨 �������ﬨ � ��ந⥫��⢮�
// ����⠭�� ��� ����஢ �㬬 [ AddSumObj.coTable ]
//------------------------------------------------------------------------------

Const
  // �������� ���
  cgRegUch_BU = 0;    // ��壠���᪨� ���
  cgRegUch_NU = 8000; // �������� ���

  // ������ �㬬 [ AddSumObj.coTable ]
  cgSum_Begin = coIerStroy; // ��砫��
  cgSum_NoNal = coKatPlace; // ��� �������
  cgSum_Total = coKatStroy; // � ��⮬ ������� � ��砫��� ���祭��

  cgSum_Begin_BU = word(cgSum_Begin + cgRegUch_BU);
  cgSum_NoNal_BU = word(cgSum_NoNal + cgRegUch_BU);
  cgSum_Total_BU = word(cgSum_Total + cgRegUch_BU);

  cgSum_Begin_NU = word(cgSum_Begin + cgRegUch_NU);
  cgSum_NoNal_NU = word(cgSum_NoNal + cgRegUch_NU);
  cgSum_Total_NU = word(cgSum_Total + cgRegUch_NU);

  // cgSum_Total := cgSum_Begin + cgSum_NoNal + ������

  // ���祭�� �ਧ���� ��ன�� [ KatStroy.LevelObj ]
  cgObj_Stroyka = 0; // ��ன��
  cgObj_Object  = 1; // ��ꥪ� ��ந⥫��⢠
  cgObj_Zatrat  = 2; // ��ꥪ� ᡮ� �����

  // ����� ������� � ������ "���"
  cgFormat_Atrib  : byte = 1; // ��ਡ���
  cgFormat_Name   : byte = 2; // �஥�⭮� ������������
  cgFormat_Summ   : byte = 3; // �㬬�
  cgFormat_Descr  : byte = 4; // ���ᠭ��
  cgFormat_Raspr  : byte = 5; // �奬� ��।������
  
  // ����� ������� � ������ "�㬬�"
  cgFormat_Itogo  : byte = 1; // �⮣�
  cgFormat_Zatrat : byte = 2; // �� �����
  
  // ����� ������� � ������ "�㬬� - �⮣�" � "�㬬� - �� �����"
  cgFormat_Total  : byte = 1; // �ᥣ�
  cgFormat_NoNal  : byte = 2; // ��� �������
  cgFormat_Nalog  : byte = 3; // ������
  cgFormat_Begin  : byte = 4; // ��砫��

End;
