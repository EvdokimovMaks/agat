!
!  (c) 1987 ��௮��� ���������
!
!  �஥��        : ���������
!  ���⥬�       : ����⨢�� ������
!  �����        : 5.20
!
!  �����祭��    : ����� ॥��� ᢮���� ���������
!
!  �⢥��⢥��� : ����ᠭ�� �����쥢�� ���⪮
!
!  ��ࠬ����     : ���
!
!--------------------------------------------------------------------
!  ��������� :
!       ����:                                         ���:
!       ���� :
!
!--------------------------------------------------------------------
#doc
����� ॥��� ᢮���� ���������
#end
.Form GrSopr_frm_main
.hide
.fields
!.{
    GrSopr_nRec: comp
    GrSopr_���
    GrSopr_�����
    GrSopr_���
    GrSopr_���ਯ��
    GrSopr_��㯯�_���ਯ�஢
    GrSopr_��ப� // ? ����� ���� �ਬ�砭�� (�� ���������� � ����䥩�)
    // ����ࠣ���
    GrSopr_���                 // KatOrg.Name
    GrSopr_���                 // KatOrg.TipOrg
    GrSopr_����               // KatOrg.Addr
    GrSopr_����                // KatOrg.OKpo
    GrSopr_�����               // KatOrg.OKONH
    GrSopr_���                 // KatOrg.TEL
    GrSopr_���∭�             // KatOrg.CONTAKTS      ���⠪⭠� ���ଠ��
    GrSopr_Email               // KatOrg.EMAIL         �����஭�� ���⮢� ����
    GrSopr_OKATO               // PodrInfo.OKATO       ��� �� �����ᨩ᪮�� �����䨪���� ���������⨢��-����ਠ�쭮�� �������
    GrSopr_KBK                 // PodrInfo.KBK         ��� ��⭮� �����䨪�樨
    GrSopr_OGRN                // PodrInfo.OGRN        �᭮���� ���㤠��⢥��� ॣ����樮��� �����
    GrSopr_������_�_��         // PodrInfo.REGNOMPFR   �������樮��� ����� � ��
    GrSopr_������_���客�⥫� // PodrInfo.POlE3S      �������樮��� ����� ���客�⥫�
    GrSopr_�࣠�_�ᯮ��_����� // PodrInfo.INSNAME     �࣠� �ᯮ���⥫쭮� �����
    GrSopr_��ଠ_����⢥����� // FormSobs.Name        ��ଠ ᮡ�⢥�����
    GrSopr_���_���⥫쭮��    // FormSobs.VidD        ��� ���⥫쭮��
    GrSopr_�������_���         // KatState.KOD
    GrSopr_������_���          // KatState.Name
    GrSopr_������_������       // KatState.IsNal
    GrSopr_�����_���           // KatCity.KOD
    GrSopr_�����_���           // KatCity.Name
    GrSopr_�����_���           // KatCity.TEL
    GrSopr_�����_������_���    // KatState.KOD
    GrSopr_�����_������_���    // KatState.Name
    GrSopr_�����_������_������ // KatState.IsNal
    GrSopr_����������          // KatOrg.CorpoIn
    GrSopr_���                 // KatOrg.UNN
    GrSopr_���                 // KatOrg.KODPLATNDS       =  28 �����
        GrSopr_����_���
        GrSopr_����_������਩
        GrSopr_����_����
        GrSopr_����_��
        GrSopr_����_���
        GrSopr_����_���
        GrSopr_����_���_���
        GrSopr_����_���_����  // ��� ��� ���⥦��� ���㬥�⮢
        GrSopr_����_���_���  // 0 �����, 1-⥪�騩
        GrSopr_����_���_���  // 1-��⨢� 0-�����        = 10 �����
    // �����  PrintPodr      (GrSopr.cPodr   ) ; // tnRec    "᪫��",
    GrSopr_KatPodr_Kod
    GrSopr_KatPodr_Name
    GrSopr_KatPodr_Addr
    GrSopr_KatPodr_FIO
    GrSopr_KatPodr_nBase
    // ��� PrintMol       (GrSopr.cMOL    ) ; // tnRec    "���",
    GrSopr_KatMol_Kod
    GrSopr_KatMol_Name
    // PrintParty     (GrSopr.cParty  ) ; // tnRec    "�����",
    GrSopr_KatParty_Kod
    GrSopr_KatParty_Name
    GrSopr_KatParty_nSertif
    GrSopr_KatParty_dSertif
    // PrintAuto      (GrSopr.Auto    , GrSopr.cAuto   ) ; // tnRec    "��� ��⮯।�����",
    GrSopr_Auto_���                 // KatOrg.Name
    GrSopr_Auto_���                 // KatOrg.TipOrg
    GrSopr_Auto_����               // KatOrg.Addr
    GrSopr_Auto_����                // KatOrg.OKpo
    GrSopr_Auto_�����               // KatOrg.OKONH
    GrSopr_Auto_���                 // KatOrg.TEL
    GrSopr_Auto_���∭�             // KatOrg.CONTAKTS      ���⠪⭠� ���ଠ��
    GrSopr_Auto_Email               // KatOrg.EMAIL         �����஭�� ���⮢� ����
    GrSopr_Auto_OKATO               // PodrInfo.OKATO       ��� �� �����ᨩ᪮�� �����䨪���� ���������⨢��-����ਠ�쭮�� �������
    GrSopr_Auto_KBK                 // PodrInfo.KBK         ��� ��⭮� �����䨪�樨
    GrSopr_Auto_OGRN                // PodrInfo.OGRN        �᭮���� ���㤠��⢥��� ॣ����樮��� �����
    GrSopr_Auto_������_�_��         // PodrInfo.REGNOMPFR   �������樮��� ����� � ��
    GrSopr_Auto_������_���客�⥫� // PodrInfo.POlE3S      �������樮��� ����� ���客�⥫�
    GrSopr_Auto_�࣠�_�ᯮ��_����� // PodrInfo.INSNAME     �࣠� �ᯮ���⥫쭮� �����
    GrSopr_Auto_��ଠ_����⢥����� // FormSobs.Name        ��ଠ ᮡ�⢥�����
    GrSopr_Auto_���_���⥫쭮��    // FormSobs.VidD        ��� ���⥫쭮��
    GrSopr_Auto_�������_���         // KatState.KOD
    GrSopr_Auto_������_���          // KatState.Name
    GrSopr_Auto_������_������       // KatState.IsNal
    GrSopr_Auto_�����_���           // KatCity.KOD
    GrSopr_Auto_�����_���           // KatCity.Name
    GrSopr_Auto_�����_���           // KatCity.TEL
    GrSopr_Auto_�����_������_���    // KatState.KOD
    GrSopr_Auto_�����_������_���    // KatState.Name
    GrSopr_Auto_�����_������_������ // KatState.IsNal
    GrSopr_Auto_����������          // KatOrg.CorpoIn
    GrSopr_Auto_���                 // KatOrg.UNN
    GrSopr_Auto_���                 // KatOrg.KODPLATNDS       =  28 �����
        GrSopr_Auto_����_���
        GrSopr_Auto_����_������਩
        GrSopr_Auto_����_����
        GrSopr_Auto_����_��
        GrSopr_Auto_����_���
        GrSopr_Auto_����_���
        GrSopr_Auto_����_���_���
        GrSopr_Auto_����_���_����  // ��� ��� ���⥦��� ���㬥�⮢
        GrSopr_Auto_����_���_���  // 0 �����, 1-⥪�騩
        GrSopr_Auto_����_���_���  // 1-��⨢� 0-�����        = 10 �����
    // PrintCar       (GrSopr.Car     , GrSopr.cCar    ) ; // tnRec    "��� ��⮬�����",
    GrSopr_Transp_Nomer
    GrSopr_Transp_Marka
    // PrintDriver    (GrSopr.Driver  , GrSopr.cDriver ) ; // tnRec    "��� ����⥫�",
    GrSopr_KlDriver_Name
    // PrintWay       (GrSopr.Way     , GrSopr.cWay    ) ; // tnRec    "��� �������",
    GrSopr_Avt_KodMarch
    GrSopr_Avt_MMarAvt
    // PrintPunkt     (GrSopr.PunktP  , GrSopr.cPunktP ) ; // tnRec    "��� �㭪� ����㧪�",
    GrSopr_PunktsP_Name
    GrSopr_PunktsP_Addr
    GrSopr_PunktsP_KoefW
    GrSopr_PunktsP_Normat
    GrSopr_PunktsP_Distantion
    GrSopr_PunktsP_Time
    // PrintPunkt     (GrSopr.PunktR  , GrSopr.cPunktR ) ; // tnRec    "��� �㭪� ࠧ��㧪�",
    GrSopr_PunktsR_Name
    GrSopr_PunktsR_Addr
    GrSopr_PunktsR_KoefW
    GrSopr_PunktsR_Normat
    GrSopr_PunktsR_Distantion
    GrSopr_PunktsR_Time
    // PrintDover ;
    GrSopr_Dover_NoDoc
    GrSopr_Dover_dDoc
    // PrintDovFio ;
    GrSopr_DovFio_Name
    GrSopr_DovFio_PasSer
    GrSopr_DovFio_PasNumb
    GrSopr_DovFio_WhereVid
    GrSopr_DovFio_DatVid
    // frmGrSopr.Write(GrSopr.dOpr    ) ; // date     "��� ���室������"
    GrSopr_���_���室������ // ���ਬ�� ��� �뤠�
!.{
      KatDoc_Name
      KatSopr_nRec
      KatSopr_nSopr
      KatSopr_dSopr
      KatSopr_Summa: double
      KatVal
      Dogovor_NoDoc
      Dogovor_dDoc
      CalPlan_NoDoc
      CalPlan_Name
      //PrintOrg(KatSopr.cOrgBase ) ;
      KatSopr_���                 // KatOrg.Name
      KatSopr_���                 // KatOrg.TipOrg
      KatSopr_����               // KatOrg.Addr
      KatSopr_����                // KatOrg.Okpo
      KatSopr_�����               // KatOrg.OKONH
      KatSopr_���                 // KatOrg.TEL
      KatSopr_���∭�             // KatOrg.CONTAKTS      ���⠪⭠� ���ଠ��
      KatSopr_Email               // KatOrg.EMAIL         �����஭�� ���⮢� ����
      KatSopr_OKATO               // PodrInfo.OKATO       ��� �� �����ᨩ᪮�� �����䨪���� ���������⨢��-����ਠ�쭮�� �������
      KatSopr_KBK                 // PodrInfo.KBK         ��� ��⭮� �����䨪�樨
      KatSopr_OGRN                // PodrInfo.OGRN        �᭮���� ���㤠��⢥��� ॣ����樮��� �����
      KatSopr_������_�_��         // PodrInfo.REGNOMPFR   �������樮��� ����� � ��
      KatSopr_������_���客�⥫� // PodrInfo.POlE3S      �������樮��� ����� ���客�⥫�
      KatSopr_�࣠�_�ᯮ��_����� // PodrInfo.INSNAME     �࣠� �ᯮ���⥫쭮� �����
      KatSopr_��ଠ_����⢥����� // FormSobs.Name        ��ଠ ᮡ�⢥�����
      KatSopr_���_���⥫쭮��    // FormSobs.VidD        ��� ���⥫쭮��
      KatSopr_�������_���         // KatState.KOD
      KatSopr_������_���          // KatState.Name
      KatSopr_������_������       // KatState.IsNal
      KatSopr_�����_���           // KatCity.KOD
      KatSopr_�����_���           // KatCity.Name
      KatSopr_�����_���           // KatCity.TEL
      KatSopr_�����_������_���    // KatState.KOD
      KatSopr_�����_������_���    // KatState.Name
      KatSopr_�����_������_������ // KatState.IsNal
      KatSopr_����������          // KatOrg.CorpoIn
      KatSopr_���                 // KatOrg.UNN
      KatSopr_���                 // KatOrg.KODPLATNDS       =  28 �����
          KatSopr_����_���
          KatSopr_����_������਩
          KatSopr_����_����
          KatSopr_����_��
          KatSopr_����_���
          KatSopr_����_���
          KatSopr_����_���_���
          KatSopr_����_���_����  // ��� ��� ���⥦��� ���㬥�⮢
          KatSopr_����_���_���  // 0 �����, 1-⥪�騩
          KatSopr_����_���_���  // 1-��⨢� 0-�����        = 10 �����
!.{
        SpSopr_nRec
        SpSopr_PrMC // �ਧ��� �� ��� ��㣠
        SpSopr_Name
        SpSopr_Kod
        SpSopr_Kol :double// � ���᪭�� �� �����७��
        SpSopr_OtpEd  // ���᪭�� �� ����७��
        SpSopr_Sum  // �㬬
        SpPrice
        SpSopr_Price :double // v ���

!.}
!.}
!.}
.endfields

