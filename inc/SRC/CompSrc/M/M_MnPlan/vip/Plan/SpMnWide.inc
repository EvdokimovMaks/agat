//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.1 - �ந�����⢥��� ������
//------------------------------------------------------------------------------
// ������� � �����⨪�� �� ��������, ⮫쪮 �१ ����⠭��
const

  // �㭪樮����� �����祭�� �����⨪ SpMnBrief
  arnOST = word(1);  // ��� (�࣠������ ��⥬� �࠭᭥���)
  arnPRO = word(2);  // �ணࠬ��
  arnRGZ = word(3);  // ������ ���ࠢ��// PID
  arnGRU = word(4);  // ��㧮�����⥫�
  arnGR2 = word(5);  // ��㧮�����⥫�2 (䨫���)
  arnSPO = word(6);  // ���ᮡ ���⠢��
  arnOTD = word(7);  // �⤥�-��⥫�
  arnPOD = word(8);  // ���ࠧ������� �����稪�
  arnPAO = word(9);  // ���ࠧ������� ���
  arnLOT = word(10); // ���
  arnDSI = word(11); // �ਭ���������� � ���
  arnVNU = word(12); // �ਧ��� ��㯯����� ����ࠣ���
  arnIZG = word(13); // �����-����⮢�⥫�
  arnCAT = word(14); // ��⠣��� ���㯪�//���⠢��
  arnOBJ = word(15); // ��ꥪ�
  arnSEG = word(16); // ������� �� � ��
  arnBDR = word(17); // ����� ���
  arnZAT = word(18); // ����� �����
  arnMTR = word(19); // ��㯯� ���
  arnOPR = word(20); // ����� ����
  arnCLA = word(21); // ����� ��� ���
  arnKPR = word(22); // ��� �ந�����⥫�    //
  arnVID = word(23); // ��� ���
  arnOTV = word(24); // �⢥��⢥��� ���㤭�� ����
  arnPCZ = word(25); // ����� �⢥��⢥����� - �����⨪� ��� ���ࠧ������� (��᫥ 業�� �����)
  arnGST = word(26); // ����
  arnGNA = word(27); // ��㯯� ������
  arnTRS = word(28); // ��� ��ꥪ� ���-����
  arnOZA = word(29); // �࣠������ ���㯪� (��� ���⠢��)
  arnPLO = word(30); // ������ ���
  arnTOS = word(31); // ��ꥪ� ��஭��� ���
  arnFIL = word(32); // ������
  arnOPE = word(33); // ������
  arnYEA = word(34); // ���
  arnKOR = word(35); // ����� ���४�஢��
  arnSVD = word(36); // ��易��� ���㬥��
  arnPID = word(37); // PID
  arnUNI = word(38); // ���譨� ����� ���ॡ����
  arnMON = word(39); // ����� ���⠢��
  arnKVL = word(40); // ��ꥪ� ��� � ��
  arnNTT = word(41); // ����稥 �孨�� �����
  arnPOL = word(42); // ��稭� �⪫������
  arnASU = word(43); // �����䨪��� ��ࠢ�� ����� � ��� ���㯪�
  arnVDS = word(44); // ��ਠ�� ���⠢��
  arnIDC = word(45); // �����䨪��� 業�
  arnSPP = word(46); // ���-�������

  arnUSR = word(51); // ��� ᮧ����� ���㬥��
  arnUSS = word(52); // ��� ।���஢���� ���㬥��



  arstrOST = '���';
  arstrPRO = '�ணࠬ��';
  arstrRGZ = '������ ���ࠢ��';//'PID';
  arstrGRU = '��㧮�����⥫�';
  arstrGR2 = '��㧮�����⥫�2 ';
  arstrSPO = '���ᮡ ���⠢��';
  arstrOTD = '�⤥�-��⥫�';
  arstrPOD = '���ࠧ������� �����稪�';
  arstrPAO = '���ࠧ������� ���';
  arstrLOT = '���';
  arstrDSI = '�ਭ���������� � ���';
  arstrVNU = '�ਧ��� ��㯯����� ����ࠣ���';
  arstrIZG = '�����-����⮢�⥫�';
  arstrCAT = '��⠣��� ���㯪�';//���⠢��';
  arstrOBJ = '��ꥪ�';
  arstrSEG = '������� �� � ��';
  arstrBDR = '����� ���';
  arstrZAT = '����� �����';
  arstrMTR = '��㯯� ���';
  arstrOPR = '����� ����';
  arstrCLA = '����� ��� ���';
  arstrKPR = '��� �ந�����⥫�';//;
  arstrVID = '��� ���';
  arstrOTV = '�⢥��⢥��� ���㤭�� ����';
  arstrPCZ = '����� �⢥��⢥�����';

  arstrGST = '����';
  arstrGNA = '��㯯� ������';
  arstrTRS = '��� ��ꥪ� ���-����';
  arstrOZA = '�࣠������ ���㯪� (��� ���⠢��)';
  arstrPLO = '������ ���';
  arstrTOS = '��ꥪ� ��஭��� ���';
  arstrFIL = '������';
  arstrOPE = '������';
  arstrYEA = '���';
  arstrKOR = '����� ���४�஢��';
  arstrSVD = '��易��� ���㬥��';
  arstrPID = 'PID';
  arstrUNI = '���譨� ����� ���ॡ����';
  arstrMON = '����� ���⠢��';
  arstrKVL = '��ꥪ� ��� � ��';
  arstrNTT = '����稥 �孨�� �����';
  arstrPOL = '��稭� �⪫������';
  arstrASU = '�����䨪��� ��ࠢ�� ����� � ��� ���㯪�';
  arstrVDS = '��ਠ�� ���⠢��';
  arstrIDC = '�����䨪��� 業�';
  arstrSPP = '���-�������';


  arstcOST = Chr(3)+'���';
  arstcPRO = Chr(3)+'�ணࠬ��';
  arstcRGZ = Chr(3)+'������'+Chr(13)+Chr(3)+'���ࠢ��';//Chr(3)+'PID';
  arstcGRU = Chr(3)+'��㧮�����⥫�';
  arstcGR2 = Chr(3)+'��㧮�����⥫�2'+Chr(13)+Chr(3)+'(䨫���)';
  arstcSPO = Chr(3)+'���ᮡ'+Chr(13)+Chr(3)+'���⠢��';
  arstcOTD = Chr(3)+'�⤥�-'+Chr(13)+Chr(3)+'��⥫�';
  arstcPOD = Chr(3)+'���ࠧ�������'+Chr(13)+Chr(3)+'�����稪�/䨫���';
  arstcPAO = Chr(3)+'���ࠧ�������'+Chr(13)+Chr(3)+'���';
  arstcLOT = Chr(3)+'���';
  arstcDSI = Chr(3)+'�ਭ����������'+Chr(13)+Chr(3)+'� ���';
  arstcVNU = Chr(3)+'�ਧ��� ��㯯�����'+Chr(13)+Chr(3)+'����ࠣ���';
  arstcIZG = Chr(3)+'�����-'+Chr(13)+Chr(3)+'����⮢�⥫�';
  arstcCAT = Chr(3)+'��⠣���'+Chr(13)+Chr(3)+'���㯪�';//'���⠢��';
  arstcOBJ = Chr(3)+'��ꥪ�';
  arstcSEG = Chr(3)+'�������'+Chr(13)+Chr(3)+'�� � ��';
  arstcBDR = Chr(3)+'�����'+Chr(13)+Chr(3)+'���';
  arstcZAT = Chr(3)+'�����'+Chr(13)+Chr(3)+'�����';
  arstcMTR = Chr(3)+'��㯯�'+Chr(13)+Chr(3)+'���';
  arstcOPR = Chr(3)+'�����'+Chr(13)+Chr(3)+'����';
  arstcCLA = Chr(3)+'�����'+Chr(13)+Chr(3)+'��� ���';
  arstcKPR = Chr(3)+'���'+Chr(13)+Chr(3)+'�ந�����⥫�';//Chr(3)+'���'+Chr(13)+Chr(3)+'��';
  arstcVID = Chr(3)+'���'+Chr(13)+Chr(3)+'���';
  arstcOTV = Chr(3)+'�⢥��⢥���'+Chr(13)+Chr(3)+'���㤭�� ����';
  arstcPCZ = Chr(3)+'�����'+Chr(13)+Chr(3)+'�⢥��⢥�����';
  arstcGST = Chr(3)+'����';
  arstcGNA = Chr(3)+'��㯯� ������';
  arstcTRS = Chr(3)+'��� ��ꥪ�'+Chr(13)+Chr(3)+'���-����';
  arstcOZA = Chr(3)+'�࣠������ ���㯪�' +Chr(13)+Chr(3)+ '(��� ���⠢��)';
  arstcPLO = Chr(3)+'������ ���';
  arstcTOS = Chr(3)+'��ꥪ�'+Chr(13)+Chr(3)+'��஭��� ���';
  arstcFIL = Chr(3)+'������';
  arstcOPE = Chr(3)+'������';
  arstcYEA = Chr(3)+'���';
  arstcKOR = Chr(3)+'�����'+Chr(13)+Chr(3)+'���४�஢��';
  arstcSVD = Chr(3)+'��易���'+Chr(13)+Chr(3)+'���㬥��';
  arstcPID = Chr(3)+'PID';
  arstcUNI = Chr(3)+'���譨� �����'+ Chr(13)+Chr(3)+'���ॡ����';
  arstcMON = Chr(3)+'�����'+Chr(13)+Chr(3)+'���⠢��';
  arstcKVL = Chr(3)+'��ꥪ�'+Chr(13)+Chr(3)+'��� � ��';
  arstcNTT = Chr(3)+'����稥 �孨�� �����';
  arstcPOL = Chr(3)+'��稭�'+Chr(13)+Chr(3)+'�⪫������';
  arstcASU = Chr(3)+'�����䨪��� ��ࠢ��'+Chr(13)+Chr(3)+' ����� � ��� ���㯪�';
  arstcVDS = Chr(3)+'��ਠ�� ���⠢��';
  arstcIDC = Chr(3)+'�����䨪��� 業�';
  arstcSPP = Chr(3)+'���-�������';




  acnShowOST = 1b;  //
  acnShowPRO = 10b;  //
  acnShowRGZ = 100b;  //
  acnShowGRU = 1000b;  //
  acnShowGR2 = 10000b;  //
  acnShowSPO = 100000b;  //
  acnShowOTD = 1000000b;  //
  acnShowPOD = 10000000b;  //
  acnShowPAO = 100000000b;  //
  acnShowLOT = 1000000000b; //
  acnShowDSI = 10000000000b; //
  acnShowVNU = 100000000000b; //
  acnShowIZG = 1000000000000b; //
  acnShowCAT = 10000000000000b; //
  acnShowOBJ = 100000000000000b; //
  acnShowSEG = 1000000000000000b; //
  acnShowBDR = 10000000000000000b; //
  acnShowZAT = 100000000000000000b; //
  acnShowMTR = 1000000000000000000b; //
  acnShowOPR = 10000000000000000000b; //
  acnShowCLA = 100000000000000000000b; //
  acnShowKPR = 1000000000000000000000b; //
  acnShowVID = 10000000000000000000000b; //
  acnShowOTV = 100000000000000000000000b; //
  acnShowPCZ = 1000000000000000000000000b; //

  acnShowGST = 10000000000000000000000000b; //
  acnShowGNA = 100000000000000000000000000b; //
  acnShowTRS = 1000000000000000000000000000b; //
  acnShowOZA = 10000000000000000000000000000b; //
  acnShowPLO = 100000000000000000000000000000b; //
  acnShowTOS = 1000000000000000000000000000000b; //
  acnShowFIL = 10000000000000000000000000000000b; //

  acnShowOPE = 1b;  //
  acnShowYEA = 10b; //
  acnShowKOR = 100b; //
  acnShowSVD = 1000b; //
  acnShowPID = 10000b; //
  acnShowUNI = 100000b; //
  acnShowMON = 1000000b; //
  acnShowKVL = 10000000b; //
  acnShowNTT = 100000000b; //
  acnShowPOL = 1000000000b; //
  acnShowASU = 10000000000b; //
  acnShowVDS = 100000000000b; //
  acnShowIDC = 1000000000000b; //
  acnShowSPP = 10000000000000b; //

  // ���� ����� �� �ᯮ������
  arnHd1 = word(1001); // �����⨪� MnPlan 1
  arnHd2 = word(1002); // �����⨪� MnPlan 2
  arnHd3 = word(1003); // �����⨪� MnPlan 3
  arnHd4 = word(1004); // �����⨪� MnPlan 4
  arnHd5 = word(1005); // �����⨪� MnPlan 5
  arnHd6 = word(1006); // �����⨪� MnPlan 6
  arnHd7 = word(1007); // �����⨪� MnPlan 7

  arnSp1 = word(2001);  // �����⨪� SpMnPlan 1
  arnSp2 = word(2002);  // �����⨪� SpMnPlan 2
  arnSp3 = word(2003);  // �����⨪� SpMnPlan 3
  arnSp4 = word(2004);  // �����⨪� SpMnPlan 4
  arnSp5 = word(2005);  // �����⨪� SpMnPlan 5

  // ⨯� �����⬮�
  ctaButton    = 1; // ������� ������
  ctaPreEdit   = 2; // ������� ��। ���������� �����
  ctaPostEdit  = 3; // ������� ��᫥ ��������� �����
  ctaExtSpMenu = 4; // �������⥫�� ������� �����쭮�� ����

  // ����⠭�� ��� ������ � 蠯��
  btnSendApprove       = 1; // ������ "�����ᮢ���"
  btnSendReject        = 2; // ������ "�⪫�����"
  btnSendRejectRequest = 3; // ������ "������� �⪫������"
  btnSendDelete        = 4; // ������ "�������"
  btnRefresh           = 5; // ������ "��������"
  btnRefreshAll        = 6; // ������ "�������� ��"
  btnSendPriceRequest  = 7; // ������ "����祭�� 業�"

  btnPlanScr01         = 1;
  btnPlanScr02         = 2;
  btnPlanScr03         = 3;
  btnPlanScr04         = 4;
  btnPlanScr05         = 5;
  btnPlanScr06         = 6;
  btnPlanScr07         = 7;
  btnPlanScr08         = 8;
  btnPlanScr09         = 9;
  btnPlanScr10         = 10;
  btnPlanScr11         = 11;
  btnPlanScr12         = 12;

  btnPlanScrMax        = 12;

  btnPlanSpFormPlTune  = 5002;
  // ����⠭�� ��� �����


end;


