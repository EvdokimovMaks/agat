//-----------------------------------------------------------------------------
// �����⨪� 8.10 - ��ࠡ�⭠� ����                   (c) ��௮��� ���������
// XML �ଠ �� �ନ஢���� ॥��஢ � ���
//-----------------------------------------------------------------------------
#doc
XML �ଠ �� �ନ஢���� ॥��஢ � ���
#end

.set name = 'rXMLtoFSS'
.hide
.set filler = '-'
.fields
  Version           // ����� ॥���
  VersionSoftware   // ����� �ணࠬ��
  Author            // ��� ��⠢�⥫�
  Phone             // ����䮭 ��⠢�⥫�
  Email             // Email ���⠢�⥫�
  Kpp               // EMPL_KPP
  Inn               // EMPL_INN
  OGRN              // EMPL_OGRN
  RegNo             // EMPL_REG_NO
.endfields
^^^^^^^^^
.fields            // ���� �� 横��
  FileName         //  ��� 䠩��
  GetDocType       //  ��� ॥���
  DateReesForm     //  ��� �ନ஢���� ॥���
  SNILS            //  �����
  InnPerson        //  ��� ���㤭���
  SurName          //  �������
  FirstName        //  ���
  SecName          //  ����⢮
  RezOrNoRez       //  ��������
  ResidentCode     //  ��� ��࠭�
  IdType           //  ��� ���㬥��
  IdNo             //  ����� ���㬥��
  IdDt             //  ��� ���㬥��
  IdDept           //  ��� �뤠�
  PaymentType      //  ��� ������
//- ���� �஦������ ----
  AddrKladr        //  ���� �� �����
  AddrA1           //  ��ꥪ�
  AddrA2           //  �����
  AddrA3           //  ��த
  AddrA4           //  ��ᥫ���� �㭪�
  AddrA5           //  ����
  AddrHouse        //  ����� ����
  PostIndex        //  ������
  AddrBuilding     //  �����
  AddrFlat         //  ������
  VidReestr        //  ��� ॥���
//- ���� ॣ����樨 ----
  Addr2            //  ���� ॣ����樨
  Addr2Kladr       //  ���� �� �����
  Addr2A1          //  ��ꥪ�
  Addr2A2          //  �����
  Addr2A3          //  ��த
  Addr2A4          //  ��ᥫ���� �㭪�
  Addr2A5          //  ����
  PostIndex2       //  ������
  Addr2House       //  ����� ����
  Addr2Building    //  �����
  Addr2Flat        //  ������
  DublicateFlag    //  �㡫���� �/�
  ReasonEmpl       //  ����ࠤ��訩 �� ��㣮� �।���⨨
  OwnerFlag        //  �����⥫� ��ᮡ��
  SurName2         //  �������
  FirstName2       //  ���
  SecName2         //  ����⢮
  Id2Type          //  ��� ���㬥��
  Id2No            //  ����� ���㬥��
  Id2Dt            //  ��� ���㬥��
  Id2Dept          //  ��� �뤠�
  AccountBic       //  ���
  AccountName      //  ������������ �����
  Account          //  ����� ���
//-- ����� ���客�⥫�
  Employer         //  ���客�⥫�
  EmplFlag         //  ��� ࠡ���
  EmplOgrn         //  ���� ���客�⥫�
  EmplRegNo        //  P�� � ���客�⥫�
  EmplParentNo     //  ��� ���稭������
  EmplKpp          //  ��� ���客�⥫�
  EmplInn          //  ��� ���客�⥫�
//------------�㪮����⢮-------------
  FIO_Boss         //  ��� �㪮����⥫�
  Post_Boss        //  ��������� �㪮����⥫�
  FIO_Buh          //  ��� ��壠���
  RecalcReasonCode //  ��稭� �������
  YearChangeFlag   //  �ਧ��� ������ �����
  Year1Old         //  ��� 1 ���������
  Year2Old         //  ��� 2 ���������
!-------����� ��ਮ�--------------
  Year1            //  ��� �� ��� �������� 1
  Year2            //  ��� �� ��� �������� 2
  BaseSum1         //  �㬬� ��ࠡ�⪠ �� ��� 1
  BaseSum2         //  �㬬� ��ࠡ�⪠ �� ��� 2
  CalcPeriodStart  //  ������ ��ਮ� ��� ��ᮡ�� �� ���ਭ���
  CalcPeriodFinish //  ������ ��ਮ� ��� ��ᮡ�� �� ���ਭ���
  MseDt1           //  ��� ���ࠢ����� � ��� ���
  MseDt2           //  ��� ॣ����樨 ���㬥�⮢ � ��� ���
  MseDt3           //  ��� �ᢨ��⥫��⢮����� � ��� ���
  MseInvalidGroup  //  ��⠭������/�������� ��㯯� �����������
  MseInvaliDays    //  ���-�� ���������� ����, �ᯮ��㥬�� � ⥪�饬 ���� �� ����㤮ᯮᮡ����
  MseResult        //  ��������� ����� ����㤮ᯮᮡ����
  OtherStateDt     //  ��� ��������� ���ﭨ� ����㤮ᯮᮡ����
  ReturnDateLpu    //  ��� ��室� �� ࠡ���
  BaseAvgSal       //  �।��� ��ࠡ�⮪
  RoleWage         //  �������⭮� �����
  BaseCalcDays     //  ��᫮ ���������� ����
  InsurYY          //  �⠦ ���客�� ���
  InsurMM          //  �⠦ ���客�� �����
  NotInsurYY       //  �⠦ �� ���客�� ���
  NotInsurMM       //  �⠦ �� ���客�� �����
  LiveCodeFlag     //  �ਧ��� �᫮��� �஦������
  LiveCode         //  ��� �᫮��� �஦������
  RefNpayOtherNo   //  �ࠢ�� �� ��㣮�� த�⥫� � ������祭�� ��ᮡ�� �����
  RefNpayOtherDt   //  �ࠢ�� �� ��㣮�� த�⥫� � ������祭�� ��ᮡ�� ���
  RefNpayFatherNo   //  �ࠢ�� � ������祭�� ��ᮡ�� �� ��� �����
  RefNpayFatherDt   //  �ࠢ�� � ������祭�� ��ᮡ�� �� ��� ���
  RefNpayMotherNo   //  �ࠢ�� � ������祭�� ��ᮡ�� �� ���� �����
  RefNpayMotherDt   //  �ࠢ�� � ������祭�� ��ᮡ�� �� ���� ���
  WardRefFlag      //  ��뭮������/�����
  WardRefNo        //  ��뭮������/�����
  WardRefDt        //  ��뭮������/�����
  RefFamilyNo      //  ������� � ��।�� � �ਥ���� ᥬ�� �����
  RefFamilyDt      //  ������� � ��।�� � �ਥ���� ᥬ�� ���
  Multipatr        //  �����६���� �室 �� ��᪮�쪨�� ���쬨
  AvgSal           //  �।�������� ��ࠡ�⮪
//--------- �����⥫��⢮ � ஦����� ---------------------------
  CertType         //  ⨯ ���㬥��   ��� ���ᨨ 1.7.2 CertType = RefType
  oCertNo          //  ���� ���㬥�� ���⢥ত��騩  ஦����� �����
  oCertDt          //  ���� ���㬥�� ���⢥ত��騩  ஦�����  ���
  CertNo           //  ����� ���㬥��
  CertDt           //  ��� ���㬥��
  CertBr           //  ��� ஦�����
  CertSurName      //  䠬����
  CertName         //  ���
  CertPatronimic   //  ����⢮
//------- ��ࠢ�� � ஦�����
  Ref24No          //  �ࠢ�� � ஦����� �����
  Ref24Dt          //  �ࠢ�� � ஦����� ���
//------- ��㤮��� �������
  WorkConStart     //  ��� ��砫�
  WorkConFinish    //  ��� ����砭��
//------- ����� �� ���᪥
  HolidOrdNo       //  ����� �ਪ���
  HolidOrdDt       //  ��� �ਪ���
  HolidDtSt        //  ��� ��砫� ���᪠
  HolidDtFn        //  ��� ����砭�� ���᪠
  Dt2Fact          //  ��� 䠪��᪮�� ����砭�� ��ਮ�� �믫��� ��ᮡ��
  ChildSer         //  ��।����� ஦�����
  MhOut            //  �⬥⪠ � ��襭�� ���ਭ�⢠
  OtherChildBr     //  ����稥 ��� � �� ॡ���� � ஦�����
  OtherChildDt     //  ����稥 ��� � �� ॡ���� � ᬥ��
//------- �᫮��� ���᫥���
  CalcCondition1   //  �᫮��� ���᫥��� 1
  CalcCondition2   //  �᫮��� ���᫥��� 2
  CalcCondition3   //  �᫮��� ���᫥��� 3
// --- ���쭨�� ����
  LnCode           //  � ���쭨筮��
  LnDate           //  ��� ��砫� ���쭨筮��
  Reason1          //  ��� ��稭� ����㤮ᯮᮡ����
  Reason2          //  ��� ��� ��稭� ����㤮ᯮᮡ����
  Reason3          //  ��� ��������� ��稭� ����㤮ᯮᮡ����
  Date1            //  ��� ��������� ��稭�
  Date2            //  ���
  VoucherNo        //  ����� ��⥢�� � ᠭ��਩
  VoucherOgrn      //  ��� ᠭ����
  CalcDays         //  ������⢮ ���� �������
  Form1Dt          //  ��� ��� � -1
  Serv1            //  Nrec த�⢥�����
  Serv1Age         //  ������ ���
  Serv1Mm          //  ������ ���
  Serv1RelCode     //  ��� த�⢥���� �裡
  Serv1Fio         //  ��� த�⢥�����
  Serv2            //  Nrec த�⢥�����
  Serv2Age         //  ������ ���
  Serv2Mm          //  ������ ���
  Serv2RelCode     //  ��� த�⢥���� �裡
  Serv2Fio         //  ��� த�⢥�����
  HospitalDT1      //  ��� �ॡ뢠��� � ��ᯨ⠫�
  HospitalDT2      //  ��� �ॡ뢠��� � ��ᯨ⠫�
  FssPayFlag       //  ���� ��ਮ�� ������ �� ��� ���
  DT1              //  ��� ��ਮ�� ����
  DT2              //  ��� ��ਮ�� ����
  PrimaryFlag      //  ��ࢨ�� ��� �த�������
  PrevLnCode       //  ����� ��ࢨ筮�� ���쭨筮��
  BlProd           //  �ਧ��� ������ �த�����饣��� ���쭨筮��
  NextLnCode       //  ����� �த�����饣��� ���쭨筮��
  CalcMetod        //  ����� �� ������
  LpuName          //  ������������ ���
  LpuAdress        //  ���� ���
  LpuOgrn          //  ���� ���
  Birthday         //  ��� ஦�����
  Gender           //  ���
  HospitalBrCode   //  ��� ����襭�� ०���
  HospitalBrDt     //  ��� ����襭�� ०���
// ---- ������ -------------------
  EmplPayment      //  �㬬� �� ��� �।�����
  FssPayment       //  �㬬� �� ��� ���
//------ ����� � ��� ---------------
  Treat1Dt1
  Treat1Dt2
  Treat1DocRole
  Treat1Doctor
  Treat1DocId
  Treat1Doc2Role
  Treat1Chairman
  Treat1Doc2Id
//----------------------------------------------------------
  Treat2Dt1
  Treat2Dt2
  Treat2DocRole
  Treat2Doctor
  Treat2DocId
  Treat2Doc2Role
  Treat2Chairman
  Treat2Doc2Id
//-----------------------------------------------------------
  Treat3Dt1
  Treat3Dt2
  Treat3DocRole
  Treat3Doctor
  Treat3DocId
  Treat3Doc2Role
  Treat3Chairman
  Treat3Doc2Id
// ���⠭���� �� ��� � ࠭��� �ப� ��६������
  Pregn12WFlag         // �ਧ��� ���⠭���� �� ���
  Ref12WeekNo          // ����� �ࠢ��
  Ref12WeekDt          // ��� �ࠢ��
  KfReg                // ������� �����樥��
  KfShortDay           // ����. ��������� ࠡ. ���
  BaseAvgDailySal      // �।��������� ��ࠡ�⮪
  Payment              // �����᪨ �믫�祭��� �㬬�
! ���� �� �����
  prProstoi            // �ਧ��� ������ ���⮥�
//-------------------------------------------
  StartDate
  EndDate
  IdleAverage
.endfields
.{ rXMLtoFSS_Persons CheckEnter
   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
!
.{ rXMLtoFSS_Prostoi CheckEnter
   ^^^
.}
!
.}
!
.begin
 rXMLtoFSS.fExit;
end.
.endform
!
!
!
!
.Linkform 'rXMLtoFSS_1.6' prototype 'rXMLtoFSS'
.nameinlist 'XML �ଠ �� �ନ஢���� ॥��஢ � ���'
.F 'rXMLtoFSS_1.6.xml'
!
.var
  Npp,                 //  ����� �� ���浪�
  TypeInfo : word;     //  �ਧ��� �������
.endvar
!
.fields
  Version           // ����� ॥���
  VersionSoftware   // ����� �ணࠬ��
  Author            // ��� ��⠢�⥫�
  Phone             // ����䮭 ��⠢�⥫�
  Email             // Email ���⠢�⥫�
  Kpp               // EMPL_KPP
  Inn               // EMPL_INN
  OGRN              // EMPL_OGRN
  RegNo             // EMPL_REG_NO
.endfields
!
<?xml version="1.0" encoding="windows-1251"?>
<ROWSET version="^" software="Galaktika"
        version_software ="^"
        author="^"
        phone="^"
        email="^"
        EMPL_KPP="^"
        EMPL_INN="^"
        EMPL_OGRN="^"
        EMPL_REG_NO="^">
!---------------------
.begin
  Npp := 0;
end.
!
.fields            // ���� �� 横��
  FileName         //  ��� 䠩��
  Npp              //  ����� �� ���浪�
  TypeInfo         //  �ਧ��� �������
  GetDocType       //  ��� ॥���
  DateReesForm     //  ��� �ନ஢���� ॥���
  SNILS            //  �����
  InnPerson        //  ��� ���㤭���
  SurName          //  �������
  FirstName        //  ���
  SecName          //  ����⢮
  RezOrNoRez       //  ��������
  ResidentCode     //  ��� ��࠭�
  IdType           //  ��� ���㬥��
  IdNo             //  ����� ���㬥��
  IdDt             //  ��� ���㬥��
  IdDept           //  ��� �뤠�
  //- ���� �஦������ ----
  AddrKladr        //  ���� �� �����
  AddrA1           //  ��ꥪ�
  AddrA2           //  �����
  AddrA3           //  ��த
  AddrA4           //  ��ᥫ���� �㭪�
  AddrA5           //  ����
  AddrHouse        //  ����� ����
  PostIndex        //  ������
  AddrBuilding     //  �����
  AddrFlat         //  ������
 //- ���� ॣ����樨 ----
  Addr2            //  ���� ॣ����樨
  Addr2Kladr       //  ���� �� �����
  Addr2A1          //  ��ꥪ�
  Addr2A2          //  �����
  Addr2A3          //  ��த
  Addr2A4          //  ��ᥫ���� �㭪�
  Addr2A5          //  ����
  PostIndex2       //  ������
  Addr2House       //  ����� ����
  Addr2Building    //  �����
  Addr2Flat        //  ������
  DublicateFlag    //  �㡫���� �/�
  ReasonEmpl       //  ����ࠤ��訩 �� ��㣮� �।���⨨
  OwnerFlag        //  �����⥫� ��ᮡ��
  SurName2         //  �������
  FirstName2       //  ���
  SecName2         //  ����⢮
  Id2Type          //  ��� ���㬥��
  Id2No            //  ����� ���㬥��
  Id2Dt            //  ��� ���㬥��
  Id2Dept          //  ��� �뤠�
  PaymentType      //  ��� ������
  AccountBic       //  ���
  AccountName      //  ������������ �����
  Account          //  ����� ���
  Employer         //  ���客�⥫�
  EmplFlag         //  ��� ࠡ���
  EmplOgrn         //  ���� ���客�⥫�
  EmplRegNo        //  P�� � ���客�⥫�
  EmplParentNo     //  ��� ���稭������
  EmplKpp          //  ��� ���客�⥫�
  EmplInn          //  ��� ���客�⥫�
//------------�㪮����⢮-------------
  FIO_Boss         //  ��� �㪮����⥫�
  Post_Boss        //  ��������� �㪮����⥫�
  FIO_Buh          //  ��� ��壠���
  RecalcReasonCode //  ��稭� �������
  YearChangeFlag   //  �ਧ��� ������ �����
  Year1Old         //  ��� 1 ���������
  Year2Old         //  ��� 2 ���������
!-------����� ��ਮ�-------------- ��� ࠧ��� ���ᨩ
  Year1            //  ��� �� ��� �������� 1
  Year2            //  ��� �� ��� �������� 2
  Year1            //  ��� �� ��� �������� 1
  Year2            //  ��� �� ��� �������� 2
  BaseSum1         //  �㬬� ��ࠡ�⪠ �� ��� 1
  BaseSum2         //  �㬬� ��ࠡ�⪠ �� ��� 2
!
  CalcPeriodStart  //  ������ ��ਮ� ��� ��ᮡ�� �� ���ਭ���
  CalcPeriodFinish //  ������ ��ਮ� ��� ��ᮡ�� �� ���ਭ���
  MseDt1           //  ��� ���ࠢ����� � ��� ���
  MseDt2           //  ��� ॣ����樨 ���㬥�⮢ � ��� ���
  MseDt3           //  ��� �ᢨ��⥫��⢮����� � ��� ���
  MseInvalidGroup  //  ��⠭������/�������� ��㯯� �����������
  MseInvaliDays    //  ���-�� ���������� ����, �ᯮ��㥬�� � ⥪�饬 ���� �� ����㤮ᯮᮡ����
  MseResult        //  ��������� ����� ����㤮ᯮᮡ����
  OtherStateDt     //  ��� ��������� ���ﭨ� ����㤮ᯮᮡ����
  ReturnDateLpu    //  ��� ��室� �� ࠡ���
  BaseAvgSal       //  �।��� ��ࠡ�⮪
  RoleWage         //  �������⭮� �����
  BaseCalcDays     //  ��᫮ ���������� ����
  BaseCalcDays     //  ��᫮ ���������� ����
  InsurYY          //  �⠦ ���客�� ���
  InsurMM          //  �⠦ ���客�� �����
  NotInsurYY       //  �⠦ �� ���客�� ���
  NotInsurMM       //  �⠦ �� ���客�� �����
  LiveCodeFlag     //  �ਧ��� �᫮��� �஦������
  LiveCode         //  ��� �᫮��� �஦������
!------------------------------------------------------------------------------
  RefNpayOtherNo   //  �ࠢ�� �� ��㣮�� த�⥫� � ������祭�� ��ᮡ�� �����
  RefNpayOtherDt   //  �ࠢ�� �� ��㣮�� த�⥫� � ������祭�� ��ᮡ�� ���
  RefNpayFatherNo  //  �ࠢ�� � ������祭�� ��ᮡ�� �� ��� �����
  RefNpayFatherDt  //  �ࠢ�� � ������祭�� ��ᮡ�� �� ��� ���
  RefNpayMotherNo  //  �ࠢ�� � ������祭�� ��ᮡ�� �� ���� �����
  RefNpayMotherDt  //  �ࠢ�� � ������祭�� ��ᮡ�� �� ���� ���
!------------------------------------------------------------------------------
  WardRefFlag      //  ��뭮������/�����
  WardRefNo        //  ��뭮������/�����
  WardRefDt        //  ��뭮������/�����
  RefFamilyNo      //  ������� � ��।�� � �ਥ���� ᥬ�� �����
  RefFamilyDt      //  ������� � ��।�� � �ਥ���� ᥬ�� ���
  Multipatr        //  �����६���� �室 �� ��᪮�쪨�� ���쬨
  AvgSal           //  �।�������� ��ࠡ�⮪
//---------�����⥫��⢮ � ஦�����---------------------------
  CertType         //  ⨯ ���㬥��   RefType ��� ���ᨨ 1.7.2
  CertNo           //  ����� ���㬥��
  CertDt           //  ��� ���㬥��
  CertBr           //  ��� ஦�����
  CertSurName      //  䠬����
  CertName         //  ���
  CertPatronimic   //  ����⢮
  Ref24No          //  �ࠢ�� � ஦����� �����
  Ref24Dt          //  �ࠢ�� � ஦����� ���
  oCertNo          //  ���� ���㬥�� ���⢥ত��騩  ஦����� �����
  oCertDt          //  ���� ���㬥�� ���⢥ত��騩  ஦�����  ���
//------- ��㤮��� �������
  WorkConStart     //  ��� ��砫�
  WorkConFinish    //  ��� ����砭��
//------- ����� �� ���᪥
  HolidOrdNo       //  ����� �ਪ���
  HolidOrdDt       //  ��� �ਪ���
  HolidDtSt        //  ��� ��砫� ���᪠
  HolidDtFn        //  ��� ����砭�� ���᪠
  Dt2Fact          //  ��� 䠪��᪮�� ����砭�� ��ਮ�� �믫��� ��ᮡ��
  ChildSer         //  ��।����� ஦�����
  MhOut            //  �⬥⪠ � ��襭�� ���ਭ�⢠
  OtherChildBr     //  ����稥 ��� � �� ॡ���� � ஦�����
  OtherChildDt     //  ����稥 ��� � �� ॡ���� � ᬥ��
//------- �᫮��� ���᫥���
  CalcCondition1   //  �᫮��� ���᫥��� 1
  CalcCondition2   //  �᫮��� ���᫥��� 2
  CalcCondition3   //  �᫮��� ���᫥��� 3
 // --- ���쭨�� ����
  LnCode           //  � ���쭨筮��
  LnDate           //  ��� ��砫� ���쭨筮��
  Reason1          //  ��� ��稭� ����㤮ᯮᮡ����
  Reason2          //  ��� ��� ��稭� ����㤮ᯮᮡ����
  Reason3          //  ��� ��������� ��稭� ����㤮ᯮᮡ����
  LnCode           //  � ���쭨筮�� �� �᭮���� ���� ࠡ���
  Date1            //  ��� ��������� ��稭�
  Date2            //  ���
  VoucherNo        //  ����� ��⥢�� � ᠭ��਩
  VoucherOgrn      //  ��� ᠭ����
  CalcDays         //  ������⢮ ���� �������
  Form1Dt          //  ��� ��� � -1
  Serv1Age         //  ������ ���
  Serv1Mm          //  ������ ���
  Serv1RelCode     //  ��� த�⢥���� �裡
  Serv1Fio         //  ��� த�⢥�����
  Serv2Age         //  ������ ���
  Serv2Mm          //  ������ ���
  Serv2RelCode     //  ��� த�⢥���� �裡
  Serv2Fio         //  ��� த�⢥�����
  HospitalDT1      //  ��� �ॡ뢠��� � ��ᯨ⠫�
  HospitalDT2      //  ��� �ॡ뢠��� � ��ᯨ⠫�
  FssPayFlag       //  ���� ��ਮ�� ������ �� ��� ���
  DT1              //  ��� ��ਮ�� ����
  DT2              //  ��� ��ਮ�� ����
  PrevLnCode       //  ����� ��ࢨ筮�� ���쭨筮��
  NextLnCode       //  ����� �த�����饣��� ���쭨筮��
  CalcMetod        //  ����� �� ������
  PrimaryFlag      //  ��ࢨ�� ��� �த�������
  LpuName          //  ������������ ���
  LpuAdress        //  ���� ���
  LpuOgrn          //  ���� ���
  Birthday         //  ��� ஦�����
  Gender           //  ���
  HospitalBrCode   //  ��� ����襭�� ०���
  HospitalBrDt     //  ��� ����襭�� ०���
// ---- ������ -------------------
  EmplPayment      //  �㬬� �� ��� �।�����
  FssPayment       //  �㬬� �� ��� ���
//------ ����� � ��� ---------------
  Treat1Dt1
  Treat1Dt2
  Treat1DocRole
  Treat1Doctor
  Treat1DocId
  Treat1Doc2Role
  Treat1Chairman
  Treat1Doc2Id
//----------------------------------------------------------
  Treat2Dt1
  Treat2Dt2
  Treat2DocRole
  Treat2Doctor
  Treat2DocId
  Treat2Doc2Role
  Treat2Chairman
  Treat2Doc2Id
//-----------------------------------------------------------
  Treat3Dt1
  Treat3Dt2
  Treat3DocRole
  Treat3Doctor
  Treat3DocId
  Treat3Doc2Role
  Treat3Chairman
  Treat3Doc2Id
// ���⠭���� �� ��� � ࠭��� �ப� ��६������
  Pregn12WFlag         // �ਧ��� ���⠭���� �� ���
  Ref12WeekNo          // ����� �ࠢ��
  Ref12WeekDt          // ��� �ࠢ��
  KfReg                // ������� �����樥��
  KfShortDay           // ����. ��������� ࠡ. ���
  BaseAvgDailySal      // �।��������� ��ࠡ�⮪
  Payment              // �����᪨ �믫�祭��� �㬬�
! ���� �� �����
  StartDate
  EndDate
  IdleAverage
.endfields
!
.{ rXMLtoFSS_Persons CheckEnter
!
.begin
  Inc(Npp);
  // �ਧ��� �������
  if (RecalcReasonCode <> '' )
    TypeInfo := 1
  else
    TypeInfo := 0;
end.
!
  <ROW>
    <BATCH_NO>^:^</BATCH_NO>
!----- ��稭� �������
    <TYPE_INFO>^</TYPE_INFO>
    <DOC_TYPE>^</DOC_TYPE>
    <DOC_DT1>^</DOC_DT1>
    <SNILS>^</SNILS>
    <INN_PERSON>^</INN_PERSON>
    <SURNAME>^</SURNAME>
    <NAME>^</NAME>
    <PATRONIMIC>^</PATRONIMIC>
    <RESIDENT_FLAG>^</RESIDENT_FLAG>
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpTravma )
.{?INTERNAL; ( RezOrNoRez = 0 ) or ( RezOrNoRez = 2 )
    <RESIDENT_CODE>^</RESIDENT_CODE>
.}
.}
!
    <ID_TYPE>^</ID_TYPE>
    <ID_NO>^</ID_NO>
    <ID_DT>^</ID_DT>
    <ID_DEPT>^</ID_DEPT>
! �᫨ ⨯ ������ 0 - ���⮢� ��ॢ��
.{?INTERNAL; ( PaymentType = '0' )
    <ADDR_KLADR>^</ADDR_KLADR>
    <ADDR_A1>^</ADDR_A1>
    <ADDR_A2>^</ADDR_A2>
    <ADDR_A3>^</ADDR_A3>
    <ADDR_A4>^</ADDR_A4>
    <ADDR_A5>^</ADDR_A5>
    <ADDR_HOUSE>^</ADDR_HOUSE>
    <POST_INDEX>^</POST_INDEX>
!
.{?INTERNAL; ( AddrBuilding <> '' )
    <ADDR_BUILDING>^</ADDR_BUILDING>
.}
!
.{?INTERNAL; ( AddrFlat <> '' )
    <ADDR_FLAT>^</ADDR_FLAT>
.}
.}
    <ADDR2>^</ADDR2>
    <ADDR2_KLADR>^</ADDR2_KLADR>
    <ADDR2_A1>^</ADDR2_A1>
    <ADDR2_A2>^</ADDR2_A2>
    <ADDR2_A3>^</ADDR2_A3>
    <ADDR2_A4>^</ADDR2_A4>
    <ADDR2_A5>^</ADDR2_A5>
! �᫨ ��� ॥��� cn_vpNetrud, cn_vpTravma
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpTravma )
    <POST_INDEX2>^</POST_INDEX2>
.}
    <ADDR2_HOUSE>^</ADDR2_HOUSE>
    <ADDR2_BUILDING>^</ADDR2_BUILDING>
    <ADDR2_FLAT>^</ADDR2_FLAT>
!------------------------------
! �᫨ ��� ॥��� cn_vpNetrud, cn_vpBerem, cn_vpTravma, cn_vpRanBerem
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
    <DUPLICATE_FLAG>^</DUPLICATE_FLAG>
.}
!------------------------------
.{?INTERNAL; ( VidReestr = cn_vpTravma )  or ( VidReestr = cn_vpOtpusk )
    <REASON_EMPL>^</REASON_EMPL>
.}
!-------------------------------
    <OWNER_FLAG>^</OWNER_FLAG>
! �᫨ �����⥫� ��ᮡ�� 0- 㯮�����祭�� �।�⠢�⥫�
.{?INTERNAL; ( OwnerFlag = '0' )
    <SURNAME2>^</SURNAME2>
    <NAME2>^</NAME2>
    <PATRONIMIC2>^</PATRONIMIC2>
.{?INTERNAL; ( Id2Type <> '' )
    <ID2_TYPE>^</ID2_TYPE>
    <ID2_NO>^</ID2_NO>
    <ID2_DT>^</ID2_DT>
    <ID2_DEPT>^</ID2_DEPT>
.}
.}
!--------------------------------
    <PAYMENT_TYPE>^</PAYMENT_TYPE>