.{ GrSopr_main_GrSopr CheckEnter
    GrSopr_nRec = ^
    GrSopr_��� = ^
    GrSopr_����� = ^
    GrSopr_��� = ^
    GrSopr_���ਯ�� = ^
    GrSopr_��㯯�_���ਯ�஢ = ^
    GrSopr_��ப� = ^
    GrSopr_��� = ^
    GrSopr_��� = ^
    GrSopr_���� = ^
    GrSopr_���� = ^
    GrSopr_����� = ^
    GrSopr_��� = ^
    GrSopr_���∭� = ^
    GrSopr_Email = ^
    GrSopr_OKATO = ^
    GrSopr_KBK = ^
    GrSopr_OGRN = ^
    GrSopr_������_�_�� = ^
    GrSopr_������_���客�⥫� = ^
    GrSopr_�࣠�_�ᯮ��_����� = ^
    GrSopr_��ଠ_����⢥����� = ^
    GrSopr_���_���⥫쭮�� = ^
    GrSopr_�������_��� = ^
    GrSopr_������_��� = ^
    GrSopr_������_������ = ^
    GrSopr_�����_��� = ^
    GrSopr_�����_��� = ^
    GrSopr_�����_��� = ^
    GrSopr_�����_������_��� = ^
    GrSopr_�����_������_��� = ^
    GrSopr_�����_������_������ = ^
    GrSopr_���������� = ^
    GrSopr_��� = ^
    GrSopr_��� = ^
        GrSopr_����_��� = ^
        GrSopr_����_������਩ = ^
        GrSopr_����_���� = ^
        GrSopr_����_�� = ^
        GrSopr_����_��� = ^
        GrSopr_����_��� = ^
        GrSopr_����_���_��� = ^
        GrSopr_����_���_���� = ^
        GrSopr_����_���_��� = ^
        GrSopr_����_���_��� = ^
    GrSopr_KatPodr_Kod = ^
    GrSopr_KatPodr_Name = ^
    GrSopr_KatPodr_Addr = ^
    GrSopr_KatPodr_FIO = ^
    GrSopr_KatPodr_nBase = ^

    GrSopr_KatMol_Kod = ^
    GrSopr_KatMol_Name = ^

    GrSopr_KatParty_Kod = ^
    GrSopr_KatParty_Name = ^
    GrSopr_KatParty_nSertif = ^
    GrSopr_KatParty_dSertif = ^

    GrSopr_Auto_��� = ^
    GrSopr_Auto_��� = ^
    GrSopr_Auto_���� = ^
    GrSopr_Auto_���� = ^
    GrSopr_Auto_����� = ^
    GrSopr_Auto_��� = ^
    GrSopr_Auto_���∭� = ^
    GrSopr_Auto_Email = ^
    GrSopr_Auto_OKATO = ^
    GrSopr_Auto_KBK = ^
    GrSopr_Auto_OGRN = ^
    GrSopr_Auto_������_�_�� = ^
    GrSopr_Auto_������_���客�⥫� = ^
    GrSopr_Auto_�࣠�_�ᯮ��_����� = ^
    GrSopr_Auto_��ଠ_����⢥����� = ^
    GrSopr_Auto_���_���⥫쭮�� = ^
    GrSopr_Auto_�������_��� = ^
    GrSopr_Auto_������_��� = ^
    GrSopr_Auto_������_������ = ^
    GrSopr_Auto_�����_��� = ^
    GrSopr_Auto_�����_��� = ^
    GrSopr_Auto_�����_��� = ^
    GrSopr_Auto_�����_������_��� = ^
    GrSopr_Auto_�����_������_��� = ^
    GrSopr_Auto_�����_������_������ = ^
    GrSopr_Auto_���������� = ^
    GrSopr_Auto_��� = ^
    GrSopr_Auto_��� = ^
        GrSopr_Auto_����_��� = ^
        GrSopr_Auto_����_������਩ = ^
        GrSopr_Auto_����_���� = ^
        GrSopr_Auto_����_�� = ^
        GrSopr_Auto_����_��� = ^
        GrSopr_Auto_����_��� = ^
        GrSopr_Auto_����_���_��� = ^
        GrSopr_Auto_����_���_���� = ^
        GrSopr_Auto_����_���_��� = ^
        GrSopr_Auto_����_���_��� = ^

    GrSopr_Transp_Nomer = ^
    GrSopr_Transp_Marka = ^

    GrSopr_KlDriver_Name = ^

    GrSopr_Avt_KodMarch = ^
    GrSopr_Avt_MMarAvt = ^

    GrSopr_PunktsP_Name = ^
    GrSopr_PunktsP_Addr = ^
    GrSopr_PunktsP_KoefW = ^
    GrSopr_PunktsP_Normat = ^
    GrSopr_PunktsP_Distantion = ^
    GrSopr_PunktsP_Time = ^

    GrSopr_PunktsR_Name = ^
    GrSopr_PunktsR_Addr = ^
    GrSopr_PunktsR_KoefW = ^
    GrSopr_PunktsR_Normat = ^
    GrSopr_PunktsR_Distantion = ^
    GrSopr_PunktsR_Time = ^

    GrSopr_Dover_NoDoc = ^
    GrSopr_Dover_dDoc = ^

    GrSopr_DovFio_Name  = ^
    GrSopr_DovFio_PasSer  = ^
    GrSopr_DovFio_PasNumb  = ^
    GrSopr_DovFio_WhereVid  = ^
    GrSopr_DovFio_DatVid  = ^

    GrSopr_���_���室������ = ^
.{ GrSopr_main_KatSopr CheckEnter
      KatDoc_Name = ^
      KatSopr_nRec = ^
      KatSopr_nSopr = ^
      KatSopr_dSopr = ^
      KatSopr_Summa = ^
      KatVal = ^
      Dogovor_NoDoc = ^
      Dogovor_dDoc = ^
      CalPlan_NoDoc = ^
      CalPlan_Name = ^

      KatSopr_��� = ^
      KatSopr_��� = ^
      KatSopr_���� = ^
      KatSopr_���� = ^
      KatSopr_����� = ^
      KatSopr_��� = ^
      KatSopr_���∭� = ^
      KatSopr_Email = ^
      KatSopr_OKATO = ^
      KatSopr_KBK = ^
      KatSopr_OGRN = ^
      KatSopr_������_�_�� = ^
      KatSopr_������_���客�⥫� = ^
      KatSopr_�࣠�_�ᯮ��_����� = ^
      KatSopr_��ଠ_����⢥����� = ^
      KatSopr_���_���⥫쭮�� = ^
      KatSopr_�������_��� = ^
      KatSopr_������_��� = ^
      KatSopr_������_������ = ^
      KatSopr_�����_��� = ^
      KatSopr_�����_��� = ^
      KatSopr_�����_��� = ^
      KatSopr_�����_������_��� = ^
      KatSopr_�����_������_��� = ^
      KatSopr_�����_������_������ = ^
      KatSopr_���������� = ^
      KatSopr_��� = ^
      KatSopr_��� = ^
          KatSopr_����_��� = ^
          KatSopr_����_������਩ = ^
          KatSopr_����_���� = ^
          KatSopr_����_�� = ^
          KatSopr_����_��� = ^
          KatSopr_����_��� = ^
          KatSopr_����_���_��� = ^
          KatSopr_����_���_���� = ^
          KatSopr_����_���_��� = ^
          KatSopr_����_���_��� = ^
.{ GrSopr_main_SpSopr CheckEnter
        SpSopr_nRec = ^
        SpSopr_PrMC = ^
        SpSopr_Name = ^
        SpSopr_Kod = ^
        SpSopr_Kol = ^
        SpSopr_OtpEd = ^
        SpSopr_Sum = ^
        SpPrice = ^
        SpSopr_Price = ^
.}
---------------
.}
---------------
.}
--------END
.endform

