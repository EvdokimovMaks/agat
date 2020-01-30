//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.1 - модуль "Электронная отчетность"
// Библиотека функций: "Алгоритмы расчета"
//------------------------------------------------------------------------------

#ifndef __TRFuncAlgEtalon_Inc__
#define __TRFuncAlgEtalon_Inc__

// ГЕНЕРАЦИЯ GUID :: BuhXml_CreateGUID36

const
  //----------------------------------------------------------------------------
  // Каталог системных алгоритмов
  lc_TRAlg_Sys_Grp_GUID = '2EC00898-FB71-4ADB-8A57-D1642602D9F8';
  // Каталог пользовательских алгоритмов
  lc_TRAlg_Usr_Grp_GUID = 'B5C8E42C-269C-48D8-B8AC-8FB1EDF5621D';
  //----------------------------------------------------------------------------


  //============================================================================
  //#region НАЛОГОВАЯ ОТЧЕТНОСТЬ
  //----------------------------------------------------------------------------
  // Налоговая отчетность
  lc_TRAlg_Sys_Nal_Grp_GUID  = '0BF1300E-F82A-4864-993B-15C96FAD9121';

  // группа и алгоритм по транспортному налогу
  lc_TRAlg_TranD_Grp_GUID = '2DD339C6-7180-445E-92A8-5276AF88253A';
    lc_TRAlg_TranD_Alg_G2013_GUID = 'D6CB269E-4AB7-4ECF-A1F7-01B1DF93917D'; //2013 г.
    lc_TRAlg_TranD_Alg_G2014_GUID = 'DDCACA9F-0C76-4EA1-8BD5-D7335C0BDB1C'; //2014 г.
    lc_TRAlg_TranD_Alg_G2017_GUID = 'EAB8662A-743B-4A89-9F77-D429EFD83EBE'; //2017 г.
    lc_TRAlg_TranD_Alg_G2018_GUID = 'F3229DE0-401B-4720-8575-460D162BDBE2'; //2018 г.

  // группа и алгоритм по транспортному налогу (авансы)
  lc_TRAlg_TranDAv_Grp_GUID = '554E2B24-D952-4187-8192-6B2C694ECA9F';
    lc_TRAlg_TranDAv_Alg_G2017_GUID = 'CC6C1BA0-0450-4E2B-953D-939679B3C8F2'; //2017 г.

  // группа и алгоритм по НДС
  lc_TRAlg_NDS_Grp_GUID = 'C03D4F86-2F78-4F6C-9359-511D5FA5089D';
    lc_TRAlg_NDS_Alg_G2014_GUID = 'C0014F64-378C-4ACA-AADB-024CAFD01640'; //2014 г.
    lc_TRAlg_NDS_Alg_G2015_GUID = '088DFAF8-6546-44A8-ABA5-79A7F43C304B'; //2015 г.
    lc_TRAlg_NDS_Alg_G2017_GUID = '6DAFFF6B-E8AE-4F5C-82AC-FCD7B8735D40'; //2017 г.
    lc_TRAlg_NDS_Alg_G2019_GUID = '07930E56-4E60-42D7-87E3-73FDA801BDDC'; //2019 г.

  // группа и алгоритм по сведениям о затратах на производство и реализацию продукции
  lc_TRAlg_ZatrNaProizv_Grp_GUID = 'DE18E146-7D9B-448C-8016-34BF975DD62E';
    lc_TRAlg_ZatrNaProizv_Alg_G2014_GUID    = '1D071CC0-3CCE-4D8D-9EA2-3402BBA9771E';
    lc_TRAlg_ZatrNaProizv_Alg_G2015_GUID    = 'C01833EE-2201-4724-AACE-A223ED575B75';
    lc_TRAlg_ZatrNaProizv_Alg_G2016_GUID    = 'C72604AA-4A99-4A70-8E61-1850DD443B5F';
    lc_TRAlg_ZatrNaProizv_Alg_G2016Add_GUID = 'FC9989D8-7AAD-4E00-8875-4B2322D5A009';

  // группа и алгоритм по налогу на прибыль
  lc_TRAlg_Prib_Grp_GUID = '6FA6FA8D-90F8-4EBA-B4FB-75AE02EE5061';
    lc_TRAlg_Prib_Alg_G2015_GUID    = '5965E705-59D2-4456-85E0-870E9340B211';
    lc_TRAlg_Prib_Alg_G2017_GUID    = '0A0DD470-67C1-4189-9AE4-C1A491C7FD25';
    lc_TRAlg_Prib_Alg_G2017Add_GUID = '455E06A6-FA6D-4F30-90DD-896341338EE6';
    lc_TRAlg_Prib_Alg_G2020_GUID    = '69EF438F-9C7D-4C5B-9CB6-994C4F01C20D';
    lc_TRAlg_Prib_Alg_G2020Add_GUID = '200C941D-FD97-40B8-B38C-45862466E60C';

  // группа и алгоритм по налоговому расчету о суммах выплаченных иностр. орг.
  lc_TRAlg_DohInOrg_Grp_GUID = '405B9750-E9F9-4464-A916-D28074C357A8';
    lc_TRAlg_DohInOrg_Alg_G2016_GUID = '051D69FE-4ED8-44B7-8E95-5E2A7B8BCCCC';

  // группа и алгоритм по акцизам на подакцизные товары, за исключением табачных изделий
  lc_TRAlg_AKCIZ_Grp_GUID = 'C66CD5E4-0024-400E-84DE-C963657A64A2';
    lc_TRAlg_AKCIZ_Alg_GUID = '2D934935-6148-4CD2-B3C9-4C6DE963C1B3';

  // группа и алгоритм по бухгалтерской отчетности
  lc_TRAlg_BUHMP_Grp_GUID = 'C67CD5E4-0224-407E-87DE-C859657A64A6';
    lc_TRAlg_BUHMP_Alg_GUID = '3D938935-6048-4CD0-B1C9-4C6DE512C7B4';

  // группа и алгоритм по бухгалтерской отчетности
  lc_TRAlg_Buh_Grp_GUID = 'C66CD5E4-0024-400E-84DE-C854657A64A2';
    lc_TRAlg_Buh_Alg_G2014_GUID    = '2D934935-6148-4CD2-B3C9-4C6DE569C1B3';
    lc_TRAlg_Buh_Alg_G2015_GUID    = '4B52DCB9-4E40-4E9E-B480-1C37A818C057';
    lc_TRAlg_Buh_Alg_G2015Add_GUID = '52892044-5DC7-4C5A-B60B-F42114445D2F';
    lc_TRAlg_Buh_Alg_G2017_GUID    = '3B8003DA-2DFE-494E-A702-C2EE608BB45A';
    lc_TRAlg_Buh_Alg_G2017Add_GUID = '24B46970-A8BC-482A-BC6C-C2F151EC6E56';

  // группа и алгоритм по сведениям о приложении к бух. отчетности
  lc_TRAlg_BuhOtchPril_Grp_GUID = '316A07B3-7D6B-4C76-8EF3-1E06A3B2E182';
    lc_TRAlg_BuhOtchPril_Alg_G2014_GUID = 'E9409C49-0CC8-4D57-81B4-A65F2E42EDE1';
    lc_TRAlg_BuhOtchPril_Alg_G2015_GUID = '3B3DEE8A-63FC-4DE6-8BB8-ECEB075E3FB4';

  // группа и алгоритм по налогу на имущество
  lc_TRAlg_ImuD_Grp_GUID = '4E7C6CC2-A10C-47E3-B31F-5D23DD66AA00';
    lc_TRAlg_ImuD_Alg_G2015_GUID = '3C19266C-4DD2-4A73-ACE4-495F5B441830';
    lc_TRAlg_ImuD_Alg_G2016_GUID = '897C4018-457C-4271-B9E1-331463F8BC03';
    lc_TRAlg_ImuD_Alg_G2017_GUID = '1091FF95-6BD9-43B4-BEFF-D59F8DDD5C35';
    lc_TRAlg_ImuD_Alg_G2019_GUID = '51EFDA91-3869-41F4-A433-48A9C9DD6098';
    lc_TRAlg_ImuD_Alg_G2020_GUID = '6F54D2BB-7F0F-498D-BB8F-EFC81E89B4B4';

  // группа и алгоритм по авансовому платежу по налогу на имущество
  lc_TRAlg_ImuR_Grp_GUID = 'DBB2C0E2-C00F-4636-AECE-28193C7B7046';
    lc_TRAlg_ImuR_Alg_G2015_GUID = '6A463844-9BD4-43F1-8C4D-73B664A414C4';
    lc_TRAlg_ImuR_Alg_G2016_GUID = '2D0DDEAA-54F2-4359-A9A1-CBDEDA5BB5DE';
    lc_TRAlg_ImuR_Alg_G2017_GUID = '855FDAAD-C284-46DF-A405-3A8048A98887';
    lc_TRAlg_ImuR_Alg_G2019_GUID = '120065AC-C708-43FC-B037-946110018BAD';

  // группа и алгоритм по декларации на дополнительный доход от добычи углеводородного сырья
  lc_TRAlg_NDDUgl_Grp_GUID = 'CA9F6BE4-3305-4B8B-BBA7-B69D0677303E';
    lc_TRAlg_NDDUgl_Alg_G2019_GUID = 'B7EBDBC9-3C15-48A6-9483-3443E5C097AC';

  // группа и алгоритм по налогу на добычу полезных ископаемых
  lc_TRAlg_NDPI_Grp_GUID = 'C3EEC1B0-5335-4E05-B0E2-8572EB7710AD';
    lc_TRAlg_NDPI_Alg_G2014_GUID      = '956E969E-2C47-47D4-BC76-BBE7C57B2F81';
    lc_TRAlg_NDPI_Alg_G2015_GUID      = '436E969E-2C56-47D4-BC76-BBE7C57B3F721';
    lc_TRAlg_NDPI_Alg_G2019_GUID      = '5568BCE8-B513-423B-B695-4635768913C4';
    lc_TRAlg_NDPI_Alg_G2019_3mes_GUID = 'FE4B5515-0191-4287-91D3-43DE3EB3B10F';

  // группа и алгоритм по налогу по УСН
  lc_TRAlg_USN_Grp_GUID = '81223EBB-C301-4D3F-81A1-D6DB417C767D';
    lc_TRAlg_USN_Alg_G2014_GUID = 'DD452333-497A-4D1D-9015-3D87635CC2CB';
    lc_TRAlg_USN_Alg_G2016_GUID = 'A4FF0928-BAF8-4AE4-BBA3-5EF8C74643CB';

  // группа и алгоритм по водному налогу
  lc_TRAlg_VodaNal_Grp_GUID = '08C7F205-BA70-4D14-BB4C-9FE166F032F9';
    lc_TRAlg_VodaNal_Alg_G2016_GUID = '2F8A51C8-0E1C-43AD-96C2-1614E7137308';

  // группа и алгоритм по косвенным налогам
  lc_TRAlg_KNTMSZ_Grp_GUID = '8BB7BCAA-4E36-4717-81B1-659CD935BC00';
    lc_TRAlg_KNTMSZ_Alg_G2010_GUID = 'EB4E26C0-25B6-4447-8438-7559D58D62F8';
    lc_TRAlg_KNTMSZ_Alg_G2017_GUID = 'E54ACF0E-5E6D-47A0-B5C9-871EB45A3D0D';

  // группа и алгоритм по земельному налогу
  lc_TRAlg_ZemND_Grp_GUID = 'AD90060C-0DCC-4387-86C7-47E92E232C78';
    lc_TRAlg_ZemND_Alg_G2011_GUID = 'B12401FE-D541-4D77-ADE4-DFD34A8D373E';
    lc_TRAlg_ZemND_Alg_G2017_GUID = 'C4A7C6C7-91CF-4BAD-930E-B7CD4FE320FE';
    lc_TRAlg_ZemND_Alg_G2018_GUID = 'A11F9E48-3D94-4627-BE94-4CF7186B8C5D';

  // Декларация по ЕНВД
  lc_TRAlg_ENVD_Grp_GUID = 'B2E6E10A-2605-4F25-A4C1-9A753254B23B';
    lc_TRAlg_ENVD_Alg_G2015_GUID     = '976807C9-D8FF-4C0D-A373-5EF4A5310EDC';
    lc_TRAlg_ENVD_Alg_G2016_GUID     = '52B0A663-CC54-40B3-868B-D00FDF2BAFB6';
    lc_TRAlg_ENVD_Alg_G2017_GUID     = 'F4059A34-0948-4D05-966E-E89AD66B4796';
    lc_TRAlg_ENVD_Alg_G2018_3kv_GUID = '8ED6A77F-784A-4331-BE97-650DF3632EFD';
    lc_TRAlg_ENVD_Alg_G2018_4kv_GUID = '259C2CBF-8D2C-447A-B0B3-4B8AEE9E0C8F';

  // Ответ на сообщение (с требованием представления пояснений)
  lc_TRAlg_OTTRNDS_Grp_GUID = '302238BB-C301-6D3F-81A1-D6DB4125637D';
    lc_TRAlg_OTTRNDS_Alg_G2015_guid = 'HY452543-497A-4D1D-9015-3D876JH122CB';
    lc_TRAlg_OTTRNDS_Alg_G2016_guid = '18B5BFE1-82C6-428D-9E81-E5D83777EF5A';
    lc_TRAlg_OTTRNDS_Alg_G2017_guid = '6220DF87-5659-4AAD-9FF1-26EAEDA45997';
    lc_TRAlg_OTTRNDS_Alg_G2019_guid = 'EF5F69DC-8ABF-446A-86AE-C81919405E80';

  // Упрощенная бухгалтерская (финансовая) отчетность
  lc_TRAlg_BOUPR_Grp_GUID = 'E8BE4B1F-BDD0-404F-8730-73AD07A497DB';
    lc_TRAlg_BOUPR_Alg_G2015_GUID    = '4DF58C44-9616-4134-A487-62CED06FC3D2';
    lc_TRAlg_BOUPR_Alg_G2015Add_GUID = 'AA78D814-1F1A-4E42-9EB0-50830AB63F52';
    lc_TRAlg_BOUPR_Alg_G2017_GUID    = '86DDD629-E299-40FB-AFB8-F1B55E9899AD';
    lc_TRAlg_BOUPR_Alg_G2017Add_GUID = '1DDF309B-24E7-4584-ADFF-A74216C1DD3A';

  // группа и алгоритм по ЕСХН
  lc_TRAlg_ESHN_Grp_GUID = '1BAFFA6D-85EF-4B46-9C8D-2133D23F75F5';
    lc_TRAlg_ESHN_Alg_G2016_GUID = 'D8319D0B-8474-4AB3-BE49-0B8D6BE1D83B';

  // группа и алгоритм по акцизам на автомобильный бензин
  lc_TRAlg_AKCAVNEF_Grp_GUID = '07B353E0-F5A6-49AE-B0B6-5EFDF284A293';
    lc_TRAlg_AKCAVNEF_Alg_G2016_GUID = '578F740F-51B6-4A53-8019-1D17BBD70D48';

  // группа и алгоритм по акцизам на этиловый спирт, алкогольную и (или) подакцизную спиртосодержащую продукцию (1151090)
  lc_TRAlg_AKCALK_Grp_GUID = '56321ED8-409C-447F-B5A0-88B5FB256B67';
    lc_TRAlg_AKCALK_Alg_G2016_GUID = 'E5D16351-BBA9-409A-9C4B-4209AE6F2D08';
    lc_TRAlg_AKCALK_Alg_G2019_GUID = '0D685F7E-5B79-4252-9FBA-B340F165E38D';

  // группа и алгоритм уведомления о контролируемых иностранных компаниях (1120416)
  lc_TRAlg_UvKik_Grp_GUID = '80B5F4F0-F8D4-478A-9756-F5DCC833E64C';
    lc_TRAlg_UvKik_Alg_G2017_GUID = '42205859-D6D0-4AFC-854B-B51BCB0E9574';

  // группа и алгоритм уведомления об участии в иностранных организациях (1120411)
  lc_TRAlg_UvUchIno_Grp_GUID = 'DAA026E0-7B90-47F4-8CE7-B58A731D147F';
    lc_TRAlg_UvUchIno_Alg_G2017_GUID = '60FE4AAA-CB7C-4346-AB78-A84C02F44AD5';
    lc_TRAlg_UvUchIno_Alg_G2019_GUID = '6D9B8275-A4A2-4579-B622-153384A45ED4';

  // группа и алгоритм заявления о возврате суммы излишне уплаченного налога (1150058)
  lc_TRAlg_ZVIUN_Grp_GUID = '98394672-63F0-4E3B-AA37-6FF609835D35';
    lc_TRAlg_ZVIUN_Alg_G2017_GUID = '1BAC29A7-6AC0-4BAC-9D09-CBF88A6AF439';
    lc_TRAlg_ZVIUN_Alg_G2018_GUID = '5E5E6E2F-6503-463E-B420-0EA6BC2D73A9';

  // группа и алгоритм заявления о зачете суммы излишне уплаченного налога (1150057)
  lc_TRAlg_ZZIUN_Grp_GUID = '8C498F36-C6EA-47F8-B98E-9AE592515AA6';
    lc_TRAlg_ZZIUN_Alg_G2017_GUID = 'C9C791F7-55CC-4645-BC45-C71CD0089A77';
    lc_TRAlg_ZZIUN_Alg_G2018_GUID = 'D5659A9F-8A1B-4AF2-827B-4399E16B3F1F';

  // группа и алгоритм документа обеспечивающего эл. документооборот в отношениях, регулируемых законодательством о налогах и сборах (1184002)
  lc_TRAlg_DocNpNo_Grp_GUID = '725E6963-5A04-4E74-B847-FCED47E16048';
    lc_TRAlg_DocNpNo_Alg_G2017_guid = '55CF3DF3-AE1C-450E-BBA3-9F9B8BB46283';

