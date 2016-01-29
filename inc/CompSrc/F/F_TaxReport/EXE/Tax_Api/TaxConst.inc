//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "�����஭��� ���⭮���"
// �������� ����⠭�� �����
//------------------------------------------------------------------------------

//��㯯� �����஭��� ���⭮��
cgsTaxGr_All  = '���';
cgsTaxGr_0001 = '��������� ���⭮���';
cgsTaxGr_0002 = '������᪠� ���⭮���';

cgwTaxGr_All  = 0;
cgwTaxGr_0001 = 1;
cgwTaxGr_0002 = 2;

// ������祭�� � ��६����� �ਢ易���� � �����
// Gxxxx - ���� �� ��ਮ� xxxx ����
// Gxxxx_Gyyyy - ���� �� ��ਮ� xxxx - yyyy �����
// Gxxxx_Ky - ���� �� y ����⠫ xxxx ����
// Gxxxx_Ky_Kz - ���� �� y - z ����⠫� xxxx ����
// Gxxxx_My - ���� �� y ����� xxxx ����
// Gxxxx_My_Mz - ���� �� y - z ������ xxxx ����

// �㬥��� ���⮢
// �㬥��� ����� ���⮢ ��稭����� �� 100 (200, 300, 400 � �.�.)
// �� ����� ��� ����: 100 �ᥫ (�ਬ��: 100 - 199) + ࠭�� ��ॣ����஢���� ��६����

// ���� �����஭��� ���⭮��
cgiTaxRep_TranD        = 1;  // �������� �� �࠭ᯮ�⭮�� ������ (1152004)
cgiTaxRep_Prib         = 2;  // �������� �� ������ �� �ਡ�� �࣠����権 (1151006)
cgiTaxRep_NDS          = 3;  // �������� �� ��� (1151001)
cgiTaxRep_BuhOtch      = 4;  // ��壠���᪠� (䨭��ᮢ��) ���⭮��� (0710099)
cgiTaxRep_ImuD         = 5;  // �������� �� ������ �� �����⢮ �࣠����権 (1152026)
cgiTaxRep_ImuR         = 6;  // ����� �� ����ᮢ��� ���⥦� �� ������ �� �����⢮ �࣠����権 (1152028)
cgiTaxRep_NDPI         = 7;  // �������� �� ���� (1151054)
cgiTaxRep_USN          = 9;  // �������� �� ��� (1152017)
cgiTaxRep_ENVD         = 10; // �������� �� ���� (1152016)
cgiTaxRep_Zeml         = 11; // �������� �� �����쭮�� ������ (1153005)
cgiTaxRep_OtgrProd     = 12; // �������� � ���. ���. �� ���. �த., �믮��. ࠡ��� (��㣨) (1-�� (��筠�))
cgiTaxRep_FinVlog      = 13; // �������� � 䨭��ᮢ�� ��������� � ��易⥫��⢠� (�-6)
cgiTaxRep_InvAndDolSt  = 14; // �����. ���� �� ������. � ��䨭. ��⨢� � �।�⢠� �� ������� ��ந⥫��⢮ (�-2)
cgiTaxRep_PrIOtgrTov   = 15; // �������� � �ந�����⢥ � ���㧪� ⮢�஢ � ��� (�-1)
cgiTaxRep_ZadolPoZP    = 16; // �������� � ����祭��� ������������ �� ��ࠡ�⭮� ���� (3-�)
cgiTaxRep_ZatrNaProizv = 17; // �������� � ������ �� �ந�����⢮ � �த��� �த�樨 (⮢�஢, ࠡ��, ���) (5-�)
cgiTaxRep_DeytOrg      = 18; // �᭮��� ᢥ����� � ���⥫쭮�� �࣠����樨 (1-�।���⨥)
cgiTaxRep_FinSost      = 19; // �������� � 䨭��ᮢ�� ���ﭨ� �࣠����樨 (�-3)
cgiTaxRep_BuhOtchPril  = 20; // ��壠���᪠� (䨭��ᮢ��) ���⭮���. �ਫ������ (0710005)
cgiTaxRep_IspDenSr     = 21; // �������� �� �ᯮ�짮����� �������� �।�� (12-�)
cgiTaxRep_KNTMSZ       = 22; // �������� �� ��ᢥ��� ������� (1151088)
cgiTaxRep_NepolZanIDvijRabot     = 23; // �������� � �������� ������� � �������� ࠡ�⭨���
cgiTaxRep_AKCIZ        = 24; // �������� �� ��樧�� �� �����樧�� ⮢���, �� �᪫�祭��� ⠡���� ������� (1151084)
cgiTaxRep_BUHMP        = 25; // ��壠���᪠� (䨭��ᮢ��) ���⭮��� ��ꥪ⮢ ������ �।�ਭ���⥫��⢠(0710098)
cgiTaxRep_OTTRNDS      = 26; // �⢥� �� ᮮ�饭�� (� �ॡ������� �।�⠢����� ���᭥���)

