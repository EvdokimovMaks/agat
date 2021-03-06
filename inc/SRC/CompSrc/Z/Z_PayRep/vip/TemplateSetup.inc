//------------------------------------------------------------------------------
// �����⨪� 9.1 - ��ࠡ�⭠� ����
// ����⠭�� ����ன�� 蠡���� ��� ���㧪� ॥��஢ � ����
//------------------------------------------------------------------------------
const
  // ������⢮ ����� � 蠡����
  cnField_Count                = 89;
  // ���� 蠡���� ���㧪�
  cnUnLoad_Numpp               = 0;  //+ ����� �� ���浪�
  cnUnLoad_FullFIO             = 1;  //+ ������ ���
  cnUnLoad_Surname             = 2;  //+ �������
  cnUnLoad_Name                = 3;  //+ ���
  cnUnLoad_Patronymic          = 4;  //+ ����⢮
  cnUnLoad_TabN                = 5;  //+ ������� �����
  cnUnLoad_Account             = 6;  //+ ����� ���
  cnUnLoad_SummaUder           = 7;  //- �㬬� 㤥ঠ���
  cnUnLoad_SummaPer            = 8;  //- �㬬� ����᫥���
  cnUnLoad_SummaSbor           = 9;  //- �㬬� ᡮ�
  cnUnLoad_DocumentType        = 10; //+ ��� ���㬥��
  cnUnLoad_SeriesofDocum       = 11; //+ ���� ���㬥��
  cnUnLoad_DocumentNumber      = 12; //+ ����� ���㬥��
  cnUnLoad_DateofissueDoc      = 13; //+ ��� �뤠� ���㬥��
  cnUnLoad_WhoissuedDoc        = 14; //+ ��� �뤠� ���㬥��
  cnUnLoad_NameofOrg           = 15; //+ ������������ �࣠����樨
  cnUnLoad_DateofBirth         = 16; //+ ��� ஦�����
  cnUnLoad_RegAddress          = 17; //+ ���� ॣ����樨
  cnUnLoad_ResidentAddress     = 18; //+ ���� �஦������
  cnUnLoad_AddrRegandRes       = 19; //+ ���� ॣ����樨+ ���� �஦������
  cnUnLoad_RegAddress2         = 20; //+ ���� ॣ����樨
  cnUnLoad_PhoneWork           = 21; //+ ����䮭 ࠡ�稩
  cnUnLoad_PhoneHome           = 22; //+ ����䮭 ����譨�
  cnUnLoad_DocSeriesNumber     = 23; //+ ���� � ����� ���㬥��
  cnUnLoad_INN                 = 24; //+ ���
  cnUnLoad_KodGNI              = 25; //+ ��� ���
  cnUnLoad_CustomValue         = 26; //+ ���짮��⥫�᪮� ���祭��
  cnUnLoad_ConstValue1         = 27; //+ ����. ���祭�� 1
  cnUnLoad_ConstValue2         = 28; //+ ����. ���祭�� 2
  cnUnLoad_ConstValue3         = 29; //+ ����. ���祭�� 3
  cnUnLoad_ConstValue4         = 30; //+ ����. ���祭�� 4
  cnUnLoad_ConstValue5         = 31; //+ ����. ���祭�� 5
  cnUnLoad_ConstValue6         = 32; //+ ����. ���祭�� 6
  cnUnLoad_ConstValue7         = 33; //+ ����. ���祭�� 7
  cnUnLoad_ConstValue8         = 34; //+ ����. ���祭�� 8
  cnUnLoad_ConstValue9         = 35; //+ ����. ���祭�� 9
  cnUnLoad_ConstValue10        = 36; //+ ����. ���祭�� 10
  cnUnLoad_NumberCard          = 37; //+ ����� ����窨
  cnUnLoad_AddrRegCountry      = 38; //+ ���� ॣ����樨 (��࠭�)
  cnUnLoad_AddrRegInd          = 39; //+ ���� ॣ����樨 (������)
  cnUnLoad_AddrRegCity         = 40; //+ ���� ॣ����樨 (��த)
  cnUnLoad_AddrRegStreet       = 41; //+ ���� ॣ����樨 (㫨�)
  cnUnLoad_AddrRegHouse        = 42; //+ ���� ॣ����樨 (���)
  cnUnLoad_AddrRegCorpus       = 43; //+ ���� ॣ����樨 (�����)
  cnUnLoad_AddrRegKvart        = 44; //+ ���� ॣ����樨 (������)
  cnUnLoad_TotalSumUder        = 45; //- �⮣���� �㬬� 㤥ঠ��� �� 䠩��
  cnUnLoad_TotalSumPer         = 46; //- �⮣���� �㬬� ����᫥��� �� 䠩��
  cnUnLoad_TotalSumSbor        = 47; //- �⮣���� �㬬� ᡮ� �� 䠩��
  cnUnLoad_DatePaymentOrd      = 48; //+ ��� �ନ஢���� ���⥦���� ����祭��
  cnUnLoad_NumbPaymentOrd      = 49; //+ ����� ���⥦���� ����祭��
  cnUnLoad_DateFormReesr       = 50; //+ ��� �ନ஢���� ॥���
  cnUnLoad_RegistryNumber      = 51; //+ ����� ॥���
  cnUnLoad_SessionNumber       = 52; //+ ����� ᥠ��
  cnUnLoad_SummaUdInWords      = 53; //- �㬬� 㤥ঠ��� �ய����
  cnUnLoad_SummaPerInWords     = 54; //- �㬬� ����᫥��� �ய����
  cnUnLoad_SummaSborInWords    = 55; //- �㬬� ᡮ� �ய����
  cnUnLoad_TotalSumUderInWords = 56; //- �㬬� 㤥ঠ��� �� 䠩�� �ய����
  cnUnLoad_TotalSumPerInWords  = 57; //- �㬬� ����᫥��� �� 䠩�� �ய����
  cnUnLoad_TotalSumSborInWords = 58; //- �㬬� ᡮ� �� 䠩�� �ய����
  cnUnLoad_CountRec            = 59; //+ ������⢮ ����ᥩ � 䠩��
  cnUnLoad_CountRecInfo        = 60; //+ ������⢮ ���ଠ樮���� ��ப
  cnUnLoad_RegAddrCountryCode  = 61; //+ ���� ॣ����樨 (��� ��࠭�)
  cnUnLoad_RegAddrRegion       = 62; //+ ���� ॣ����樨 (�������/ࠩ��)
  cnUnLoad_RegAddrTypeStreet   = 63; //+ ���� ॣ����樨 (⨯ 㫨��)
  cnUnLoad_BankDepartment      = 64; //+ �⤥����� �����
  cnUnLoad_FilialBankDep       = 65; //+ ������ �⤥����� �����
  cnUnLoad_TypeofDeposit       = 66; //+ ��� ������
  cnUnLoad_CategoryofPop       = 67; //+ ��⥣��� ��ᥫ����
  cnUnLoad_CheckingInformation = 68; //+ ����஫쭠� ���ଠ��
  cnUnLoad_ContractNumberBank  = 69; //+ ����� ������� � ������
  cnUnLoad_ContractDateBank    = 70; //+ ��� ������� � ������
  cnUnLoad_AnalyticsName       = 71; //+ �����⨪� (������������)
  cnUnLoad_DopAnalyticsName    = 72; //+ ��������⨪� (������������)
  cnUnLoad_AnalyticsValueCode  = 73; //+ �����⨪� (��� ���祭��)
  cnUnLoad_DopAnalyticsValCode = 74; //+ ��������⨪� (��� ���祭��)
  cnUnLoad_IIN_AlimRecipient   = 75; //+ ��� �����⥫� ������⮢
