//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 7.12-8.10 - �ந�����⢥��� ������
// ��������� ࠡ��� � ���㬥�⠬�. ����⠭��
//------------------------------------------------------------------------------
//'by Aleksis

Const
 //--------------------------------'���� ᢮��� ��ꥪ� "��ப� �����"
 reglLine                     = Word(1);    //'��� ��ப� 楫����
 reglSpMnPlan                 = Word(2);    //'��ꥪ� �����஢����
 reglSpMnPl                   = Word(3);    //'������

 reglNormDoc                  = Word(4);    //'���㬥��  //Siktivkar

 reglSpMnPlan_Number          = Word(11);   //'�����
 reglSpMnPlan_TypeIzd         = Word(12);   //'⨯
 reglSpMnPlan_cIzd            = Word(13);   //'������������
 reglSpMnPlan_cOtpEd          = Word(14);   //'������ ����७��
 reglSpMnPlan_cStatus         = Word(15);   //'�����
 reglSpMnPlan_StartDate       = Word(16);   //'��� ��砫�
 reglSpMnPlan_EndDate         = Word(17);   //'��� ����砭��
 reglSpMnPlan_cAnVal1         = Word(18);   //'�����⨪� 1
 reglSpMnPlan_cAnVal2         = Word(19);   //'�����⨪� 2
 reglSpMnPlan_cAnVal3         = Word(20);   //'�����⨪� 3
 reglSpMnPlan_cAnVal4         = Word(21);   //'���.�����⨪� 1
 reglSpMnPlan_cAnVal5         = Word(22);   //'���.�����⨪� 2
 reglSpMnPlan_CodTar          = Word(23);   //'�ਧ��� �த��
 reglSpMnPlan_Razr            = Word(24);   //'�ਧ��� �த�⮢ ��室�
 reglSpMnPlan_Prior           = Word(25);   //'�ਮ���
 reglSpMnPlan_StartDateFact   = Word(26);   //'��� ��砫� 䠪��᪠�
 reglSpMnPlan_EndDateFact     = Word(27);   //'��� ����砭�� 䠪��᪠�
 //'��� ���ॡ���� � ��㤮���
 reglSpMnPlan_Razr_Tr         = Word(28);   //'ࠧ��
 reglSpMnPlan_CodTar_Tr       = Word(29);   //'��� ���
 reglSpMnPlan_SisOpl          = Word(30);   //'��⥬� ������
 reglSpMnPlan_EdTime          = Word(31);   //'��.���. ��㤮������

 reglSpMnPl_Field1            = Word(51);   //'���� 1 ����樨
 reglSpMnPl_Field2            = Word(52);   //'���� 2 ����樨
 reglSpMnPl_Field3            = Word(53);   //'���� 3 ����樨
 reglSpMnPl_Field4            = Word(54);   //'���� 4 ����樨
 reglSpMnPl_Field5            = Word(55);   //'���� 5 ����樨
 reglSpMnPl_Field6            = Word(56);   //'���� 6 ����樨
 reglSpMnPl_Field7            = Word(57);   //'���� 7 ����樨
 reglSpMnPl_Field8            = Word(58);   //'���� 8 ����樨
 reglSpMnPl_Field9            = Word(59);   //'���� 9 ����樨
 reglSpMnPl_Field10           = Word(60);   //'���� 10 ����樨
 reglSpMnPl_Field11           = Word(61);   //'���� 11 ����樨
 reglSpMnPl_Field12           = Word(62);   //'���� 12 ����樨
 reglSpMnPl_Field13           = Word(63);   //'���� 13 ����樨
 reglSpMnPl_Field14           = Word(64);   //'���� 14 ����樨

 reglSpMnPlan_CalcField1      = Word(65);   //'���.���� 1 ��ப�
 reglSpMnPlan_CalcField2      = Word(66);   //'���.���� 2 ��ப�
 reglSpMnPlan_CalcField3      = Word(67);   //'���.���� 3 ��ப�
 reglSpMnPlan_CalcField4      = Word(68);   //'���.���� 4 ��ப�
 reglSpMnPlan_CalcField5      = Word(69);   //'���.���� 5 ��ப�
 reglSpMnPlan_CalcField6      = Word(70);   //'���.���� 6 ��ப�

 reglSpMnPlan_ExtAttr         = Word(71);   //'���譨� ��ਡ��� ��� SpMnPlan � SpMnPl

 reglTemplDoc                 = Word(100);  //'蠡��� ���㬥��
 reglParSpec                  = Word(101);  //'��ࠬ���� ᯥ�䨪�樨
 reglParMK                    = Word(102);  //'��ࠬ���� �������
 reglHeader                   = Word(103);  //'����� (���������)
 reglvParPos                  = Word(104);  //'������� ��ࠬ���� ����樨
 reglvDopParDoc               = Word(105);  //'�������⥫�� ��ࠬ���� ���㬥��
 reglMatNormMarsh_Sp          = Word(106);  //'���ਠ��� ���� ����樨
 reglWorkNormMarsh_Sp         = Word(107);  //'��㤮�� ���� ����樨
 reglInstrNormMarsh_Sp        = Word(108);  //'�����㬥�⠫�� ���� ����樨
 reglEqNormMarsh_Sp           = Word(109);  //'���� ����㤮����� ����樨
 reglvDescriptPos             = Word(110);  //'������� ���ᠭ��/�ਬ�砭�� ����樨
 reglvDocMarsh_Sp             = Word(111);  //'������� ���㬥��� ����樨
 reglvMKPS_Lines              = Word(112);  //'������� �� ��� ����樨
 reglvSpecNormPS_Lines        = Word(113);  //'������� ������஢���� ���� ��� ����樨
 reglNormMarsh_Sp             = Word(114);  //'���� ����樨 (�� �롨ࠥ���)
