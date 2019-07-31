//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Электронная отчетность ГОЗ"
// Интерфейс редактирования : "Отчет об исполнении ГК организацией, выполняющей ГОЗ"
//------------------------------------------------------------------------------

#ifndef __v001_gzrF47Editor_Inc__
#define __v001_gzrF47Editor_Inc__

const
  // типы вершины в таблице навигации
  lc_NavNodeType_Title     : word = 01;  // Заголовок
  lc_NavNodeType_Kontr     : word = 02;  // Контракт

  // наименование служебных XML полей
  lc_XMLFieldName_cOwnOrg  = 'cOwnOrg' ;  // ссылка на "Подотчетную организацию"
  lc_XMLFieldName_cIGK     = 'cIGK'    ;  // ссылка на ИГК
  lc_XMLFieldName_cDogovor = 'cDogovor';  // ссылка на "Договор исполнения госзаказа"
  lc_XMLFieldName_cKatBank = 'cKatBank';  // ссылка на "отдельный счет" по "Договору исполнения госзаказа"

  //----------------------------------------------------------------------------
  // ПАТ фильтры
  // типы ПАТ фильтров
  lc_PATFltMode_ByNRec : word = 0;  // по NRec
  lc_PATFltMode_ByMask : word = 1;  // по маске

  // типы спецификации ПАТ фильтров
  lc_SpPATFltMode_ByNRec        : word = 0;  // по NRec
  lc_SpPATFltMode_ByIncludeMask : word = 1;  // включая маски
  lc_SpPATFltMode_ByExcludeMask : word = 2;  // исключая маски

  // идентификаторы авто ПАТ фильтров
  // ПАТ фильтры по аналитике "Государственный контракт"
  lc_AutoPATFltName_Contract_Cur          = 'авто_ТекКонтракт';
  lc_AutoPATFltName_Contract_OtherCurZak  = 'авто_ДрКонтрактыСТекЗаказчиком';
  lc_AutoPATFltName_Contract_SobstvSredva = 'авто_СобствСредства';
  // ПАТ фильтры по аналитике "Банковские счета"
  lc_AutoPATFltName_KatBank_Cur           = 'авто_ОтдСчетТекКонтракта';
  lc_AutoPATFltName_KatBank_OtherCurZak   = 'авто_ОтдСчетДрКонтрактовСТекЗаказчиком';
  lc_AutoPATFltName_KatBank_SobstvSredva  = 'авто_ОтдСчетСобствСредства';

  lc_AutoPATFltNRec_NotExist : comp       = 1;
  // ПАТ фильтры
  //----------------------------------------------------------------------------
end; // const

#endif//__v001_gzrF47Editor_Inc__