cgsTax_IfcPrefix  = 'TaxReport_';
cgsTax_ObjIfcName = 'F_TaxReport::ITRBaseRepInfo';
cgsTax_ResName    = 'F_TaxReport::';

cgiTaxCatalog_All  = 0;

cgiTaxCat_TranD = 1;
cgsTaxCat_TranD = 'TaxCatalog_Transp';

cgiTaxCat_OKVED = 2;
cgsTaxCat_OKVED = 'TaxCatalog_OKVED';

cgiTaxCat_KodPT = 3;
cgsTaxCat_KodPT = 'TaxCatalog_KodPT';

cgiTaxCat_Imush = 4;
cgsTaxCat_Imush = 'TaxCatalog_Imush';

cgiTaxCat_KodVidOper = 5;
cgsTaxCat_KodVidOper = 'TaxCatalog_KodVidOper';

//����⠭�� ��� �⡮� ��ꥪ⮢-�ࠢ�筨���
cgsTax_IfcPrefixCat  = 'TaxCatalog_';
cgsTax_ObjIfcNameCat = 'F_TaxReport::oTaxCatalog';
cgsTax_ResNameCat = 'F_TaxReport::';

// ����⠭�� ���������� ���������
cgiCldrTxDeliv  = 0; // ������ ᤠ� ���������� ����
cgiCldrTxPay    = 1;


//==============================================================================
//#region ������������� ��������� - �������������� ���������
//------------------------------------------------------------------------------
// ��魮�� ��� �࠭���� ��⠫����
//�ࠢ�筨��
TxTranCatEntity  =  1;  // �������� �ࠢ�筨� �࠭ᯮ���� �।��
TxOKVEDCatEntity = 21;  // ��ࠢ�筨� ����� ��������᪮� ���⥫쭮��
TxKodPTCatEntity = 26;  // ��ࠢ�筨� ����� �����樧��� ⮢�஢
TxImushCatEntity = 27;  // �������� �ࠢ�筨� �����⢠
TxKodVidOperCatEntity = 29;  // ��ࠢ�筨� ����� ����権 ���
//------------------------------------------------------------------------------
// ��魮�� ��� �࠭���� ���⭮��
TxTranspNalEntity_G2013    =   2; // �������� �� �࠭ᯮ�⭮�� ������ 2013 �.
TxPribNalEntity            =   3; // �������� �� ������ �� �ਡ�� �࣠����権
TxNDSNalEntity_G2014       =   4; // �������� �� ��� 2014 �.
TxBuhOtchNalEntity         =   5; // ��壠���᪠� (䨭��ᮢ��) ���⭮���
TxImuDNalEntity            =   6; // �������� �� ������ �� �����⢮ �࣠����権
TxImuRNalEntity            =   7; // ����� �� ����ᮢ��� ���⥦� �� ������ �� �����⢮ �࣠����権
TxNDPINalEntity_G2014      =   8; // �������� �� ����
TxENVDNalEntity_G2015      =   9; // �������� �� ����
TxUSNNalEntity             =  10; // �������� �� ���
TxZemNalEntity             =  12; // �������� �� �����쭮�� ������
TxOtgrProdEntity           =  13; // �������� � ���ﭨ� ���⮢ �� ���㦥���� �த���, �믮������ ࠡ��� (��㣨) (1-�� (��筠�))
TxFinVlogEntity            =  14; // �������� � 䨭��ᮢ�� ��������� � ��易⥫��⢠� (�-6)
TxInvAndDolStEntity        =  15; // �����. ���� �� ������. � ��䨭. ��⨢� � �।�⢠� �� ������� ��ந⥫��⢮ (�-2)
TxPrIOtgrTovEntity         =  16; // �������� � �ந�����⢥ � ���㧪� ⮢�஢ � ��� (�-1)
TxZadolPoZPEntity_G2014    =  17; // �������� � ����祭��� ������������ �� ��ࠡ�⭮� ���� (3-�) 2014 �.
TxZatrNaProizvEntity_G2014 =  18; // �������� � ������ �� �ந�����⢮ � �த��� �த�樨 (⮢�஢, ࠡ��, ���) (5-�) 2014 �.
TxDeytOrgEntity            =  19; // �᭮��� ᢥ����� � ���⥫쭮�� �࣠����樨 (1-�।���⨥)
TxFinSostEntity_G2014      =  20; // �������� � 䨭��ᮢ�� ���ﭨ� �࣠����樨 (�-3) 2014 �.
TxBuhOtchPrilEntity        =  22; // ��壠���᪠� (䨭��ᮢ��) ���⭮���. �ਫ������
TxIspDenSrEntity           =  23; // �������� �� �ᯮ�짮����� �������� �।�� (12-�)
TxKNTMSZNalEntity          =  24; // �������� �� ��ᢥ��� �������
TxNepolZanIDvijRabotEntity =  25; // �������� � �������� ������� � �������� ࠡ�⭨���
TxNDPINalEntity_G2015      =  26; // �������� �� ����
TxTranspNalEntity_G2014    = 100; // �������� �� �࠭ᯮ�⭮�� ������ 2014 �.
TxNDSNalEntity_G2015       = 200; // �������� �� ��� 2015 �.
TxZatrNaProizvEntity_G2015 = 300; // �������� � ������ �� �ந�����⢮ � �த��� �த�樨 (⮢�஢, ࠡ��, ���) (5-�) 2015 �.
TxFinSostEntity_G2015      = 400; // �������� � 䨭��ᮢ�� ���ﭨ� �࣠����樨 (�-3) 2015 �.
TxZadolPoZPEntity_G2015    = 500; // �������� � ����祭��� ������������ �� ��ࠡ�⭮� ���� (3-�) 2015 �.
TxZadolPoZPEntity_G2016    =  28; // �������� � ����祭��� ������������ �� ��ࠡ�⭮� ���� (3-�) 2016 �.
TxAKCIZNalEntity           = 600; // �������� �� ��樧�� �� �����樧�� ⮢���, �� �᪫�祭��� ⠡���� ������� (1151084)
TxBUHMPNalEntity           = 700; // ��壠���᪠� (䨭��ᮢ��) ���⭮��� ��ꥪ⮢ ������ �।�ਭ���⥫��⢠
TxOTTRNDSNalEntity         =  30; // �⢥� �� ᮮ�饭�� (� �ॡ������� �।�⠢����� ���᭥���)
//#endregion ������������� ��������� - �������������� ���������
//******************************************************************************


