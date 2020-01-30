//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.1 - модуль "Электронная отчетность"
// Интерфейс редактирования : "Пояснения к налоговой декларации по НДС"
//------------------------------------------------------------------------------

#ifndef __OTTRNDNal_Inc__
#define __OTTRNDNal_Inc__

const
  // количество элементов в структуре по умолчанию
  lc_StructCount_ErrorKodGraf : word = 1;  // Номер графы, содержащей ошибку
  lc_StructCount_ErrorGraf    : word = 1;  // Номер графы, содержащей ошибку
  lc_StructCount_CodeVidOp    : word = 4;  // Код вида операции
  lc_StructCount_DocOplata    : word = 1;  // Сведения о документе, подтверждающем уплату налога
  lc_StructCount_DataOprTov   : word = 1;  // Дата принятия на учет товаров
  lc_StructCount_SVPeriod     : word = 1;  // Сведения о счет-фактуре отражаются за: Период, Год

  // типы записей в таблице навигации (NavStruct.wType)
  lc_Title_NavNodeType : word = 01;  // Титульный лист
  lc_R01_0_NavNodeType : word = 02;  // Раздел 1
  lc_R02_F_NavNodeType : word = 03;  // Раздел 2 (папка)
  lc_R02_0_NavNodeType : word = 04;  // Раздел 2
  lc_R03_0_NavNodeType : word = 05;  // Раздел 3
  lc_R03_1_NavNodeType : word = 06;  // Раздел 3 Приложение 1
  lc_R03_2_NavNodeType : word = 07;  // Раздел 3 Приложение 2
  lc_R04_0_NavNodeType : word = 08;  // Раздел 4
  lc_R05_F_NavNodeType : word = 09;  // Раздел 5 (папка)
  lc_R05_0_NavNodeType : word = 10;  // Раздел 5
  lc_R06_0_NavNodeType : word = 11;  // Раздел 6
  lc_R07_0_NavNodeType : word = 12;  // Раздел 7
  lc_R08_F_NavNodeType : word = 13;  // Раздел 8 (папка)
  lc_R08_0_NavNodeType : word = 14;  // Раздел 8
  lc_R8D_F_NavNodeType : word = 15;  // Раздел 8 Приложение 1 (папка)
  lc_R8D_0_NavNodeType : word = 16;  // Раздел 8 Приложение 1
  lc_R09_F_NavNodeType : word = 17;  // Раздел 9 (папка)
  lc_R09_0_NavNodeType : word = 18;  // Раздел 9
  lc_R9D_F_NavNodeType : word = 19;  // Раздел 9 Приложение 1 (папка)
  lc_R9D_0_NavNodeType : word = 20;  // Раздел 9 Приложение 1
  lc_R10_F_NavNodeType : word = 21;  // Раздел 10 (папка)
  lc_R10_0_NavNodeType : word = 22;  // Раздел 10
  lc_R10_1_NavNodeType : word = 23;  // Раздел 10 Продолжение
  lc_R11_F_NavNodeType : word = 24;  // Раздел 11 (папка)
  lc_R11_0_NavNodeType : word = 25;  // Раздел 11
  lc_R11_1_NavNodeType : word = 26;  // Раздел 11 Продолжение
  lc_R12_F_NavNodeType : word = 27;  // Раздел 12 (папка)
  lc_R12_0_NavNodeType : word = 28;  // Раздел 12
  // 2017
  lc_NetKnigaProd_F_NavNodeType  : word = 29;  // Сведения, отсутствующие в книге продаж (папка)
  lc_NepodtvZapisi_F_NavNodeType : word = 30;  // Сведения о записях, операции по которым не подтверждаются (папка)
  lc_NepodtvZapisi_0_NavNodeType : word = 31;  // Сведения о записях, операции по которым не подтверждаются
  lc_NepodtvZapisi_1_NavNodeType : word = 37;  // Сведения о записях, операции по которым не подтверждаются (сведения о счет-фактуре)
  lc_NeKnPrStr_F_NavNodeType     : word = 32;  // Сведения по строкам, отсутствующим в книге продаж (папка)
  lc_NeKnPrStr_0_NavNodeType     : word = 33;  // Сведения по строкам, отсутствующим в книге продаж
  lc_PojasnInOsn_NavNodeType     : word = 34;  // Пояснения по иным основаниям
  lc_SvedKS_F_NavNodeType        : word = 35;  // Сведения по контрольным соотношениям (папка)
  lc_SvedKS_0_NavNodeType        : word = 36;  // Сведения по контрольным соотношениям


  // пути на данные разделов требования
  lc_RXX_ParentNodePath : string = 'ФайлТреб/Документ/ПрилТребНДС';

  lc_R08_ParentNodePath  : string = lc_RXX_ParentNodePath + '/СведРазд8';
  lc_R08_SlavedNodePath  : string = lc_R08_ParentNodePath + '/КнПокСтр';
  lc_R08P_SlavedNodePath : string = lc_R08_ParentNodePath + '/КнПокСтрПоясн';

  lc_R8D_ParentNodePath  : string = lc_RXX_ParentNodePath + '/СведРазд8.1';
  lc_R8D_SlavedNodePath  : string = lc_R8D_ParentNodePath + '/КнПокДЛСтр';
  lc_R8DP_SlavedNodePath : string = lc_R8D_ParentNodePath + '/КнПокДЛСтрПоясн';

  lc_R09_ParentNodePath  : string = lc_RXX_ParentNodePath + '/СведРазд9';
  lc_R09_SlavedNodePath  : string = lc_R09_ParentNodePath + '/КнПродСтр';
  lc_R09P_SlavedNodePath : string = lc_R09_ParentNodePath + '/КнПродСтрПоясн';

  lc_R9D_ParentNodePath  : string = lc_RXX_ParentNodePath + '/СведРазд9.1';
  lc_R9D_SlavedNodePath  : string = lc_R9D_ParentNodePath + '/КнПродДЛСтр';
  lc_R9DP_SlavedNodePath : string = lc_R9D_ParentNodePath + '/КнПродДЛСтрПоясн';

  lc_R10_ParentNodePath  : string = lc_RXX_ParentNodePath + '/СведРазд10';
  lc_R10_SlavedNodePath  : string = lc_R10_ParentNodePath + '/ЖУчВыстСчФСтр';
  lc_R10P_SlavedNodePath : string = lc_R10_ParentNodePath + '/ЖУчВыстСчФСтрПоясн';

  lc_R11_ParentNodePath  : string = lc_RXX_ParentNodePath + '/СведРазд11';
  lc_R11_SlavedNodePath  : string = lc_R11_ParentNodePath + '/ЖУчПолучСчФСтр';
  lc_R11P_SlavedNodePath : string = lc_R11_ParentNodePath + '/ЖУчПолучСчФСтрПоясн';

  lc_R12_ParentNodePath  : string = lc_RXX_ParentNodePath + '/СведРазд12';
  lc_R12_SlavedNodePath  : string = lc_R12_ParentNodePath + '/ВыстСчФ_173.5';
  lc_R12P_SlavedNodePath : string = lc_R12_ParentNodePath + '/ВыстСчФ_173.5Поясн';

  lc_NetKnigaProd_ParentNodePath : string = lc_RXX_ParentNodePath          + '/НетКнигаПрод';
  lc_NetKnigaProd_SlavedNodePath : string = lc_NetKnigaProd_ParentNodePath + '/НеподтвЗаписи';

  lc_SvedKS_ParentNodePath : string = lc_RXX_ParentNodePath    + '/СведКС';
  lc_SvedKS_SlavedNodePath : string = lc_SvedKS_ParentNodePath + '/СведКСОдин';

  // список документов
  lc_DocListSeparator  = ';'         ;  // разделитель списка документов
  lc_DocListDateSepar  = '.'         ;  // разделитель формата даты
  lc_DocListDateFormat = 'DD.MM.YYYY';  // формат даты

  // режим требование или пояснение
  lc_wTPMode_Treb : word = 0;  // требование
  lc_wTPMode_Poys : word = 1;  // пояснение

  // результат обработки строки требования
  lc_wDataCorrespond_Yes : word   =  0 ;  // данные соответствуют
  lc_wDataCorrespond_Not : word   =  1 ;  // данные НЕ соответствуют
  lc_sDataCorrespond_Yes : string = string(lc_wDataCorrespond_Yes);  // данные соответствуют
  lc_sDataCorrespond_Not : string = string(lc_wDataCorrespond_Not);  // данные НЕ соответствуют

  lc_NullDate : date = To_Date(0,0,0);
end; // const
//------------------------------------------------------------------------------
const
  // Константы для глобальных номеров в документах системы
  lc_GlobalCodeSF_Sell : Word = 72; // Счет-фактура наша       (cwGlobalCodeSF_Sell в sfconst.Inc)
  lc_GlobalCodeSF_Buy  : Word = 73; // Счет-фактура поставщика (cwGlobalCodeSF_Buy  в sfconst.Inc)
end; // const
//------------------------------------------------------------------------------
// Атрибуты документа
Type TDRMDocAttr = record
  sNum : string;  // номер документа
  dDat : date;    // дата  документа
end;
//------------------------------------------------------------------------------
// Список документов
Type TDRMDocList = array[0..0] of TDRMDocAttr;
//------------------------------------------------------------------------------
// Список строковых представлений реквизитов документов
Type TDRMStrDocList = array[0..0] of string;

//------------------------------------------------------------------------------
// Мультистрока
Type TDRMMultyStr = array[0..0] of string[lc_ValueLength];

#endif//__OTTRNDNal_Inc__