// Заявление налогоплательщика - организации о предоставлении налоговой льготы по транспортному налогу и (или) земельному налогу 1150064 (2019)
  lc_TRAlg_PRORGLZTR_Grp_GUID = 'CD28F9F2-B59B-4426-95BA-ECF545BF266A';
    lc_TRAlg_PRORGLZTR_Alg_G2019_guid = '811F9B17-148A-426D-A0F8-32EEC6214163';

  //#endregion НАЛОГОВАЯ ОТЧЕТНОСТЬ
  //****************************************************************************


  //============================================================================
  //#region СТАТИСТИЧЕСКАЯ ОТЧЕТНОСТЬ
  //----------------------------------------------------------------------------
  // Статистическая отчетность
  lc_TRAlg_Sys_Stat_Grp_GUID = 'A2B3F9B7-9C1F-4BE9-92C6-70813F2CC01F';

   // группа и алгоритм "Сведения о грузовом автотранспорте и протяженности автодорог общего пользования (1-ТР (автотранспорт))"
  lc_TRAlg_SvOGruzTrIDor_Grp_GUID = '1654C3BB-1ECD-44CA-8FDC-8DC26DA71020';
    lc_TRAlg_SvOGruzTrIDor_Alg_G2017_GUID = '735F1B45-895F-4393-BC6C-95B7C0AC9F1D';

  // группа и алгоритм по сведениям о финансовом состоянии организации
  lc_TRAlg_FinSost_Grp_GUID = 'EBE09504-7C1B-4823-BD8E-5C7CF44E6283';
    lc_TRAlg_FinSost_Alg_G2014_GUID    = '138ABA74-96A4-434F-B775-915D1EB67E37';
    lc_TRAlg_FinSost_Alg_G2015_GUID    = '288D5A50-1AA5-496E-80AB-E4AB46C7BC01';
    lc_TRAlg_FinSost_Alg_G2017_GUID    = 'A31D69EA-944C-4DE3-AA84-DF17B6698B11';
    lc_TRAlg_FinSost_Alg_G2017Add_GUID = '2CE68C06-EC15-4FD8-A703-AC5C7289D042';
    lc_TRAlg_FinSost_Alg_G2018_GUID    = 'CF2385F4-C58C-4AF1-80F6-A465559A4895';
    lc_TRAlg_FinSost_Alg_G2018Add_GUID = '7EC5F395-59E0-4B66-86DB-778851688ED1';
    lc_TRAlg_FinSost_Alg_G2019_GUID    = '72B18715-0C0C-45F1-9DB0-5590CEA26883';
    lc_TRAlg_FinSost_Alg_G2019Add_GUID = '798518D6-FDC4-45FA-8482-6275C3D65608';

  // группа и алгоритм по просроченной задолженности по ЗП
  lc_TRAlg_ZadolPoZP_Grp_GUID = '9024B3EC-A4E2-48D0-9BC1-E2FAF11C6587';
    lc_TRAlg_ZadolPoZP_Alg_G2014_GUID = '9A74FFB8-FB66-439A-861C-70FB8055388E';
    lc_TRAlg_ZadolPoZP_Alg_G2015_GUID = '64C210D9-91E5-4215-9F83-5BAD1DF3BAF6';
    lc_TRAlg_ZadolPoZP_Alg_G2016_GUID = '56C220G1-97J5-4283-8FD3-651G25K4563B';
    lc_TRAlg_ZadolPoZP_Alg_G2017_GUID = '3A28F91F-E0EE-46DC-9EA6-F0D5B01151E7';
    lc_TRAlg_ZadolPoZP_Alg_G2018_GUID = '87DBE81D-834D-4336-AE11-81C87CF54CA5';
    lc_TRAlg_ZadolPoZP_Alg_G2019_GUID = 'W7JJL645-5453-5754-6436-34468A456765';
    lc_TRAlg_ZadolPoZP_Alg_G2020_GUID = 'D27A4A9D-81D6-4D50-B9B9-6DD4D1B9CE35';

   // группа и алгоритм "Сведения о неполной занятости и движении работников (П-4 (НЗ))"
  lc_TRAlg_NepolZanIDvijRabot_Grp_GUID = '50CF61B0-D2E9-42C2-9CAF-8CBD84251C01';
    lc_TRAlg_NepolZanIDvijRabot_Alg_G2015_GUID = 'D5A66FE0-95FF-448D-B9F2-F311D267535C';
    lc_TRAlg_NepolZanIDvijRabot_Alg_G2016_GUID = '1DB4705E-A3A2-41E0-986C-2C17BE84DB6D';
    lc_TRAlg_NepolZanIDvijRabot_Alg_G2018_GUID = '30BABC58-6779-4805-BDBC-C154255A25E9';
    lc_TRAlg_NepolZanIDvijRabot_Alg_G2019_GUID = 'RE578867-3456-4785-246J-4ATS56DFTRR9';
    lc_TRAlg_NepolZanIDvijRabot_Alg_G2020_GUID = '3DCBEBFB-A418-4165-8D70-04908D99D3A4';

  // группа и алгоритм по отгруженной продукции
  lc_TRAlg_OtgrProd_Grp_GUID = '50CF61B0-D2E9-42C2-9CAF-8CBD84251C00';
    lc_TRAlg_OtgrProd_Alg_GUID = 'D5A66FE0-95FF-448D-B9F2-F311D267534C';

  // группа и алгоритм по финансовым вложениям
  lc_TRAlg_FinVlog_Grp_GUID = 'BEF34FF2-F393-48B5-83F1-FB82F1810954';
    lc_TRAlg_FinVlog_Alg_G2015_GUID = '5CDCB553-05B8-4EC7-994E-3E29FFA90850';
    lc_TRAlg_FinVlog_Alg_G2017_GUID = '497B43C9-1E3C-4B59-BBE7-747018CE09F6';
    lc_TRAlg_FinVlog_Alg_G2018_GUID = '7388AC4A-0C69-4ED3-A680-69F7F6DBDBDB';
    lc_TRAlg_FinVlog_Alg_G2019_GUID = '47HGFHCA-0FD6-RE42-ER7I-RTYUD3HJHGJH';

  // группа и алгоритм по инвестициям в нефинансовые активы
  lc_TRAlg_InvAndDolSt_Grp_GUID = '5C4FE929-CE55-4427-A8CA-197D95E85743';
    lc_TRAlg_InvAndDolSt_Alg_G2015_GUID = '75B67289-C39E-42E1-BB41-E74DE841912B';
    lc_TRAlg_InvAndDolSt_Alg_G2017_GUID = 'AB876011-3B13-4C6C-9712-E7C668CA0F03';
    lc_TRAlg_InvAndDolSt_Alg_G2018_GUID = '16848675-0305-4BDF-BC43-076F7EBB5CDC';
    lc_TRAlg_InvAndDolSt_Alg_G2019_GUID = 'R354657D-R305-4345-DT7H-TRYT0FHCFHYH';
    lc_TRAlg_InvAndDolSt_Alg_G2020_GUID = '3A443A3A-6C74-4F5C-9A28-BCDD29F79976';

  // группа и алгоритм по производству и отгрузке товаров и услуг
  lc_TRAlg_PrIOtgrTov_Grp_GUID = '124CA5E5-7976-4833-8771-28B8DD3DE93B';
    lc_TRAlg_PrIOtgrTov_Alg_G2014_GUID = 'DE359015-CFB8-4FBB-BFBF-BFDB769FC388';
    lc_TRAlg_PrIOtgrTov_Alg_G2016_GUID = 'CB9D8256-4958-401C-8B10-C24C3F0509FF';
    lc_TRAlg_PrIOtgrTov_Alg_G2018_GUID = 'ECA876C6-58BB-4304-B6A7-C47B791CFB33';
    lc_TRAlg_PrIOtgrTov_Alg_G2019_GUID = 'DF76K341-55TR-4435-B457-CRYRTU63B353';

  // группа и алгоритм по деятельности организации
  lc_TRAlg_DeytOrg_Grp_GUID = 'D198EC8D-39CE-4D98-BA07-8CBB858C0200';
    lc_TRAlg_DeytOrg_Alg_G2014_GUID    = '84EBFAA1-1E2D-42D9-96E3-A4E71A2959B7';
    lc_TRAlg_DeytOrg_Alg_G2017_GUID    = 'B6E8AB44-3969-4CD0-8F40-830160C31E70';
    lc_TRAlg_DeytOrg_Alg_G2017Add_GUID = '3C6C1DF3-8F4F-4464-BA74-0995EA18A076';
    lc_TRAlg_DeytOrg_Alg_G2018_GUID    = 'B6SAD434-3WD3-234D-232D-34J8KJ3GR5WX';
    lc_TRAlg_DeytOrg_Alg_G2018Add_GUID = '3324DSF1-2345-4464-BA74-0995EA18A076';

  // группа и алгоритм по использованию денежных средств
  lc_TRAlg_IspDenSr_Grp_GUID = 'CC51C4D9-3A5F-4F2C-9049-86ECC04C0D80';
    lc_TRAlg_IspDenSr_Alg_G2014_GUID = '387E340B-DA85-43F9-8C52-7561BF4BE7A2';
    lc_TRAlg_IspDenSr_Alg_G2016_GUID = 'D31D6AF6-9B86-4186-94F5-471D2391154D';
    lc_TRAlg_IspDenSr_Alg_G2017_GUID = '9050B79A-2B14-4858-8CEA-2160D5A51AC0';
    lc_TRAlg_IspDenSr_Alg_G2018_GUID = '33245HED-2B14-4858-8CEA-2160D5A51AC0';

  //#endregion СТАТИСТИЧЕСКАЯ ОТЧЕТНОСТЬ
  //****************************************************************************

end; // const

#endif//__TRFuncAlgEtalon_Inc__