//==============================================================================
//#region GUID - �������������� ����������
// ����������� ��⮬���᪨ �㭪樥�: BuhXml_CreateGUID36

//------------------------------------------------------------------------------
// ���⥬�� �������
cgsTx_Sys_Grp_guid = '2EC00898-FB71-4ADB-8A57-D1642602D9F8';
// ���짮��⥫�᪨� �������
cgsTx_USR_Alg_guid = 'B5C8E42C-269C-48D8-B8AC-8FB1EDF5621D';
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// ��������� ���⭮���
cgsTx_Sys_Nal_Grp_guid  = '0BF1300E-F82A-4864-993B-15C96FAD9121';

// ��㯯� � ������ �� �࠭ᯮ�⭮�� ������
cgsTx_Tra_Grp_guid = '2DD339C6-7180-445E-92A8-5276AF88253A';
  cgsTx_Tra_Alg_G2013_guid = 'D6CB269E-4AB7-4ECF-A1F7-01B1DF93917D'; //2013 �.
  cgsTx_Tra_Alg_G2014_guid = 'DDCACA9F-0C76-4EA1-8BD5-D7335C0BDB1C'; //2014 �.

// ��㯯� � ������ �� ���
cgsTx_NDS_Grp_guid = 'C03D4F86-2F78-4F6C-9359-511D5FA5089D';
  cgsTx_NDS_Alg_G2014_guid = 'C0014F64-378C-4ACA-AADB-024CAFD01640'; //2014 �.
  cgsTx_NDS_Alg_G2015_guid = '088DFAF8-6546-44A8-ABA5-79A7F43C304B'; //2015 �.

// ��㯯� � ������ �� ᢥ����� � ������ �� �ந�����⢮ � ॠ������ �த�樨
cgsTx_ZatrNaProizv_Grp_guid = 'DE18E146-7D9B-448C-8016-34BF975DD62E';
  cgsTx_ZatrNaProizv_Alg_G2014_guid = '1D071CC0-3CCE-4D8D-9EA2-3402BBA9771E'; //2014 �.
  cgsTx_ZatrNaProizv_Alg_G2015_guid = 'C01833EE-2201-4724-AACE-A223ED575B75'; //2015 �.