! �᫨ ����� �१ ����
.{?INTERNAL; ( PaymentType = 1 )
    <ACCOUNT_BIC>^</ACCOUNT_BIC>
    <ACCOUNT_NAME>^</ACCOUNT_NAME>
    <ACCOUNT>^</ACCOUNT>
.}
!-- ����� ���客�⥫�
    <EMPLOYER>^</EMPLOYER>
    <EMPL_FLAG>^</EMPL_FLAG>
    <EMPL_OGRN>^</EMPL_OGRN>
    <EMPL_REG_NO>^</EMPL_REG_NO>
    <EMPL_PARENT_NO>^</EMPL_PARENT_NO>
    <EMPL_KPP>^</EMPL_KPP>
    <EMPL_INN>^</EMPL_INN>
!------------�㪮����⢮-------------
    <APPROVE1>^</APPROVE1>
    <APPROVE1_ROLE>^</APPROVE1_ROLE>
    <APPROVE2>^</APPROVE2>
.{?INTERNAL; ( TypeInfo = 1 )
    <RECALC_REASON_CODE>^</RECALC_REASON_CODE>
.}
!------------�⬥⪠ � ������ ����� ��� ����
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
!
.{?INTERNAL; ( CalcMetod = 1 )
!
.{?INTERNAL; ( YearChangeFlag <> '' )
    <YEAR_CHANGE_FLAG>^</YEAR_CHANGE_FLAG>
!
.{?INTERNAL; ( YearChangeFlag = 1 )
    <YEAR1_OLD>^</YEAR1_OLD>
    <YEAR2_OLD>^</YEAR2_OLD>
.}
.}
!-------����� ��ਮ�--------------
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpYhodChild )
    <YEAR1>^</YEAR1>
    <YEAR2>^</YEAR2>
.}
.} // ( CalcMetod = 1 )
!-------����� ��ਮ�--------------
.{?INTERNAL; ( Version = '1.7.2' )
.{?INTERNAL; ( CalcMetod = 0 )
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpYhodChild )
    <YEAR1>^</YEAR1>
    <YEAR2>^</YEAR2>
.}
.} // ( CalcMetod = 0 )
.} // 1.7.2
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpTravma )
    <BASE_SUM1>^</BASE_SUM1>
    <BASE_SUM2>^</BASE_SUM2>
.}
.}  // cn_vpYhodChild  cn_vpNetrud  cn_vpBerem  cn_vpTravma  cn_vpRanBerem
!
.{?INTERNAL; ( CalcMetod = 0 )
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpRanBerem )
    <CALC_MH_PERIOD_START>^</CALC_MH_PERIOD_START>
    <CALC_MH_PERIOD_FINISH>^</CALC_MH_PERIOD_FINISH>
.}
.}
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
    <MSE_DT1>^</MSE_DT1>
    <MSE_DT2>^</MSE_DT2>
    <MSE_DT3>^</MSE_DT3>
    <MSE_INVALID_GROUP>^</MSE_INVALID_GROUP>
    <MSE_INVALID_DAYS>^</MSE_INVALID_DAYS>
!
.{?INTERNAL; ( MseResult <> '' )
    <MSE_RESULT>^</MSE_RESULT>
.}
.{?INTERNAL; ( OtherStateDt <> '' )
    <OTHER_STATE_DT>^</OTHER_STATE_DT>
.}
!  ��� ��室� �� ࠡ���
.{?INTERNAL; ( MseResult = '' )
    <RETURN_DATE_LPU>^</RETURN_DATE_LPU>
.}
.}
!----------- �।��� ��ࠡ�⮪ ---------------------------
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpTravma )
    <BASE_AVG_SAL>^</BASE_AVG_SAL>
.}
!----------------  �������⭮� �����
.{?INTERNAL; ( BaseAvgSal = 0 ) and ( CalcMetod = 0 )
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpRanBerem )
    <ROLE_WAGE>^</ROLE_WAGE>
.}
.}
!----------- ��᫮ ���������� ���� --------------------
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBerem )
    <BASE_CALC_DAYS>^</BASE_CALC_DAYS>
.}
!
.{?INTERNAL; ( Version = '1.7.3' )
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpTravma )
    <BASE_CALC_DAYS>^</BASE_CALC_DAYS>
.}
.} // 1.7.3
!------------ �⠦ ---------------------------------------
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpRanBerem )
    <INSUR_YY>^</INSUR_YY>
    <INSUR_MM>^</INSUR_MM>
    <NOT_INSUR_YY>^</NOT_INSUR_YY>
    <NOT_INSUR_MM>^</NOT_INSUR_MM>
.}
!------�᫮��� �஦������\ࠡ���-------
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) and ( LiveCode <> '' )
    <LIVE_COND_FLAG>^</LIVE_COND_FLAG>
    <LIVE_COND>^</LIVE_COND>
.}
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBornChild )
! �ࠢ�� �� ��㣮�� த�⥫� � ������祭�� ��ᮡ��
.{?INTERNAL; ( RefNpayOtherNo <> '' )
!
.{?INTERNAL; ( VidReestr = cn_vpBornChild )
    <REF_NPAY_OTHER_NO>^</REF_NPAY_OTHER_NO>
    <REF_NPAY_OTHER_DT>^</REF_NPAY_OTHER_DT>
.}
.} // ( RefNpayOtherNo <> '' )
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild )
! �ࠢ�� �� ���
.{?INTERNAL; ( RefNpayFatherNo <> '' )
    <REF_NPAY_FATHER_NO>^</REF_NPAY_FATHER_NO>
    <REF_NPAY_FATHER_DT>^</REF_NPAY_FATHER_DT>
.}
! �ࠢ�� �� ����
.{?INTERNAL; ( RefNpayMotherNo <> '' )
    <REF_NPAY_MOTHER_NO>^</REF_NPAY_MOTHER_NO>
    <REF_NPAY_MOTHER_DT>^</REF_NPAY_MOTHER_DT>
.}
!
.}//( VidReestr = cn_vpYhodChild )
!
! ��뭮������/�����
.{?INTERNAL; ( WardRefNo <> '' )
    <WARD_FLAG>^</WARD_FLAG>
    <WARD_REF_NO>^</WARD_REF_NO>
    <WARD_REF_DT>^</WARD_REF_DT>
.}
! ������� � ��।�� � �ਥ���� ᥬ��
.{?INTERNAL; ( RefFamilyNo <> '' )
.{?INTERNAL; ( VidReestr = cn_vpBornChild )
    <REF_FAMILY_NO>^</REF_FAMILY_NO>
    <REF_FAMILY_DT>^</REF_FAMILY_DT>
.}
.} // ( RefFamilyNo <> '' )
.}
!---------------------------------------------------------
!    � � � � � �    � �   � � � � �  �  � � � � � � � �
!---------------------------------------------------------
.{?INTERNAL; ( VidReestr = cn_vpYhodChild )
    <MULTPATR>^</MULTPATR>
.{?INTERNAL; ( Multipatr = '1' )
    <AVG_SAL>^</AVG_SAL>
.}
.}
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBornChild )
! ᢨ��⥫��⢮ � ஦�����
.{?INTERNAL; ( VidReestr = cn_vpBornChild ) and ( CertType <> '' )
    <REF_TYPE>^</REF_TYPE>
.}
!
.{?INTERNAL; ( CertNo <> '' )
    <CERT_NO>^</CERT_NO>
    <CERT_DT>^</CERT_DT>
.}
    <CERT_BR>^</CERT_BR>
    <CERT_SURNAME>^</CERT_SURNAME>
    <CERT_NAME>^</CERT_NAME>
    <CERT_PATRONIMIC>^</CERT_PATRONIMIC>
.{?INTERNAL; ( Ref24No <> '' )
! �ࠢ�� � ஦�����
    <REF_24_NO>^</REF_24_NO>
    <REF_24_DT>^</REF_24_DT>
.}
!
.{?INTERNAL; ( oCertNo <> '' )
! �ࠢ�� � ஦�����
    <O_CERT_NO>^</O_CERT_NO>
    <O_CERT_DT>^</O_CERT_DT>
.}
!
.}
.{?INTERNAL; ( VidReestr = cn_vpYhodChild )
! ��㤮��� �������
    <WORK_CONTRACT_START_DT>^</WORK_CONTRACT_START_DT>
    <WORK_CONTRACT_FINISH_DT>^</WORK_CONTRACT_FINISH_DT>
! ����� �� ���᪥
    <HOLID_ORD_NO>^</HOLID_ORD_NO>
    <HOLID_ORD_DT>^</HOLID_ORD_DT>
    <HOLID_DT_ST>^</HOLID_DT_ST>
    <HOLID_DT_FN>^</HOLID_DT_FN>
    <DT2_FACT>^</DT2_FACT>
    <CHILD_SER>^</CHILD_SER>
    <MH_OUT>^</MH_OUT>
.{?INTERNAL; ( ChildSer > 1 )
    <OTHER_CHILD_FLAG_BR>^</OTHER_CHILD_FLAG_BR>
    <OTHER_CHILD_FLAG_DT>^</OTHER_CHILD_FLAG_DT>
.}
.}
!------------------------------------------------------
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
! �᫮��� ���᫥���
    <CALC_CONDITION1>^</CALC_CONDITION1>
    <CALC_CONDITION2>^</CALC_CONDITION2>
    <CALC_CONDITION3>^</CALC_CONDITION3>
.}
!---------------------------------------------------------
! � � � � � �  � �   � � � � � � � � � �   � � � � � �
!---------------------------------------------------------
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
! ���쭨�� ����
    <LN_CODE>^</LN_CODE>
    <LN_DATE>^</LN_DATE>
    <REASON1>^</REASON1>
    <REASON2>^</REASON2>
    <REASON3>^</REASON3>
.{?INTERNAL; ( EmplFlag = 0 )
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma )
    <PARENT_CODE>^</PARENT_CODE>
.}
.}
!
    <DATE1>^</DATE1>