// Beg ������﫮�� ��� �࠭᭥�� - ᯥ�
  cnUnLoad_PrzMobilBank        = 76; // �ਧ��� ������祭�� �����쭮�� �����
  cnUnLoad_PrzEmailReport      = 77; // �ਧ��� ���뫪� ���⮢ �� �����஭��� ����
  cnUnLoad_IDBonusProgram      = 78; // �����䨪��� ����᭮� �ணࠬ��
  cnUnLoad_NumberofpartBonusPr = 79; // ����� ���⭨�� � ����᭮� �ணࠬ��
// End ������﫮�� ��� �࠭᭥�� - ᯥ�
  cnUnLoad_NameInLatinLetters  = 80; //+ ��� ������� ��⨭᪨�� �㪢���
  cnUnLoad_PlaceofBirth        = 81; //+ ���� ஦�����
  cnUnLoad_DepartmentCodeDocum = 82; //+ ��� ���ࠧ������� ���㬥��
  cnUnLoad_SNILS               = 83; //+ �����
  cnUnLoad_CurrentAccountofOrg = 84; //+ ������ ��� �࣠����樨
  cnUnLoad_BIKOrganizations    = 85; //+ ��� �࣠����樨
  cnUnLoad_PaymentDetails      = 86; //+ ��⠫� ���⥦�
  cnUnLoad_Gender              = 87; //+ ���
  cnUnLoad_DateofEmployment    = 88; //+ ��� �ਥ��
  cnUnLoad_Position            = 89; //+ ���������
end;