//����
 //蠯��
 reglMenu                     = Word(115);  //'���� 蠯�� (�� �롨ࠥ���)
 reglMenuHdrCopyDoc           = Word(116);  //'����஢����
 reglMenuHdrCreateSprav       = Word(117);  //'��ନ஢���� �ࠢ�筨�� ��� �६��� � ��業�� �� ��'
 reglMenuHdrCorrectReserv     = Word(118);  //'���४�஢�� ������ � ��ୠ�� १�ࢨ஢����'
 reglMenuHdrCorrectEdNorm     = Word(119);  //'���४�஢�� ������ ��ନ஢���� �������'
 reglMenuHdrCorrectOperDp     = Word(120);  //'���४�஢�� �ᯮ���⥫�� ����権 �������'
 reglMenuHdrLinkPSMK          = Word(121);  //'��裡 � ����ᠬ� ᯥ�䨪�樨'
 reglMenuHdrFormulas          = Word(122);  //'�믮����� ���� ����'
 //ᯥ�䨪���
 reglMenuSpecCopyOperToMk     = Word(123);  //'����஢���� ����権 � ��������
 reglMenuSpecCopyNorm         = Word(124);  //'����஢���� ��� � ��������
 reglMenuSpecLinkPSMK         = Word(125);  //'��裡 � ����ᠬ� ᯥ�䨪�樨'
 reglMenuSpecFormulas         = Word(126);  //'�믮����� ���� ����'
 reglMenuSpecCopyOperFromMk   = Word(127);  //'����஢���� ����権 � ��������
 reglMenuSpecReNumOper        = Word(128);  //'����� �� ��७㬥�樨 ����権
 //--------------------------------'����襭�� ��� ��ꥪ� "��ப� �����"
 reglEdit                     = Word(1);    //'।���஢����
 reglDelete                   = Word(2);    //'㤠�����
 reglFullAccess               = Word(3);    //'����� ����� (��ᬮ��-।���஢����)
 reglUse                      = Word(4);    //'�ᯮ�짮�����
 //-------------------------'���� ������ ��� ��ꥪ� "������ ��ୠ�� १�ࢨ஢����"
 //-------------------------'������� ᢮��⢠ ���ﭨ� ॣ������ ��� ����樨
 reglRsv_wState               = Word(1);    //'����ﭨ� ����樨
 reglRsv_wStatus              = Word(2);    //'����� ����樨
 //--------------------------------'���� ᢮��� ��ꥪ� "��ப� �����"
 reglLineRsvOper              = Word(1);    //'��� ������ 楫����
 //---------------------------------'���ன��� ��������� ��� ᨢ��죨
 reglModel                    = Word(201);
 reglSize                     = Word(202);
 reglKolPair                  = Word(203);
 reglSquare                   = Word(204);
 reglBrutto                   = Word(205);
 reglCMC                      = Word(206);
 reglEdIzd                    = Word(207);
 reglFAnal1                   = Word(208);
 reglFAnal2                   = Word(209);
 reglFAnal3                   = Word(210);
 reglKolMC                    = Word(211);
 reglKolKo                    = Word(212);
 reglNzad                     = Word(213);
End