.{?INTERNAL; ( Date2 <> '' )
    <DATE2>^</DATE2>
    <VOUCHER_NO>^</VOUCHER_NO>
    <VOUCHER_OGRN>^</VOUCHER_OGRN>
.}
.{?INTERNAL; ( VidReestr = cn_vpOtpusk )
    <CALC_DAYS>^</CALC_DAYS>
.}
!
.{?INTERNAL; ( Form1Dt <> '' )
    <FORM1_DT>^</FORM1_DT>
.}
!
.{?INTERNAL; ( Serv1 <> '' )
    <SERV1_AGE>^</SERV1_AGE>
    <SERV1_MM>^</SERV1_MM>
    <SERV1_RELATION_CODE>^</SERV1_RELATION_CODE>
    <SERV1_FIO>^</SERV1_FIO>
.}
.{?INTERNAL; ( Serv2 <> '' )
    <SERV2_AGE>^</SERV2_AGE>
    <SERV2_MM>^</SERV2_MM>
    <SERV2_RELATION_CODE>^</SERV2_RELATION_CODE>
    <SERV2_FIO>^</SERV2_FIO>
.}
!
.{?INTERNAL; ( HospitalDt1 <> '' )
    <HOSPITAL_DT1>^</HOSPITAL_DT1>
    <HOSPITAL_DT2>^</HOSPITAL_DT2>
.}
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma )
    <FSS_PAYMENT_FLAG>^</FSS_PAYMENT_FLAG>
.}
!
.{?INTERNAL; ( FssPayFlag = 1 )
    <DT1>^</DT1>
    <DT2>^</DT2>
.}
! ����� ��ࢨ筮�� ���쭨筮��
.{?INTERNAL; ( PrimaryFlag = '0' )
    <PREV_LN_CODE>^</PREV_LN_CODE>
.}
!
.{?INTERNAL; ( BlProd = '1' ) and ( MseResult = '31' )
    <NEXT_LN_CODE>^</NEXT_LN_CODE>
.}
.}
    <CALC_METHOD>^</CALC_METHOD>
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
    <PRIMARY_FLAG>^</PRIMARY_FLAG>
    <LPU_NAME>^</LPU_NAME>
    <LPU_ADDRESS>^</LPU_ADDRESS>
    <LPU_OGRN>^</LPU_OGRN>
.}
    <BIRTHDAY>^</BIRTHDAY>
    <GENDER>^</GENDER>
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
! ����襭�� ०���
.{?INTERNAL; ( HospitalBrCode <> 0 )
    <HOSPITAL_BREACH_CODE>^</HOSPITAL_BREACH_CODE>
    <HOSPITAL_BREACH_DT>^</HOSPITAL_BREACH_DT>
.}
! ������
    <EMPL_PAYMENT>^</EMPL_PAYMENT>
    <FSS_PAYMENT>^</FSS_PAYMENT>
! ����� � ���
.{?INTERNAL; ( Treat1Doctor <> '' )
    <TREAT1_DT1>^</TREAT1_DT1>
    <TREAT1_DT2>^</TREAT1_DT2>
    <TREAT1_DOCTOR_ROLE>^</TREAT1_DOCTOR_ROLE>
    <TREAT1_DOCTOR>^</TREAT1_DOCTOR>
    <TREAT1_DOC_ID>^</TREAT1_DOC_ID>
    <TREAT1_DOCTOR2_ROLE>^</TREAT1_DOCTOR2_ROLE>
    <TREAT1_CHAIRMAN_VK>^</TREAT1_CHAIRMAN_VK>
    <TREAT1_DOC2_ID>^</TREAT1_DOC2_ID>
.}
!----------------------------------------------------------
.{?INTERNAL; ( Treat2Doctor <> '' )
    <TREAT2_DT1>^</TREAT2_DT1>
    <TREAT2_DT2>^</TREAT2_DT2>
    <TREAT2_DOCTOR_ROLE>^</TREAT2_DOCTOR_ROLE>
    <TREAT2_DOCTOR>^</TREAT2_DOCTOR>
    <TREAT2_DOC_ID>^</TREAT2_DOC_ID>
    <TREAT2_DOCTOR2_ROLE>^</TREAT2_DOCTOR2_ROLE>
    <TREAT2_CHAIRMAN_VK>^</TREAT2_CHAIRMAN_VK>
    <TREAT2_DOC2_ID>^</TREAT2_DOC2_ID>
.}
!-----------------------------------------------------------
.{?INTERNAL; ( Treat3Doctor <> '' )
    <TREAT3_DT1>^</TREAT3_DT1>
    <TREAT3_DT2>^</TREAT3_DT2>
    <TREAT3_DOCTOR_ROLE>^</TREAT3_DOCTOR_ROLE>
    <TREAT3_DOCTOR>^</TREAT3_DOCTOR>
    <TREAT3_DOC_ID>^</TREAT3_DOC_ID>
    <TREAT3_DOCTOR2_ROLE>^</TREAT3_DOCTOR2_ROLE>
    <TREAT3_CHAIRMAN_VK>^</TREAT3_CHAIRMAN_VK>
    <TREAT3_DOC2_ID>^</TREAT3_DOC2_ID>
.}
.}
!------------------------------------------------------------------
! � � � � � �  �� � � � � � �  � � � � �   � � � � � � � � � � � �
!------------------------------------------------------------------
.{?INTERNAL; ( VidReestr = cn_vpBerem )
    <PREGN12W_FLAG>^</PREGN12W_FLAG>
.}
! ���⠭���� �� ��� � ࠭��� �ப� ��६������
.{?INTERNAL; ( VidReestr = cn_vpRanBerem ) or ( VidReestr = cn_vpBerem )
.{?INTERNAL; ( Pregn12WFlag = '1' )
    <REF_12WEEK_NO>^</REF_12WEEK_NO>
    <REF_12WEEK_DT>^</REF_12WEEK_DT>
.}
.}
    <KF_REG>^</KF_REG>
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
    <KF_SHORT_DAY>^</KF_SHORT_DAY>
    <BASE_AVG_DAILY_SAL>^</BASE_AVG_DAILY_SAL>
.}
!
.{?INTERNAL; ( VidReestr = cn_vpPogreb ) or ( VidReestr = cn_vpDopDay )
    <PAYMENT>^</PAYMENT>     //䠪��᪨ �믫�祭��� �㬬�
.}
!---------- ������� -------------------
.{?INTERNAL; ( prProstoi = 0 )
    <PERIODS></PERIODS>
.}
!
.{?INTERNAL; ( prProstoi = 1 )
    <PERIODS>
.}
.{ rXMLtoFSS_Prostoi CheckEnter
.{?INTERNAL; ( StartDate <> '' )
      <PERIOD>
        <START_DATE>^</START_DATE>
        <END_DATE>^</END_DATE>
        <IDLE_AVERAGE>^</IDLE_AVERAGE>
      </PERIOD>
.}
.}
.{?INTERNAL; ( prProstoi = 1 )
    </PERIODS>
.}
!--------------------------------------
  </ROW>
.}
</ROWSET>

.begin
 rXMLtoFSS.fExit;
end.
.endform
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!-------------------------------------------------------------------------------------------------------------
.Linkform 'rXMLtoFSS_1.7.2' prototype 'rXMLtoFSS'
.nameinlist 'XML �ଠ �� �ନ஢���� ॥��஢ � ���_TAXNET'
.F 'rXMLtoFSS_1.6.xml'
!
.var
  Npp,                 //  ����� �� ���浪�
  TypeInfo : word;     //  �ਧ��� �������
.endvar
!
.fields
  Version           // ����� ॥���
  VersionSoftware   // ����� �ணࠬ��
  Author            // ��� ��⠢�⥫�
  Phone             // ����䮭 ��⠢�⥫�
  Email             // Email ���⠢�⥫�
  Kpp               // EMPL_KPP
  Inn               // EMPL_INN
  OGRN              // EMPL_OGRN
  RegNo             // EMPL_REG_NO
.endfields
!
<?xml version="1.0" encoding="windows-1251"?>
<ROWSET version="^" software="Galaktika"
        version_software ="^"
        author="^"
        phone="^"
        email="^"
        EMPL_KPP="^"
        EMPL_INN="^"
        EMPL_OGRN="^"
        EMPL_REG_NO="^">
!---------------------
.begin
  Npp := 0;
end.
!
.fields            // ���� �� 横��
  FileName         //  ��� 䠩��
  Npp              //  ����� �� ���浪�
  TypeInfo         //  �ਧ��� �������
  RecalcReasonCode //  ��稭� �������
  GetDocType       //  ��� ॥���
  DateReesForm     //  ��� �ନ஢���� ॥���
  SNILS            //  �����
  InnPerson        //  ��� ���㤭���
  SurName          //  �������
  FirstName        //  ���
  SecName          //  ����⢮
  RezOrNoRez       //  ��������
  ResidentCode     //  ��� ��࠭�
  IdType           //  ��� ���㬥��
  IdNo             //  ����� ���㬥��
  IdDt             //  ��� ���㬥��
  IdDept           //  ��� �뤠�
  //- ���� �஦������ ----
  AddrKladr        //  ���� �� �����
  AddrA1           //  ��ꥪ�
  AddrA2           //  �����
  AddrA3           //  ��த
  AddrA4           //  ��ᥫ���� �㭪�
  AddrA5           //  ����
  AddrHouse        //  ����� ����
  AddrBuilding     //  �����
  AddrFlat         //  ������
  PostIndex        //  ������
  OwnerFlag        //  �����⥫� ��ᮡ��
  PaymentType      //  ��� ������
  AccountBic       //  ���
  AccountName      //  ������������ �����
  Account          //  ����� ���
  SurName2         //  �������
  FirstName2       //  ���
  SecName2         //  ����⢮
  Id2Type          //  ��� ���㬥��
  Id2No            //  ����� ���㬥��
  Id2Dt            //  ��� ���㬥��
  Id2Dept          //  ��� �뤠�
 //- ���� ॣ����樨 ----
  Addr2            //  ���� ॣ����樨
  Addr2Kladr       //  ���� �� �����
  Addr2A1          //  ��ꥪ�
  Addr2A2          //  �����
  Addr2A3          //  ��த
  Addr2A4          //  ��ᥫ���� �㭪�
  Addr2A5          //  ����
  Addr2House       //  ����� ����
  Addr2Building    //  �����
  Addr2Flat        //  ������
  PostIndex2       //  ������
  Employer         //  ���客�⥫�
  EmplFlag         //  ��� ࠡ���
  EmplOgrn         //  ���� ���客�⥫�
  EmplRegNo        //  P�� � ���客�⥫�
  EmplParentNo     //  ��� ���稭������
  EmplKpp          //  ��� ���客�⥫�
  EmplInn          //  ��� ���客�⥫�
//------------�㪮����⢮-------------
  FIO_Boss         //  ��� �㪮����⥫�
  Post_Boss        //  ��������� �㪮����⥫�
  FIO_Buh          //  ��� ��壠���
//------- ��㤮��� �������
  WorkConStart     //  ��� ��砫�
  WorkConFinish    //  ��� ����砭��
  RoleWage         //  �������⭮� �����
  BaseCalcDays     //  ��᫮ ���������� ����
  BaseCalcDays     //  ��᫮ ���������� ����
  BaseAvgSal       //  �।��� ��ࠡ�⮪
  AvgSal           //  �।�������� ��ࠡ�⮪
  Multipatr        //  �����६���� �室 �� ��᪮�쪨�� ���쬨
  BaseAvgDailySal  // �।��������� ��ࠡ�⮪
  YearChangeFlag   //  �ਧ��� ������ �����
  Year1Old         //  ��� 1 ���������
  Year2Old         //  ��� 2 ���������
!-------����� ��ਮ�-------------- ��� ࠧ��� ���ᨩ
  Year1            //  ��� �� ��� �������� 1
  Year2            //  ��� �� ��� �������� 2
  Year1            //  ��� �� ��� �������� 1
  Year2            //  ��� �� ��� �������� 2
  BaseSum1         //  �㬬� ��ࠡ�⪠ �� ��� 1
  BaseSum2         //  �㬬� ��ࠡ�⪠ �� ��� 2
  KfReg            // ������� �����樥��
  KfShortDay       // ����. ��������� ࠡ. ���
  LiveCodeFlag     //  �ਧ��� �᫮��� �஦������
  LiveCode         //  ��� �᫮��� �஦������
  CalcPeriodStart  //  ������ ��ਮ� ��� ��ᮡ�� �� ���ਭ���
  CalcPeriodFinish //  ������ ��ਮ� ��� ��ᮡ�� �� ���ਭ���
  InsurYY          //  �⠦ ���客�� ���
  InsurMM          //  �⠦ ���客�� �����
  NotInsurYY       //  �⠦ �� ���客�� ���
  NotInsurMM       //  �⠦ �� ���客�� �����
 // --- ���쭨�� ����
  LnCode           //  � ���쭨筮��
  PrevLnCode       //  ����� ��ࢨ筮�� ���쭨筮��
  PrimaryFlag      //  ��ࢨ�� ��� �த�������
  DublicateFlag    //  �㡫���� �/�
  LnDate           //  ��� ��砫� ���쭨筮��
  LpuName          //  ������������ ���
  LpuAdress        //  ���� ���
  LpuOgrn          //  ���� ���
  Birthday         //  ��� ஦�����
  Gender           //  ���
  Reason1          //  ��� ��稭� ����㤮ᯮᮡ����
  Reason2          //  ��� ��� ��稭� ����㤮ᯮᮡ����
  Reason3          //  ��� ��������� ��稭� ����㤮ᯮᮡ����
  LnCode           //  � ���쭨筮�� �� �᭮���� ���� ࠡ���
  Date1            //  ��� ��������� ��稭�
  Date2            //  ���
  VoucherNo        //  ����� ��⥢�� � ᠭ��਩
  VoucherOgrn      //  ��� ᠭ����
  Serv1Age         //  ������ ���
  Serv1Mm          //  ������ ���
  Serv1RelCode     //  ��� த�⢥���� �裡
  Serv1Fio         //  ��� த�⢥�����
  Serv2Age         //  ������ ���
  Serv2Mm          //  ������ ���
  Serv2RelCode     //  ��� த�⢥���� �裡
  Serv2Fio         //  ��� த�⢥�����
 // ���⠭���� �� ��� � ࠭��� �ப� ��६������
  Pregn12WFlag     //  �ਧ��� ���⠭���� �� ���
  HospitalDT1      //  ��� �ॡ뢠��� � ��ᯨ⠫�
  HospitalDT2      //  ��� �ॡ뢠��� � ��ᯨ⠫�
  HospitalBrCode   //  ��� ����襭�� ०���
  HospitalBrDt     //  ��� ����襭�� ०���
!
  MseDt1           //  ��� ���ࠢ����� � ��� ���
  MseDt2           //  ��� ॣ����樨 ���㬥�⮢ � ��� ���
  MseDt3           //  ��� �ᢨ��⥫��⢮����� � ��� ���
  MseInvalidGroup  //  ��⠭������/�������� ��㯯� �����������
  MseInvaliDays    //  ���-�� ���������� ����, �ᯮ��㥬�� � ⥪�饬 ���� �� ����㤮ᯮᮡ����
  MseResult        //  ��������� ����� ����㤮ᯮᮡ����
//------ ����� � ��� ---------------
  Treat1Dt1
  Treat1Dt2
  Treat1DocRole
  Treat1Doctor
  Treat1DocId
  Treat1Doc2Role
  Treat1Chairman
  Treat1Doc2Id
//----------------------------------------------------------
  Treat2Dt1
  Treat2Dt2
  Treat2DocRole
  Treat2Doctor
  Treat2DocId
  Treat2Doc2Role
  Treat2Chairman
  Treat2Doc2Id
//-----------------------------------------------------------
  Treat3Dt1
  Treat3Dt2
  Treat3DocRole
  Treat3Doctor
  Treat3DocId
  Treat3Doc2Role
  Treat3Chairman
  Treat3Doc2Id
  OtherStateDt     //  ��� ��������� ���ﭨ� ����㤮ᯮᮡ����
  ReturnDateLpu    //  ��� ��室� �� ࠡ���
  NextLnCode       //  ����� �த�����饣��� ���쭨筮��
  CalcMetod        //  ����� �� ������
//------- �᫮��� ���᫥���
  CalcCondition1   //  �᫮��� ���᫥��� 1
  CalcCondition2   //  �᫮��� ���᫥��� 2
  CalcCondition3   //  �᫮��� ���᫥��� 3
  Form1Dt          //  ��� ��� � -1
  FssPayFlag       //  ���� ��ਮ�� ������ �� ��� ���
  DT1              //  ��� ��ਮ�� ����
  DT2              //  ��� ��ਮ�� ����
  CalcDays         //  ������⢮ ���� �������
  Dt2Fact          //  ��� 䠪��᪮�� ����砭�� ��ਮ�� �믫��� ��ᮡ��
 // ---- ������ -------------------
  EmplPayment      //  �㬬� �� ��� �।�����
  FssPayment       //  �㬬� �� ��� ���
  Payment          // �����᪨ �믫�祭��� �㬬�
//--------- �����⥫��⢮ � ஦����� ---------------------------
  CertType         //  ⨯ ���㬥��   RefType ��� ���ᨨ 1.7.2
  CertNo           //  ����� ���㬥��
  CertDt           //  ��� ���㬥��
  CertBr           //  ��� ஦�����
  CertSurName      //  䠬����
  CertName         //  ���
  CertPatronimic   //  ����⢮
  Ref24No          //  �ࠢ�� � ஦����� �����
  Ref24Dt          //  �ࠢ�� � ஦����� ���
  oCertNo          //  ���� ���㬥�� ���⢥ত��騩  ஦����� �����
  oCertDt          //  ���� ���㬥�� ���⢥ত��騩  ஦�����  ���
  ChildSer         //  ��।����� ஦�����
  MhOut            //  �⬥⪠ � ��襭�� ���ਭ�⢠
//------- ����� �� ���᪥
  HolidOrdNo       //  ����� �ਪ���
  HolidOrdDt       //  ��� �ਪ���
  HolidDtSt        //  ��� ��砫� ���᪠
  HolidDtFn        //  ��� ����砭�� ���᪠
!------------------------------------------------------------------------------
  RefNpayOtherNo   //  �ࠢ�� �� ��㣮�� த�⥫� � ������祭�� ��ᮡ�� �����  ��� ���ᨨ 1.7.2
  RefNpayOtherDt   //  �ࠢ�� �� ��㣮�� த�⥫� � ������祭�� ��ᮡ�� ���
  WardRefFlag      //  ��뭮������/�����
  WardRefNo        //  ��뭮������/�����
  WardRefDt        //  ��뭮������/�����
!------------------------------------------------------------------------------
  RefFamilyNo      //  ������� � ��।�� � �ਥ���� ᥬ�� �����  ��� ���ᨨ 1.7.2
  RefFamilyDt      //  ������� � ��।�� � �ਥ���� ᥬ�� ���
  OtherChildBr     //  ����稥 ��� � �� ॡ���� � ஦�����
  OtherChildDt     //  ����稥 ��� � �� ॡ���� � ᬥ��
  RefNpayFatherNo  //  �ࠢ�� � ������祭�� ��ᮡ�� �� ��� �����
  RefNpayFatherDt  //  �ࠢ�� � ������祭�� ��ᮡ�� �� ��� ���
  RefNpayMotherNo  //  �ࠢ�� � ������祭�� ��ᮡ�� �� ���� �����
  RefNpayMotherDt  //  �ࠢ�� � ������祭�� ��ᮡ�� �� ���� ���
// ���⠭���� �� ��� � ࠭��� �ப� ��६������
  Ref12WeekNo      // ����� �ࠢ��
  Ref12WeekDt      // ��� �ࠢ��
  ReasonEmpl       //  ����ࠤ��訩 �� ��㣮� �।���⨨
! ���� �� �����
  StartDate
  EndDate
  IdleAverage
