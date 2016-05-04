//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "�����஭��� ���⭮���"
// ������⥪� �㭪権: "������� ����"
//------------------------------------------------------------------------------

#ifndef __TRFuncAlgEtalon_Inc__
#define __TRFuncAlgEtalon_Inc__

// ��������� GUID :: BuhXml_CreateGUID36

const
  //----------------------------------------------------------------------------
  // ��⠫�� ��⥬��� �����⬮�
  lc_TRAlg_Sys_Grp_GUID = '2EC00898-FB71-4ADB-8A57-D1642602D9F8';
  // ��⠫�� ���짮��⥫�᪨� �����⬮�
  lc_TRAlg_Usr_Grp_GUID = 'B5C8E42C-269C-48D8-B8AC-8FB1EDF5621D';
  //----------------------------------------------------------------------------


  //============================================================================
  //#region ��������� ����������
  //----------------------------------------------------------------------------
  // ��������� ���⭮���
  lc_TRAlg_Sys_Nal_Grp_GUID  = '0BF1300E-F82A-4864-993B-15C96FAD9121';

  // ��㯯� � ������ �� �࠭ᯮ�⭮�� ������
  lc_TRAlg_Tra_Grp_GUID = '2DD339C6-7180-445E-92A8-5276AF88253A';
    lc_TRAlg_Tra_Alg_G2013_GUID = 'D6CB269E-4AB7-4ECF-A1F7-01B1DF93917D'; //2013 �.
    lc_TRAlg_Tra_Alg_G2014_GUID = 'DDCACA9F-0C76-4EA1-8BD5-D7335C0BDB1C'; //2014 �.

  // ��㯯� � ������ �� ���
  lc_TRAlg_NDS_Grp_GUID = 'C03D4F86-2F78-4F6C-9359-511D5FA5089D';
    lc_TRAlg_NDS_Alg_G2014_GUID = 'C0014F64-378C-4ACA-AADB-024CAFD01640'; //2014 �.
    lc_TRAlg_NDS_Alg_G2015_GUID = '088DFAF8-6546-44A8-ABA5-79A7F43C304B'; //2015 �.

  // ��㯯� � ������ �� ᢥ����� � ������ �� �ந�����⢮ � ॠ������ �த�樨
  lc_TRAlg_ZatrNaProizv_Grp_GUID = 'DE18E146-7D9B-448C-8016-34BF975DD62E';
    lc_TRAlg_ZatrNaProizv_Alg_G2014_GUID = '1D071CC0-3CCE-4D8D-9EA2-3402BBA9771E'; //2014 �.
    lc_TRAlg_ZatrNaProizv_Alg_G2015_GUID = 'C01833EE-2201-4724-AACE-A223ED575B75'; //2015 �.

  // ��㯯� � ������ �� ᢥ����� � 䨭��ᮢ�� ���ﭨ� �࣠����樨
  lc_TRAlg_FinSost_Grp_GUID = 'EBE09504-7C1B-4823-BD8E-5C7CF44E6283';
    lc_TRAlg_FinSost_Alg_G2014_GUID = '138ABA74-96A4-434F-B775-915D1EB67E37';
    lc_TRAlg_FinSost_Alg_G2015_GUID = '288D5A50-1AA5-496E-80AB-E4AB46C7BC01';

  // ��㯯� � ������ �� ����祭��� ������������ �� ��
  lc_TRAlg_ZadolPoZP_Grp_GUID = '9024B3EC-A4E2-48D0-9BC1-E2FAF11C6587';
    lc_TRAlg_ZadolPoZP_Alg_G2014_GUID = '9A74FFB8-FB66-439A-861C-70FB8055388E';
    lc_TRAlg_ZadolPoZP_Alg_G2015_GUID = '64C210D9-91E5-4215-9F83-5BAD1DF3BAF6';
    lc_TRAlg_ZadolPoZP_Alg_G2016_GUID = '56C220G1-97J5-4283-8FD3-651G25K4563B';

  // ��㯯� � ������ �� ������ �� �ਡ��
  lc_TRAlg_Pri_Grp_GUID = '6FA6FA8D-90F8-4EBA-B4FB-75AE02EE5061';
    lc_TRAlg_Pri_Alg_GUID = '5965E705-59D2-4456-85E0-870E9340B211';

  // ��㯯� � ������ �� ��樧�� �� �����樧�� ⮢���, �� �᪫�祭��� ⠡���� �������
  lc_TRAlg_AKCIZ_Grp_GUID = 'C66CD5E4-0024-400E-84DE-C963657A64A2';
    lc_TRAlg_AKCIZ_Alg_GUID = '2D934935-6148-4CD2-B3C9-4C6DE963C1B3';

  // ��㯯� � ������ �� ��壠���᪮� ���⭮��
  lc_TRAlg_BUHMP_Grp_GUID = 'C67CD5E4-0224-407E-87DE-C859657A64A6';
    lc_TRAlg_BUHMP_Alg_GUID = '3D938935-6048-4CD0-B1C9-4C6DE512C7B4';

  // ��㯯� � ������ �� ��壠���᪮� ���⭮��
  lc_TRAlg_Buh_Grp_GUID = 'C66CD5E4-0024-400E-84DE-C854657A64A2';
    lc_TRAlg_Buh_Alg_G2014_GUID = '2D934935-6148-4CD2-B3C9-4C6DE569C1B3';
    lc_TRAlg_Buh_Alg_G2015_GUID = '4B52DCB9-4E40-4E9E-B480-1C37A818C057';
    lc_TRAlg_Buh_Alg_G2015Add_GUID = '52892044-5DC7-4C5A-B60B-F42114445D2F';

  // ��㯯� � ������ �� ᢥ����� � �ਫ������ � ���. ���⭮��
  lc_TRAlg_BuhOtchPril_Grp_GUID = '316A07B3-7D6B-4C76-8EF3-1E06A3B2E182';
    lc_TRAlg_BuhOtchPril_Alg_G2014_GUID = 'E9409C49-0CC8-4D57-81B4-A65F2E42EDE1';
    lc_TRAlg_BuhOtchPril_Alg_G2015_GUID = '3B3DEE8A-63FC-4DE6-8BB8-ECEB075E3FB4';

  // ��㯯� � ������ �� ������ �� �����⢮
  lc_TRAlg_IMD_Grp_GUID = '4E7C6CC2-A10C-47E3-B31F-5D23DD66AA00';
    lc_TRAlg_IMD_Alg_G2015_GUID = '3C19266C-4DD2-4A73-ACE4-495F5B441830';
    lc_TRAlg_IMD_Alg_G2016_GUID = '897C4018-457C-4271-B9E1-331463F8BC03';

  // ��㯯� � ������ �� ����ᮢ��� ���⥦� �� ������ �� �����⢮
  lc_TRAlg_IMR_Grp_GUID = 'DBB2C0E2-C00F-4636-AECE-28193C7B7046';
    lc_TRAlg_IMR_Alg_GUID = '6A463844-9BD4-43F1-8C4D-73B664A414C4';
    lc_TRAlg_IMR_Alg_G2015_GUID = '6A463844-9BD4-43F1-8C4D-73B664A414C4';
    lc_TRAlg_IMR_Alg_G2016_GUID = '2D0DDEAA-54F2-4359-A9A1-CBDEDA5BB5DE';

  // ��㯯� � ������ �� ������ �� ������ �������� �᪮������
  lc_TRAlg_NDPI_Grp_GUID = 'C3EEC1B0-5335-4E05-B0E2-8572EB7710AD';
    lc_TRAlg_NDPI_Alg_G2014_GUID = '956E969E-2C47-47D4-BC76-BBE7C57B2F81';
    lc_TRAlg_NDPI_Alg_G2015_GUID = '436E969E-2C56-47D4-BC76-BBE7C57B3F721';

  // ��㯯� � ������ �� ������ �� ���
  lc_TRAlg_USN_Grp_GUID = '81223EBB-C301-4D3F-81A1-D6DB417C767D';
    lc_TRAlg_USN_Alg_GUID = 'DD452333-497A-4D1D-9015-3D87635CC2CB';

  // ��㯯� � ������ �� ��ᢥ��� �������
  lc_TRAlg_KNTMSZ_Grp_GUID = '8BB7BCAA-4E36-4717-81B1-659CD935BC00';
    lc_TRAlg_KNTMSZ_Alg_GUID = 'EB4E26C0-25B6-4447-8438-7559D58D62F8';

  // ��㯯� � ������ �� �����쭮�� ������
  lc_TRAlg_Zem_Grp_GUID = 'AD90060C-0DCC-4387-86C7-47E92E232C78';
    lc_TRAlg_Zem_Alg_GUID = 'B12401FE-D541-4D77-ADE4-DFD34A8D373E';

  // �������� �� ����
  lc_TRAlg_ENVD_Grp_GUID = 'B2E6E10A-2605-4F25-A4C1-9A753254B23B';
    lc_TRAlg_ENVD_Alg_G2015_GUID = '976807C9-D8FF-4C0D-A373-5EF4A5310EDC';
    lc_TRAlg_ENVD_Alg_G2016_GUID = '52B0A663-CC54-40B3-868B-D00FDF2BAFB6';

  // �⢥� �� ᮮ�饭�� (� �ॡ������� �।�⠢����� ���᭥���)
  lc_TRAlg_OTTRNDS_Grp_GUID = '302238BB-C301-6D3F-81A1-D6DB4125637D';
    lc_TRAlg_OTTRNDS_Alg_GUID = 'HY452543-497A-4D1D-9015-3D876JH122CB';

  // �⢥� �� ᮮ�饭�� (� �ॡ������� �।�⠢����� ���᭥���)
  lc_TRAlg_BOUPR_Grp_GUID = 'E8BE4B1F-BDD0-404F-8730-73AD07A497DB';
    lc_TRAlg_BOUPR_Alg_G2015_GUID    = '4DF58C44-9616-4134-A487-62CED06FC3D2';
    lc_TRAlg_BOUPR_Alg_G2015Add_GUID = 'AA78D814-1F1A-4E42-9EB0-50830AB63F52';

  // ��㯯� � ������ �� ����
  lc_TRAlg_ESHN_Grp_GUID = '1BAFFA6D-85EF-4B46-9C8D-2133D23F75F5';
    lc_TRAlg_ESHN_Alg_G2016_GUID = 'D8319D0B-8474-4AB3-BE49-0B8D6BE1D83B';
  //#endregion ��������� ����������
  //****************************************************************************


  //============================================================================
  //#region �������������� ����������
  //----------------------------------------------------------------------------
  // ������᪠� ���⭮���
  lc_TRAlg_Sys_Stat_Grp_GUID = 'A2B3F9B7-9C1F-4BE9-92C6-70813F2CC01F';

   // ��㯯� � ������ �� �������� ������� � �������� ࠡ�⭨���
  lc_TRAlg_NepolZanIDvijRabot_Grp_GUID = '50CF61B0-D2E9-42C2-9CAF-8CBD84251C01';
    lc_TRAlg_NepolZanIDvijRabot_Alg_GUID = 'D5A66FE0-95FF-448D-B9F2-F311D267535C';

  // ��㯯� � ������ �� ���㦥���� �த�樨
  lc_TRAlg_OtgrProd_Grp_GUID = '50CF61B0-D2E9-42C2-9CAF-8CBD84251C00';
    lc_TRAlg_OtgrProd_Alg_GUID = 'D5A66FE0-95FF-448D-B9F2-F311D267534C';

  // ��㯯� � ������ �� 䨭��ᮢ� ��������
  lc_TRAlg_FinVlog_Grp_GUID = 'BEF34FF2-F393-48B5-83F1-FB82F1810954';
    lc_TRAlg_FinVlog_Alg_GUID = '5CDCB553-05B8-4EC7-994E-3E29FFA90850';

  // ��㯯� � ������ �� �������� � ��䨭��ᮢ� ��⨢� � �।�⢠� �� ������� ��ந⥫��⢮
  lc_TRAlg_InvAndDolSt_Grp_GUID = '5C4FE929-CE55-4427-A8CA-197D95E85743';
    lc_TRAlg_InvAndDolSt_Alg_GUID = '75B67289-C39E-42E1-BB41-E74DE841912B';

  // ��㯯� � ������ �� �ந������� � ���㧪� ⮢�஢ � ���
  lc_TRAlg_PrIOtgrTov_Grp_GUID = '124CA5E5-7976-4833-8771-28B8DD3DE93B';
    lc_TRAlg_PrIOtgrTov_Alg_GUID = 'DE359015-CFB8-4FBB-BFBF-BFDB769FC388';

  // ��㯯� � ������ �� ���⥫쭮�� �࣠����樨
  lc_TRAlg_DeytOrg_Grp_GUID = 'D198EC8D-39CE-4D98-BA07-8CBB858C0200';
    lc_TRAlg_DeytOrg_Alg_GUID = '84EBFAA1-1E2D-42D9-96E3-A4E71A2959B7';

  // ��㯯� � ������ �� �ᯮ�짮����� �������� �।��
  lc_TRAlg_IspDenSr_Grp_GUID = 'CC51C4D9-3A5F-4F2C-9049-86ECC04C0D80';
    lc_TRAlg_IspDenSr_Alg_GUID = '387E340B-DA85-43F9-8C52-7561BF4BE7A2';

  //#endregion �������������� ����������
  //****************************************************************************

end; // const

#endif//__TRFuncAlgEtalon_Inc__