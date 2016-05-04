// ���������������������������������������������������������������������������ͻ
// �                     (c) 1994,97 ��௮��� ���������                      �
// � �஥��        : ������ ����஥�                                           �
// � �����        : 5.80                                                      �
// � �����祭��    : ���ᠭ�� ����⠭�                                         �
// � �⢥��⢥��� : ���룠 �.�.                                               �
// ���������������������������������������������������������������������������ͼ


// ��� ����ன�� (���� SYSTYPE ⠡���� TuneDef)
ttSysTune      = 0;  // ���⥬���
ttUserTune     = 2;  // ���짮��⥫�
ttSYSUSERTUNE  = 1;  // ���⥬��� � ���짮��⥫� ��� �������� ᮤ�ঠ�� ���

// ��� ������쭮�� ����ன�� (���� ResWord ⠡���� TuneDef)
ttFilialTune    = 0;  // ������쭠�
ttCorpoTune     = 1;  // ��௮�⨢���

// ����� ��⮢ ���� ResWord ⠡���� TuneDef
ttBitCorpo      = 0;  // ��௮�⨢���
ttBitIzmCorpo   = 1;  // ������� ⨯ ��௮�⨢���
ttBitIzmSys     = 4;  // ������� ⨯ ���⥬���-���짮��⥫�

// ���� ������
// ��।����� � �⫠��� � ����㯭� � ����ன���
// ftBoolean    =  1;  // ��/���
// ftChar       =  2;
// ftWord       =  4;
// ftLongInt    =  6;
// ftDate       =  7;
// ftTime       =  8;
// ftDouble     = 11;
// ftString     = 12;
// ftComp       = 17;
// �� ��।�����
   ftList       = 50;   // ���᮪ (Word)
   ftCompString = 60;   // ���� ����䥩� �롮� � ��筮� ����


// ���� ������ �㭪権 ����஥�
ttTuneOk            = 0;   // ������ �믮����� �ᯥ譮
ttTuneWriteError    = 2;   // �����᪠� �訡�� ����� � ⠡����
ttTuneReadError     = 3;   // �����᪠� �訡�� �⥭��
ttTuneAccessDenied  = 4;   // ����� � ����� ����饭
ttTuneInvalidType   = 5;   // ����୮ ����襭 ⨯ ����
ttTuneKeyNotFound   = 6;   // ���� �� ������
ttTuneValNotFound   = 7;   // ���祭�� �� �������
ttTuneListNotFound  = 8;   // �� ������� ���祭�� List ��� ����ன��
ttTuneDeleteError   = 9;   // �����᪠� �訡�� 㤠����� ����� �� ⠡����
ttTuneHoHaveRightRead = 10;// ��� �ࠢ �� �⥭�� ����ன��
// ���� �訡�� � ��砥 ����᪠ ���������� ॥��� ����஥�
ttRunUpdatesOk          = 0;  // 㯥譮 �����⨫��� 
ttRunUpdatesManyFilials = 1;  // �� �����⨫��� ���� 䨫���쭮�� ०��� �� �롮� ��᪮�쪨� 䨫�����
ttRunUpdatesTuneLock    = 2;  // �� �����⨫��� ���� �����஢���� ����஥� � ����஥筮� 䠩�� galaxy.tuneLock=on
ttRunUpdatesNotFindTunesRead = 4;  // �� �����⨫��� ���� ������������ ������ ����� �� ��稭� �����ᢨ� �ࠢ �� �⥭�� TuneDef
ttRunUpdatesNotAdmin    = 8; //�� �����������
ttRunUpdatesNotRecTuneDef = 16; //��� ����ᥩ � TuneDef
ttRunUpdatesError       = 32;  // �� �����⨫��� ���� ���� �訡��

// �஢��� ����㯠 (���� Rgh ⠡���� TuneDef, TuneRgh)
ttMODIF     = 0;      // ������஢���
ttREAD      = 1;      // ���쪮 �����
ttInVISIBLE = 2;      // ��� ����㯠
ttREADInVISIBLE = 3;  // ����� �  ��� ����㯠

// ���� �ࠢ ����㯠 (���� TuneRgh.TypeRgh)
// � ⨯ ��ꥪ� ����ன�� (���� OBJ ⠡���� TuneVal - ttUSER ���� ttGroup)
ttUSER     = 0;  // ���짮��⥫�
ttGroup    = 1;  // ��㯯�
ttCalcUser = 2;  // ����⠭��� ���짮��⥫�
ttTmpUser  = 3;  // �६����� ��� ���짮��⥫�
ttTmpOffice= 5;  // �६����� ��� ��� (䨫����)    �� �ᯮ������ � 8.1

//��ப� - ࠧ����⥫� � 䠩�� ��࠭��� ����஥�
ttSeparator : string[40] = '******************TUNE******************';
ttDelimiter = ';';    //ࠧ����⥫� � 䠩��

// ����� ����஥� �� ࠧ�����
Common_StartNumber = 100;       // ��騥        - 100 - 999
KL_StartNumber     = 1000;      // �����⨪�    - 1000-4999
KBU_StartNumber    = 5000;      // ���          - 5000-9999
Proizv_StartNumber = 10000;     // �ந�����⢮ - 10000-14999
Zarp_StartNumber   = 15000;     // ��௫��     - 15000-19999
DifModul_StartNumber  = 20000;  // ��㣨� ���㫨  - 20000-24999
MinNumberTunePatch    = 25000;  // ��������� ����� ����஥� ᮧ������ ��� �㦥���� 楫��

MinNumberBatchInterface = 26000;  // ��������� ����� ����஥� ᮧ������ ��� ������� ����䥩ᮢ
ttDefaultPrior = 500;             // �ਮ��� ����䥩� �� 㬮�砭��

// ���-䠩� ��� �⫠���
ttTuneLogFile : string[40] = 'c:\temp\CreateTune.Log';

// ��� ��ꥤ������ ������� � ��� � ���� ���� (ttConstFilial * ������ + ���)
ttConstFilial = 1000000;

// ��䨪� ���� ����ன�� - ��� ��������� ���������
ttDataUpdateComp : string[20] = 'DATE_UPDATE_COMP.';

// ०�� ࠡ��� ���⮡ࠡ�⪨
ttNone = 0; // ����� 
ttSpecial = 1; // ᯥ�०�� 

// 䫠�� ����᪠ ᮧ�����/���������� ॥��� ����஥�
ttShowMsg   = 1;// �����뢠�� ᮮ�饭�� �� �஢�થ
ttRunAuto   = 2;// ��⮬���᪨� �����
ttRunManual = 4;// ��筮� �����