// ��㯯� � ������ �� ᢥ����� � 䨭��ᮢ�� ���ﭨ� �࣠����樨
cgsTx_FinSost_Grp_guid = 'EBE09504-7C1B-4823-BD8E-5C7CF44E6283';
  cgsTx_FinSost_Alg_G2014_guid = '138ABA74-96A4-434F-B775-915D1EB67E37';
  cgsTx_FinSost_Alg_G2015_guid = '288D5A50-1AA5-496E-80AB-E4AB46C7BC01';

// ��㯯� � ������ �� ����祭��� ������������ �� ��
cgsTx_ZadolPoZP_Grp_guid = '9024B3EC-A4E2-48D0-9BC1-E2FAF11C6587';
  cgsTx_ZadolPoZP_Alg_G2014_guid = '9A74FFB8-FB66-439A-861C-70FB8055388E';
  cgsTx_ZadolPoZP_Alg_G2015_guid = '64C210D9-91E5-4215-9F83-5BAD1DF3BAF6';
  cgsTx_ZadolPoZP_Alg_G2016_guid = '56C220G1-97J5-4283-8FD3-651G25K4563B';

// ��㯯� � ������ �� ������ �� �ਡ��
cgsTx_Pri_Grp_guid = '6FA6FA8D-90F8-4EBA-B4FB-75AE02EE5061';
  cgsTx_Pri_Alg_guid = '5965E705-59D2-4456-85E0-870E9340B211';

// ��㯯� � ������ �� ��樧�� �� �����樧�� ⮢���, �� �᪫�祭��� ⠡���� �������
cgsTx_AKCIZ_Grp_guid = 'C66CD5E4-0024-400E-84DE-C963657A64A2';
  cgsTx_AKCIZ_Alg_guid = '2D934935-6148-4CD2-B3C9-4C6DE963C1B3';

// ��㯯� � ������ �� ��壠���᪮� ���⭮��
cgsTx_BUHMP_Grp_guid = 'C67CD5E4-0224-407E-87DE-C859657A64A6';
  cgsTx_BUHMP_Alg_guid = '3D938935-6048-4CD0-B1C9-4C6DE512C7B4';

// ��㯯� � ������ �� ��壠���᪮� ���⭮��
cgsTx_Buh_Grp_guid = 'C66CD5E4-0024-400E-84DE-C854657A64A2';
  cgsTx_Buh_Alg_guid = '2D934935-6148-4CD2-B3C9-4C6DE569C1B3';

// ��㯯� � ������ �� ᢥ����� � �ਫ������ � ���. ���⭮��
cgsTx_BuhOtchPril_Grp_guid = '316A07B3-7D6B-4C76-8EF3-1E06A3B2E182';
  cgsTx_BuhOtchPril_Alg_guid = 'E9409C49-0CC8-4D57-81B4-A65F2E42EDE1';

// ��㯯� � ������ �� ������ �� �����⢮
cgsTx_IMD_Grp_guid = '4E7C6CC2-A10C-47E3-B31F-5D23DD66AA00';
  cgsTx_IMD_Alg_guid = '3C19266C-4DD2-4A73-ACE4-495F5B441830';

// ��㯯� � ������ �� ����ᮢ��� ���⥦� �� ������ �� �����⢮
cgsTx_IMR_Grp_guid = 'DBB2C0E2-C00F-4636-AECE-28193C7B7046';
  cgsTx_IMR_Alg_guid = '6A463844-9BD4-43F1-8C4D-73B664A414C4';

// ��㯯� � ������ �� ������ �� ������ �������� �᪮������
cgsTx_NDPI_Grp_guid = 'C3EEC1B0-5335-4E05-B0E2-8572EB7710AD';
  cgsTx_NDPI_Alg_G2014_guid = '956E969E-2C47-47D4-BC76-BBE7C57B2F81';
  cgsTx_NDPI_Alg_G2015_guid = '436E969E-2C56-47D4-BC76-BBE7C57B3F721';

// ��㯯� � ������ �� ������ �� ���
cgsTx_USN_Grp_guid = '81223EBB-C301-4D3F-81A1-D6DB417C767D';
  cgsTx_USN_Alg_guid = 'DD452333-497A-4D1D-9015-3D87635CC2CB';

// ��㯯� � ������ �� ��ᢥ��� �������
cgsTx_KNTMSZ_Grp_guid = '8BB7BCAA-4E36-4717-81B1-659CD935BC00';
  cgsTx_KNTMSZ_Alg_guid = 'EB4E26C0-25B6-4447-8438-7559D58D62F8';

