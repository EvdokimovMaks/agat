// ����⠭�� ��ࠢ����� ��������樥� ��ந⥫��⢠

const

//-------------------------------------------------------------------
// ��।�� ���㬥�⮢

//  cgPD_SelPodr = 3011;  // ��� Pick.wlist

// ��� ॥���     RstrPd.direct
  cgPD_Move           = 1;   // ॥��� �� ��।���
  cgPD_MoveOfDate     = 2;   // ॥��� �� ��।��� � ����襭�� �ப�� �।��⠢�����
  cgPD_MoveVizir      = 4;   // ॥��� �� ��।��� ��� ����஢����
  cgPD_Move_and_OfDate  = 3;  // ॥��� �� ��।���  �  �� ��।��� � ����襭�� �ப�� �।��⠢�����
  cgPD_Back           = 8;    // ॥��� �� ������
  cgPD_BackVizir      = 16;   // ॥��� �� ������ ᮣ��ᮢ�����  (��� ��� ��।����� �� ����஢����)
  cgPD_BackVizirOtkl  = 32;   // ॥��� �� ������ �⪫������� ���㬥�⮢ (��� ��� ��।����� �� ����஢����)

  lcgPD_Move           = '॥��� �� ��।���';
  lcgPD_MoveOfDate     = '॥��� �� ��।��� � ����襭�� �ப�� �।��⠢�����';
  lcgPD_MoveVizir      = '॥��� �� ��।��� ��� ����஢����';
  lcgPD_Back           = '॥��� �� ������';
  lcgPD_BackVizir      = '॥��� �� ������ ᮣ��ᮢ�����';
  lcgPD_BackVizirOtkl  = '॥��� �� ������ �⪫������� ���㬥�⮢';

// ������ ॥���      RstrPd.status
  cgPD_Oforml     = 1;   // ��ଫ����    // �� ������ �.�. �易� � ����ன��� UKSMTO.AVAILSTATUS (1,2,4)
  cgPD_Ispoln     = 2;   // �ᯮ������
  cgPD_AllReady   = 4;   // ��ࠡ�⠭
  cgPD_PartReady  = 8;   // �ਭ�� ���筮

  lcgPD_Oforml     =  '��ଫ塞�';
  lcgPD_Ispoln     =  '�ᯮ��塞�';
  lcgPD_PartReady  =  '�ਭ�� ���筮';
  lcgPD_AllReady   =  '��ࠡ�⠭';


// �ਧ��� ��ࠡ�⪨ ���㬥��      SpRstrPd.PrzObrab
  cgPD_Ready     = 0;   // � ��।��
  cgPD_Priniat   = 1;   // �ਭ��
  cgPD_Proveden  = 2;   // �஢����
  cgPD_Soglas    = 3;   // ᮣ��ᮢ��
  cgPD_Otkl      = 4;   // �⪫����


  lcgPD_Ready     = '� ��।��';
  lcgPD_Priniat   = '�ਭ��';
  lcgPD_Proveden  = '�஢����';
  lcgPD_Soglas    = 'ᮣ��ᮢ��';
  lcgPD_Otkl      = '�⪫����';


// ����� ���㬥��    SpRstrPd.VersDoc
  cgPD_Copy         = 0;     // �����
  cgPD_Original     = 1;     // �ਣ����
  cgPD_OrigCopy     = 2;     // �ਣ���� ������ �����
  cgPD_CorrectCopy  = 3;     //  �⪮�४�஢����� �����
  cgPD_CorrectOrig  = 4;     //  �⪮�४�஢���� �ਣ����

  lcgPD_Copy         = '�����';
  lcgPD_Original      = '�ਣ����';
  lcgPD_OrigCopy     = '�ਣ���� ������ �����';
  lcgPD_CorrectCopy  = '�⪮�४�஢����� �����';
  lcgPD_CorrectOrig  = '�⪮�४�஢���� �ਣ����';

// ⨯ ����ࠣ���      SpRstrPd.TipOrg
  cgPD_NoMono        = 0;     // ������������
  cgPD_Mono8         = 1;     // ���������� �� 8 �᫠
  cgPD_Mono16        = 2;     // ���������� �� 16 �᫠

// ��� ���㬥��       SpRstrPd.VidDoc
  cgPD_Internal      = 0;     // ����७���
  cgPD_External      = 1;     // ���譨�

  lcgPD_ExtClassName_Org  = '��� ����������� ��� �������� ����������';

//-------------------------------------------------------------------

end;