#doc
������ ��ꥤ������� � ᢮���� ���������
#end
.linkform 'GrSopr_frm_main 01' prototype is GrSopr_frm_main
.NameInList '������ ��ꥤ������� � ᢮���� ���������'
.fields
!.{
    GrSopr_�����
    GrSopr_���

    GrSopr_Auto_���                 // KatOrg.Name
    GrSopr_Auto_����                // KatOrg.OKpo

    GrSopr_Transp_Nomer
    GrSopr_Transp_Marka

    GrSopr_KlDriver_Name

    GrSopr_PunktsP_Name
    GrSopr_PunktsP_Addr
    GrSopr_PunktsR_Name
    GrSopr_PunktsR_Addr

    GrSopr_Dover_NoDoc
    GrSopr_Dover_dDoc

    GrSopr_DovFio_Name
    GrSopr_DovFio_PasSer
    GrSopr_DovFio_PasNumb
    GrSopr_DovFio_WhereVid
    GrSopr_DovFio_DatVid
!.{
      KatDoc_Name
      KatSopr_nSopr
      KatSopr_dSopr
      KatSopr_Summa
      KatSopr_���                 // KatOrg.Name
      KatSopr_����                // KatOrg.Okpo
!.{
        SpSopr_Name
        SpSopr_Kod
        SpSopr_Kol // � ���᪭�� �� �����७��
        SpSopr_OtpEd  // ���᪭�� �� ����७��
        SpSopr_Price  // 業� � ���
        SpSopr_Kol*SpSopr_Price
!.}
!.}
!.}
.endfields
.{ GrSopr_main_GrSopr CheckEnter

 ��������� ��������� � ^ �� ^��

 ����⮯।���⨥:�� ��^ ^��
 ���࠭ᯮ��:�� ��^ ^��
 ������⥫�:�� ��^��
 ���㭪� ����㧪�:�� ��^ ^��
 ���㭪� ࠧ��㧪�:�� ��^ ^��
 ������७�����:�� � ^ ������ ^
 ������७��� ���:�� ^, ����ᯮ���� �������� ^, ��������� ^, ���뤠��� ^ ^

.{ GrSopr_main_KatSopr CheckEnter
��   --------------------------------------------------------------------------------------------------------------------------
   ��^ � ��^�� �� ��^��

   ���� �㬬�:�� ��^��
   ����ࠣ���: ^ ^
   ��������������������������������������������������������������������������������������������������������������������������
    ������������ � ������������ �����                             � ������⢮ ���.���.� ���� � ���     � �㬬� � ���
   ����������������������������������������������������������������������������������������������������������������������������
.{ GrSopr_main_SpSopr CheckEnter
��   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@ &&&&&&&&&.&& @@@@@@@ &&&&&&&&&&&&&.&& &&&&&&&&&&&&&&&.&&��
.}
.}
��.............................................................................................................................��
.}
.endform
!
!
!
#doc
��⪨� ॥��� ��ꥤ������� � ᢮���� ���������
#end
.linkform 'GrSopr_frm_main 02' prototype is GrSopr_frm_main
.NameInList '��⪨� ॥��� ��ꥤ������� � ᢮���� ���������'
.var
  count_of_spsopr : word