.endfields
!
.{ rXMLtoFSS_Persons CheckEnter
!
.begin
  Inc(Npp);
  // �ਧ��� �������
  if (RecalcReasonCode <> '' )
    TypeInfo := 1
  else
    TypeInfo := 0;
end.
!
  <ROW>
    <BATCH_NO>^:^</BATCH_NO>
!----- ��稭� �������
    <TYPE_INFO>^</TYPE_INFO>
.{?INTERNAL; ( TypeInfo = 1 )
    <RECALC_REASON_CODE>^</RECALC_REASON_CODE>
.}
    <DOC_TYPE>^</DOC_TYPE>
    <DOC_DT1>^</DOC_DT1>
    <SNILS>^</SNILS>
    <INN_PERSON>^</INN_PERSON>
    <SURNAME>^</SURNAME>
    <NAME>^</NAME>
    <PATRONIMIC>^</PATRONIMIC>
    <RESIDENT_FLAG>^</RESIDENT_FLAG>
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpTravma )
    <RESIDENT_CODE>^</RESIDENT_CODE>
.}
!
    <ID_TYPE>^</ID_TYPE>
    <ID_NO>^</ID_NO>
    <ID_DT>^</ID_DT>
    <ID_DEPT>^</ID_DEPT>
! �᫨ ⨯ ������ 0 - ���⮢� ��ॢ��
    <ADDR_KLADR>^</ADDR_KLADR>
    <ADDR_A1>^</ADDR_A1>
    <ADDR_A2>^</ADDR_A2>
    <ADDR_A3>^</ADDR_A3>
    <ADDR_A4>^</ADDR_A4>
    <ADDR_A5>^</ADDR_A5>
    <ADDR_HOUSE>^</ADDR_HOUSE>
!
.{?INTERNAL; ( AddrBuilding <> '' )
    <ADDR_BUILDING>^</ADDR_BUILDING>
.}
!
.{?INTERNAL; ( AddrFlat <> '' )
    <ADDR_FLAT>^</ADDR_FLAT>
.}
    <POST_INDEX>^</POST_INDEX>
    <OWNER_FLAG>^</OWNER_FLAG>
    <PAYMENT_TYPE>^</PAYMENT_TYPE>
! �᫨ ����� �१ ����
.{?INTERNAL; ( PaymentType = 1 )
    <ACCOUNT_BIC>^</ACCOUNT_BIC>
    <ACCOUNT_NAME>^</ACCOUNT_NAME>
    <ACCOUNT>^</ACCOUNT>
.}
! �᫨ �����⥫� ��ᮡ�� 0- 㯮�����祭�� �।�⠢�⥫�
.{?INTERNAL; ( OwnerFlag = '0' )
    <SURNAME2>^</SURNAME2>
    <NAME2>^</NAME2>
    <PATRONIMIC2>^</PATRONIMIC2>
.{?INTERNAL; ( Id2Type <> '' )
    <ID2_TYPE>^</ID2_TYPE>
    <ID2_NO>^</ID2_NO>
    <ID2_DT>^</ID2_DT>
    <ID2_DEPT>^</ID2_DEPT>
.}
.}
    <ADDR2>^</ADDR2>
    <ADDR2_KLADR>^</ADDR2_KLADR>
    <ADDR2_A1>^</ADDR2_A1>
    <ADDR2_A2>^</ADDR2_A2>
    <ADDR2_A3>^</ADDR2_A3>
    <ADDR2_A4>^</ADDR2_A4>
    <ADDR2_A5>^</ADDR2_A5>
    <ADDR2_HOUSE>^</ADDR2_HOUSE>
    <ADDR2_BUILDING>^</ADDR2_BUILDING>
    <ADDR2_FLAT>^</ADDR2_FLAT>
    <POST_INDEX2>^</POST_INDEX2>
!-- ����� ���客�⥫�
    <EMPLOYER>^</EMPLOYER>
    <EMPL_FLAG>^</EMPL_FLAG>
    <EMPL_OGRN>^</EMPL_OGRN>
    <EMPL_REG_NO>^</EMPL_REG_NO>
    <EMPL_PARENT_NO>^</EMPL_PARENT_NO>
    <EMPL_KPP>^</EMPL_KPP>
    <EMPL_INN>^</EMPL_INN>
!------------�㪮����⢮-------------
    <APPROVE1>^</APPROVE1>
    <APPROVE1_ROLE>^</APPROVE1_ROLE>
    <APPROVE2>^</APPROVE2>
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild )
! ��㤮��� �������
    <WORK_CONTRACT_START_DT>^</WORK_CONTRACT_START_DT>
    <WORK_CONTRACT_FINISH_DT>^</WORK_CONTRACT_FINISH_DT>
.}
!----------------  �������⭮� �����
.{?INTERNAL; ( BaseAvgSal = 0 ) and ( CalcMetod = 0 )
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpRanBerem )
    <ROLE_WAGE>^</ROLE_WAGE>
.}
.}
!----------- ��᫮ ���������� ���� --------------------
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBerem )
    <BASE_CALC_DAYS>^</BASE_CALC_DAYS>
.}
.{?INTERNAL; ( Version = '1.7.3' )
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpTravma )
    <BASE_CALC_DAYS>^</BASE_CALC_DAYS>
.}
.} // 1.7.3
!----------- �।��� ��ࠡ�⮪ ---------------------------
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpTravma )
    <BASE_AVG_SAL>^</BASE_AVG_SAL>
.}
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild )
.{?INTERNAL; ( Multipatr = '1' )
    <AVG_SAL>^</AVG_SAL>
.}
    <MULTPATR>^</MULTPATR>
.}
    <BASE_AVG_DAILY_SAL>^</BASE_AVG_DAILY_SAL>
.{?INTERNAL; ( CalcMetod = 1 )
!
    <YEAR_CHANGE_FLAG>^</YEAR_CHANGE_FLAG>
!
.{?INTERNAL; ( YearChangeFlag = 1 )
    <YEAR1_OLD>^</YEAR1_OLD>
    <YEAR2_OLD>^</YEAR2_OLD>
.}
!-------����� ��ਮ�--------------
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpYhodChild )
    <YEAR1>^</YEAR1>
    <YEAR2>^</YEAR2>
.}
.} // ( CalcMetod = 1 )
!------------ �⬥⪠ � ������ ����� ��� ����
.{?INTERNAL; ( Version = '1.7.2' )
.{?INTERNAL; ( CalcMetod = 0 )
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpYhodChild )
    <YEAR1>^</YEAR1>
    <YEAR2>^</YEAR2>
.}
.} // ( CalcMetod = 0 )
.} // 1.7.2
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpTravma )
    <BASE_SUM1>^</BASE_SUM1>
    <BASE_SUM2>^</BASE_SUM2>
.}
    <KF_REG>^</KF_REG>
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
    <KF_SHORT_DAY>^</KF_SHORT_DAY>
.}
!------�᫮��� �஦������\ࠡ���-------
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) and ( LiveCode <> '' )
    <LIVE_COND_FLAG>^</LIVE_COND_FLAG>
    <LIVE_COND>^</LIVE_COND>
.}
!
.{?INTERNAL; ( CalcMetod = 0 )
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpRanBerem )
    <CALC_MH_PERIOD_START>^</CALC_MH_PERIOD_START>
    <CALC_MH_PERIOD_FINISH>^</CALC_MH_PERIOD_FINISH>
.}
.}
!
!------------ �⠦ ---------------------------------------
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpRanBerem )
    <INSUR_YY>^</INSUR_YY>
    <INSUR_MM>^</INSUR_MM>
    <NOT_INSUR_YY>^</NOT_INSUR_YY>
    <NOT_INSUR_MM>^</NOT_INSUR_MM>
.}
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
! ���쭨�� ����
    <LN_CODE>^</LN_CODE>
! ����� ��ࢨ筮�� ���쭨筮��
.{?INTERNAL; ( PrimaryFlag = '0' )
    <PREV_LN_CODE>^</PREV_LN_CODE>
.}
!
    <PRIMARY_FLAG>^</PRIMARY_FLAG>
    <DUPLICATE_FLAG>^</DUPLICATE_FLAG>
    <LN_DATE>^</LN_DATE>
    <LPU_NAME>^</LPU_NAME>
    <LPU_ADDRESS>^</LPU_ADDRESS>
    <LPU_OGRN>^</LPU_OGRN>
.} // ���쭨�� ����
!
    <BIRTHDAY>^</BIRTHDAY>
    <GENDER>^</GENDER>
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
! ���쭨�� ����
    <REASON1>^</REASON1>
    <REASON2>^</REASON2>
    <REASON3>^</REASON3>
.} // ���쭨�� ����
!
.{?INTERNAL; ( EmplFlag = 0 )
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma )
    <PARENT_CODE>^</PARENT_CODE>
.}
.}
! ���쭨�� ����
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
    <DATE1>^</DATE1>
.{?INTERNAL; ( Date2 <> '' )
    <DATE2>^</DATE2>
    <VOUCHER_NO>^</VOUCHER_NO>
    <VOUCHER_OGRN>^</VOUCHER_OGRN>
.}
.}
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
! ���쭨�� ����
!
.{?INTERNAL; ( Serv1 <> '' )
    <SERV1_AGE>^</SERV1_AGE>
    <SERV1_MM>^</SERV1_MM>
    <SERV1_RELATION_CODE>^</SERV1_RELATION_CODE>
    <SERV1_FIO>^</SERV1_FIO>
.}
.{?INTERNAL; ( Serv2 <> '' )
    <SERV2_AGE>^</SERV2_AGE>
    <SERV2_MM>^</SERV2_MM>
    <SERV2_RELATION_CODE>^</SERV2_RELATION_CODE>
    <SERV2_FIO>^</SERV2_FIO>
.}
.{?INTERNAL; ( VidReestr = cn_vpBerem )
    <PREGN12W_FLAG>^</PREGN12W_FLAG>
.}
!
.{?INTERNAL; ( HospitalDt1 <> '' )
    <HOSPITAL_DT1>^</HOSPITAL_DT1>
    <HOSPITAL_DT2>^</HOSPITAL_DT2>
.}
!
! ����襭�� ०���
.{?INTERNAL; ( HospitalBrCode <> 0 )
    <HOSPITAL_BREACH_CODE>^</HOSPITAL_BREACH_CODE>
    <HOSPITAL_BREACH_DT>^</HOSPITAL_BREACH_DT>
.}
    <MSE_DT1>^</MSE_DT1>
    <MSE_DT2>^</MSE_DT2>
    <MSE_DT3>^</MSE_DT3>
    <MSE_INVALID_GROUP>^</MSE_INVALID_GROUP>
    <MSE_INVALID_DAYS>^</MSE_INVALID_DAYS>
