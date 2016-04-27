//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Электронная отчетность"
// Интерфейс редактирования : "Декларация по НДС"
//------------------------------------------------------------------------------

#ifndef __G2015_NDSNalDRM_Inc__
#define __G2015_NDSNalDRM_Inc__

const
  // количество элементов в структуре по умолчанию
  lc_StructCount_CodeVidOp  : word = 5;  // Код вида операции
  lc_StructCount_DocOplata  : word = 5;  // Сведения о документе, подтверждающем уплату налога
  lc_StructCount_DataOprTov : word = 1;  // Дата принятия на учет товаров

  // список документов
  lc_DocListSeparator  = ';'         ;  // разделитель списка документов
  lc_DocListAttrSepar  = ' '         ;  // разделитель м/у атрибутами документа: "номер" и "дата"
  lc_DocListDateSepar  = '.'         ;  // разделитель формата даты
  lc_DocListDateFormat = 'DD.MM.YYYY';  // формат даты

  // значения атрибута "признак существования раздела"
  lc_RExistNot : string = '0';
  lc_RExistYes : string = '1';

  // пути на данные разделов
  lc_RXX_RExistNodePath : string = 'Файл/ПризнНал8-12';

  lc_R08_RExistNodePath : string = 'Файл/ПризнНал8';
  lc_R08_DocNDCNodePath : string = 'Файл/Документ/ПрилТребНДС';
  lc_R08_ParentNodePath : string = lc_R08_DocNDCNodePath + '/СведРазд8';
  lc_R08_SlavedNodePath : string = lc_R08_ParentNodePath + '/КнПокСтр';
  lc_R08P_SlavedNodePath: string = lc_R08_ParentNodePath + '/КнПокСтрПоясн';

  lc_R8D_RExistNodePath : string = 'Файл/ПризнНал81';
  lc_R8D_DocNDCNodePath : string = 'Файл/Документ/ПрилТребНДС';
  lc_R8D_ParentNodePath : string = lc_R8D_DocNDCNodePath + '/СведРазд8.1';
  lc_R8D_SlavedNodePath : string = lc_R8D_ParentNodePath + '/КнПокДЛСтр';
  lc_R8DP_SlavedNodePath: string = lc_R8D_ParentNodePath + '/КнПокДЛСтрПоясн';

  lc_R09_RExistNodePath : string = 'Файл/ПризнНал9';
  lc_R09_DocNDCNodePath : string = 'Файл/Документ/ПрилТребНДС';
  lc_R09_ParentNodePath : string = lc_R09_DocNDCNodePath + '/СведРазд9';
  lc_R09_SlavedNodePath : string = lc_R09_ParentNodePath + '/КнПродСтр';
  lc_R09P_SlavedNodePath: string = lc_R09_ParentNodePath + '/КнПродСтрПоясн';

  lc_R9D_RExistNodePath : string = 'Файл/ПризнНал91';
  lc_R9D_DocNDCNodePath : string = 'Файл/Документ/ПрилТребНДС';
  lc_R9D_ParentNodePath : string = lc_R9D_DocNDCNodePath + '/СведРазд9.1';
  lc_R9D_SlavedNodePath : string = lc_R9D_ParentNodePath + '/КнПродДЛСтр';
  lc_R9DP_SlavedNodePath: string = lc_R9D_ParentNodePath + '/КнПродДЛСтрПоясн';

  lc_R10_RExistNodePath : string = 'Файл/ПризнНал10';
  lc_R10_DocNDCNodePath : string = 'Файл/Документ/ПрилТребНДС';
  lc_R10_ParentNodePath : string = lc_R10_DocNDCNodePath + '/СведРазд10';
  lc_R10_SlavedNodePath : string = lc_R10_ParentNodePath + '/ЖУчВыстСчФСтр';
  lc_R10P_SlavedNodePath: string = lc_R10_ParentNodePath + '/ЖУчВыстСчФСтрПоясн';

  lc_R11_RExistNodePath : string = 'Файл/ПризнНал11';
  lc_R11_DocNDCNodePath : string = 'Файл/Документ/ПрилТребНДС';
  lc_R11_ParentNodePath : string = lc_R11_DocNDCNodePath + '/СведРазд11';
  lc_R11_SlavedNodePath : string = lc_R11_ParentNodePath + '/ЖУчПолучСчФСтр';
  lc_R11P_SlavedNodePath: string = lc_R11_ParentNodePath + '/ЖУчПолучСчФСтрПоясн';

  lc_R12_RExistNodePath : string = 'Файл/ПризнНал12';
  lc_R12_DocNDCNodePath : string = 'Файл/Документ/ПрилТребНДС';
  lc_R12_ParentNodePath : string = lc_R12_DocNDCNodePath + '/СведРазд12';
  lc_R12_SlavedNodePath : string = lc_R12_ParentNodePath + '/ВыстСчФ_173.5';
  lc_R12P_SlavedNodePath: string = lc_R12_ParentNodePath + '/ВыстСчФ_173.5Поясн';

  // пути на наименования XSD файлов
  lc_R08_XSDNodePath = lc_R08_DocNDCNodePath+'/'+lc_Schema_NodePath;
  lc_R8D_XSDNodePath = lc_R8D_DocNDCNodePath+'/'+lc_Schema_NodePath;
  lc_R09_XSDNodePath = lc_R09_DocNDCNodePath+'/'+lc_Schema_NodePath;
  lc_R9D_XSDNodePath = lc_R9D_DocNDCNodePath+'/'+lc_Schema_NodePath;
  lc_R10_XSDNodePath = lc_R10_DocNDCNodePath+'/'+lc_Schema_NodePath;
  lc_R11_XSDNodePath = lc_R11_DocNDCNodePath+'/'+lc_Schema_NodePath;
  lc_R12_XSDNodePath = lc_R12_DocNDCNodePath+'/'+lc_Schema_NodePath;

  lc_DopRazdelManagerRID_BR =   0;  // идентификатор основных разделов

  // биты модифицируемых разделов
  lc_DopRazdelManagerBit_08 =   1;  // Раздел  8
  lc_DopRazdelManagerBit_8D =   2;  // Раздел  8 Приложение 1
  lc_DopRazdelManagerBit_09 =   4;  // Раздел  9
  lc_DopRazdelManagerBit_9D =   8;  // Раздел  9 Приложение 1
  lc_DopRazdelManagerBit_10 =  16;  // Раздел 10
  lc_DopRazdelManagerBit_11 =  32;  // Раздел 11
  lc_DopRazdelManagerBit_12 =  64;  // Раздел 12

  // биты режима фильтрации данных
  lc_DopRazdelFlt_COBit     =  1;  // Фильтр по центрам ответственности

  lc_DopRazdelFltCOMN = 'GetSomeFpCO'+#(__InterfaceName__);  // Наименование маркера со списком ЦО для фильтрации
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

#endif//__G2015_NDSNalDRM_Inc__