.endvar
.fields
!.{
    GrSopr_�����
    GrSopr_���

    GrSopr_Auto_���                 // KatOrg.Name
    GrSopr_Auto_����                // KatOrg.OKpo

    GrSopr_Transp_Nomer
    GrSopr_Transp_Marka

    GrSopr_KlDriver_Name

    GrSopr_PunktsP_Name
    GrSopr_PunktsP_Addr
    GrSopr_PunktsR_Name
    GrSopr_PunktsR_Addr

    GrSopr_Dover_NoDoc
    GrSopr_Dover_dDoc

    GrSopr_DovFio_Name
    GrSopr_DovFio_PasSer
    GrSopr_DovFio_PasNumb
    GrSopr_DovFio_WhereVid
    GrSopr_DovFio_DatVid
!.{
      KatSopr_nSopr
      KatSopr_dSopr
      KatSopr_��� +' ���� '+KatSopr_����                // KatOrg.Okpo
      KatSopr_Summa
      count_of_spsopr
!.{
!.}
!.}
!.}
.endfields
.{ GrSopr_main_GrSopr CheckEnter

 ��������� ��������� ��� ^ ������ ^

�� ��⮯।���⨥: ��^ ^��
 �࠭ᯮ��      : ��^ ^��
 ����⥫�       : ��^��
 �㭪� ����㧪� : ��^ ^��
 �㭪� ࠧ��㧪�: ��^ ^��
 ����७�����   : � ��^�� �� ��^��
 ����७��� ���: ��^��, ��ᯮ�� �������� ^, ��������� ^, ���뤠��� ��^ ^��

����������������������������������������������������������������������������������
   �����   �   ���   � ����ࠣ���                      � �㬬�          � ����権
����������������������������������������������������������������������������������
.{ GrSopr_main_KatSopr CheckEnter
.begin
  count_of_spsopr := 0;
 end.
.{ GrSopr_main_SpSopr CheckEnter
.begin
  count_of_spsopr++;
 end.
.}
@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &#&&&&&&&&&&&.&& &#&&&&&
.}
.................................................................................
.}
.endform