.{?INTERNAL; ( MseResult <> '' )
    <MSE_RESULT>^</MSE_RESULT>
.}
! ����� � ���
.{?INTERNAL; ( Treat1Doctor <> '' )
    <TREAT1_DT1>^</TREAT1_DT1>
    <TREAT1_DT2>^</TREAT1_DT2>
    <TREAT1_DOCTOR_ROLE>^</TREAT1_DOCTOR_ROLE>
    <TREAT1_DOCTOR>^</TREAT1_DOCTOR>
    <TREAT1_DOC_ID>^</TREAT1_DOC_ID>
    <TREAT1_DOCTOR2_ROLE>^</TREAT1_DOCTOR2_ROLE>
    <TREAT1_CHAIRMAN_VK>^</TREAT1_CHAIRMAN_VK>
    <TREAT1_DOC2_ID>^</TREAT1_DOC2_ID>
.}
!----------------------------------------------------------
.{?INTERNAL; ( Treat2Doctor <> '' )
    <TREAT2_DT1>^</TREAT2_DT1>
    <TREAT2_DT2>^</TREAT2_DT2>
    <TREAT2_DOCTOR_ROLE>^</TREAT2_DOCTOR_ROLE>
    <TREAT2_DOCTOR>^</TREAT2_DOCTOR>
    <TREAT2_DOC_ID>^</TREAT2_DOC_ID>
    <TREAT2_DOCTOR2_ROLE>^</TREAT2_DOCTOR2_ROLE>
    <TREAT2_CHAIRMAN_VK>^</TREAT2_CHAIRMAN_VK>
    <TREAT2_DOC2_ID>^</TREAT2_DOC2_ID>
.}
!-----------------------------------------------------------
.{?INTERNAL; ( Treat3Doctor <> '' )
    <TREAT3_DT1>^</TREAT3_DT1>
    <TREAT3_DT2>^</TREAT3_DT2>
    <TREAT3_DOCTOR_ROLE>^</TREAT3_DOCTOR_ROLE>
    <TREAT3_DOCTOR>^</TREAT3_DOCTOR>
    <TREAT3_DOC_ID>^</TREAT3_DOC_ID>
    <TREAT3_DOCTOR2_ROLE>^</TREAT3_DOCTOR2_ROLE>
    <TREAT3_CHAIRMAN_VK>^</TREAT3_CHAIRMAN_VK>
    <TREAT3_DOC2_ID>^</TREAT3_DOC2_ID>
.}
.{?INTERNAL; ( OtherStateDt <> '' )
    <OTHER_STATE_DT>^</OTHER_STATE_DT>
.}
!  ��� ��室� �� ࠡ���
.{?INTERNAL; ( MseResult = '' )
    <RETURN_DATE_LPU>^</RETURN_DATE_LPU>
.}
!
.{?INTERNAL; ( BlProd = '1' ) and ( MseResult = '31' )
    <NEXT_LN_CODE>^</NEXT_LN_CODE>
.}
.} // ���쭨��
!
    <CALC_METHOD>^</CALC_METHOD>
!------------------------------------------------------
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
! �᫮��� ���᫥���
    <CALC_CONDITION1>^</CALC_CONDITION1>
    <CALC_CONDITION2>^</CALC_CONDITION2>
    <CALC_CONDITION3>^</CALC_CONDITION3>
!
.{?INTERNAL; ( Form1Dt <> '' )
    <FORM1_DT>^</FORM1_DT>
.}
.}
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma )
    <FSS_PAYMENT_FLAG>^</FSS_PAYMENT_FLAG>
.}
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
.{?INTERNAL; ( FssPayFlag = 1 )
    <DT1>^</DT1>
    <DT2>^</DT2>
.}
.{?INTERNAL; ( VidReestr = cn_vpOtpusk )
    <CALC_DAYS>^</CALC_DAYS>
.}
.}
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild )
    <DT2_FACT>^</DT2_FACT>
.}
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
! ������
    <EMPL_PAYMENT>^</EMPL_PAYMENT>
    <FSS_PAYMENT>^</FSS_PAYMENT>
.}
.{?INTERNAL; ( VidReestr = cn_vpPogreb ) or ( VidReestr = cn_vpDopDay )
    <PAYMENT>^</PAYMENT>     //䠪��᪨ �믫�祭��� �㬬�
.}
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBornChild )
! ᢨ��⥫��⢮ � ஦�����
.{?INTERNAL; ( VidReestr = cn_vpBornChild ) and ( CertType <> '' )
    <REF_TYPE>^</REF_TYPE>
.}
!
.{?INTERNAL; ( CertNo <> '' )
    <CERT_NO>^</CERT_NO>
    <CERT_DT>^</CERT_DT>
.}
    <CERT_BR>^</CERT_BR>
    <CERT_SURNAME>^</CERT_SURNAME>
    <CERT_NAME>^</CERT_NAME>
    <CERT_PATRONIMIC>^</CERT_PATRONIMIC>
.{?INTERNAL; ( Ref24No <> '' )
! �ࠢ�� � ஦�����
    <REF_24_NO>^</REF_24_NO>
    <REF_24_DT>^</REF_24_DT>
.}
!
.{?INTERNAL; ( oCertNo <> '' )
! �ࠢ�� � ஦�����
    <O_CERT_NO>^</O_CERT_NO>
    <O_CERT_DT>^</O_CERT_DT>
.}
.}
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild )
    <CHILD_SER>^</CHILD_SER>
    <MH_OUT>^</MH_OUT>
! ����� �� ���᪥
    <HOLID_ORD_NO>^</HOLID_ORD_NO>
    <HOLID_ORD_DT>^</HOLID_ORD_DT>
    <HOLID_DT_ST>^</HOLID_DT_ST>
    <HOLID_DT_FN>^</HOLID_DT_FN>
.}
!
.{?INTERNAL; ( RefNpayOtherNo <> '' )
!
.{?INTERNAL; ( VidReestr = cn_vpBornChild )
    <REF_NPAY_OTHER_NO>^</REF_NPAY_OTHER_NO>
    <REF_NPAY_OTHER_DT>^</REF_NPAY_OTHER_DT>
.}
.}
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBornChild )
!
! ��뭮������/�����
.{?INTERNAL; ( WardRefNo <> '' )
    <WARD_FLAG>^</WARD_FLAG>
    <WARD_REF_NO>^</WARD_REF_NO>
    <WARD_REF_DT>^</WARD_REF_DT>
.}
! ������� � ��।�� � �ਥ���� ᥬ��
.{?INTERNAL; ( RefFamilyNo <> '' )
.{?INTERNAL; ( VidReestr = cn_vpBornChild )
    <REF_FAMILY_NO>^</REF_FAMILY_NO>
    <REF_FAMILY_DT>^</REF_FAMILY_DT>
.}
.} // ( RefFamilyNo <> '' )
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild )
.{?INTERNAL; ( ChildSer > 1 )
    <OTHER_CHILD_FLAG_BR>^</OTHER_CHILD_FLAG_BR>
    <OTHER_CHILD_FLAG_DT>^</OTHER_CHILD_FLAG_DT>
.}
.}
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild )
! �ࠢ�� �� ���
.{?INTERNAL; ( RefNpayFatherNo <> '' )
    <REF_NPAY_FATHER_NO>^</REF_NPAY_FATHER_NO>
    <REF_NPAY_FATHER_DT>^</REF_NPAY_FATHER_DT>
.}
!  �ࠢ�� �� ����
.{?INTERNAL; ( RefNpayMotherNo <> '' )
    <REF_NPAY_MOTHER_NO>^</REF_NPAY_MOTHER_NO>
    <REF_NPAY_MOTHER_DT>^</REF_NPAY_MOTHER_DT>
.}
!
.}//( VidReestr = cn_vpYhodChild )
.}
! ���⠭���� �� ��� � ࠭��� �ப� ��६������
.{?INTERNAL; ( VidReestr = cn_vpRanBerem ) or ( VidReestr = cn_vpBerem )
.{?INTERNAL; ( Pregn12WFlag = '1' )
    <REF_12WEEK_NO>^</REF_12WEEK_NO>
    <REF_12WEEK_DT>^</REF_12WEEK_DT>
.}
.}
!
.{?INTERNAL; ( VidReestr = cn_vpTravma )  or ( VidReestr = cn_vpOtpusk )
    <REASON_EMPL>^</REASON_EMPL>
.}
!---------- ������� -------------------
.{?INTERNAL; ( prProstoi = 0 )
    <PERIODS></PERIODS>
.}
!
.{?INTERNAL; ( prProstoi = 1 )
    <PERIODS>
.}
.{ rXMLtoFSS_Prostoi CheckEnter
.{?INTERNAL; ( StartDate <> '' )
      <PERIOD>
        <START_DATE>^</START_DATE>
        <END_DATE>^</END_DATE>
        <IDLE_AVERAGE>^</IDLE_AVERAGE>
      </PERIOD>
.}
.}
.{?INTERNAL; ( prProstoi = 1 )
    </PERIODS>
.}
!--------------------------------------
  </ROW>
.}
</ROWSET>

.begin
 rXMLtoFSS.fExit;
end.
.endform