// ��㯯� � ������ �� �����쭮�� ������
cgsTx_Zem_Grp_guid = 'AD90060C-0DCC-4387-86C7-47E92E232C78';
  cgsTx_Zem_Alg_guid = 'B12401FE-D541-4D77-ADE4-DFD34A8D373E';

// �������� �� ����
cgsTx_ENVD_Grp_guid = 'B2E6E10A-2605-4F25-A4C1-9A753254B23B';
  cgsTx_ENVD_Alg_G2015_guid = '976807C9-D8FF-4C0D-A373-5EF4A5310EDC';
// ��������� ���⭮���
//------------------------------------------------------------------------------
// �⢥� �� ᮮ�饭�� (� �ॡ������� �।�⠢����� ���᭥���)
cgsTx_OTTRNDS_Grp_guid = '302238BB-C301-6D3F-81A1-D6DB4125637D';
  cgsTx_OTTRNDS_Alg_guid = 'HY452543-497A-4D1D-9015-3D876JH122CB';
//------------------------------------------------------------------------------
// ������᪠� ���⭮���
cgsTx_Sys_Stat_Grp_guid = 'A2B3F9B7-9C1F-4BE9-92C6-70813F2CC01F';

   // ��㯯� � ������ �� �������� ������� � �������� ࠡ�⭨���
  cgsTx_NepolZanIDvijRabot_Grp_guid = '50CF61B0-D2E9-42C2-9CAF-8CBD84251C01';
    cgsTx_NepolZanIDvijRabot_Alg_guid = 'D5A66FE0-95FF-448D-B9F2-F311D267535C';

  // ��㯯� � ������ �� ���㦥���� �த�樨
  cgsTx_OtgrProd_Grp_guid = '50CF61B0-D2E9-42C2-9CAF-8CBD84251C00';
    cgsTx_OtgrProd_Alg_guid = 'D5A66FE0-95FF-448D-B9F2-F311D267534C';

  // ��㯯� � ������ �� 䨭��ᮢ� ��������
  cgsTx_FinVlog_Grp_guid = 'BEF34FF2-F393-48B5-83F1-FB82F1810954';
    cgsTx_FinVlog_Alg_guid = '5CDCB553-05B8-4EC7-994E-3E29FFA90850';

  // ��㯯� � ������ �� �������� � ��䨭��ᮢ� ��⨢� � �।�⢠� �� ������� ��ந⥫��⢮
  cgsTx_InvAndDolSt_Grp_guid = '5C4FE929-CE55-4427-A8CA-197D95E85743';
    cgsTx_InvAndDolSt_Alg_guid = '75B67289-C39E-42E1-BB41-E74DE841912B';

  // ��㯯� � ������ �� �ந������� � ���㧪� ⮢�஢ � ���
  cgsTx_PrIOtgrTov_Grp_guid = '124CA5E5-7976-4833-8771-28B8DD3DE93B';
    cgsTx_PrIOtgrTov_Alg_guid = 'DE359015-CFB8-4FBB-BFBF-BFDB769FC388';

  // ��㯯� � ������ �� ���⥫쭮�� �࣠����樨
  cgsTx_DeytOrg_Grp_guid = 'D198EC8D-39CE-4D98-BA07-8CBB858C0200';
    cgsTx_DeytOrg_Alg_guid = '84EBFAA1-1E2D-42D9-96E3-A4E71A2959B7';

  // ��㯯� � ������ �� �ᯮ�짮����� �������� �।��
  cgsTx_IspDenSr_Grp_guid = 'CC51C4D9-3A5F-4F2C-9049-86ECC04C0D80';
    cgsTx_IspDenSr_Alg_guid = '387E340B-DA85-43F9-8C52-7561BF4BE7A2';
// ������᪠� ���⭮���
//------------------------------------------------------------------------------

//#endregion GUID - �������������� ����������
//******************************************************************************


//------------------------------------------------------------------------------
// ������� ����७��
cgTxTPerEd_Not           = 0;  // �� ��।����
cgTxTPerEd_Day           = 1;  // ����
cgTxTPerEd_Week          = 2;  // ������
cgTxTPerEd_Month         = 3;  // �����
cgTxTPerEd_Quater        = 4;  // ����⠫
cgTxTPerEd_HalfYear      = 5;  // ���㣮���
cgTxTPerEd_Year          = 6;  // ���
cgTxTPer9_mes            = 7;  // �� 9 ����楢