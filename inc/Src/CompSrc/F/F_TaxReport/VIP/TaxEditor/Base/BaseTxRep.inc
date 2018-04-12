//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.1 - модуль "Электронная отчетность"
// Базовый интерфейс редактирования : "Электронный отчет"
//------------------------------------------------------------------------------

#ifndef __BaseTxRep_Inc__
#define __BaseTxRep_Inc__

const
  // режим формирования идентификатора XML файла
  lc_CrtXMLFileIDMode_Title : word = 0; // брать значения из титула интерфейса
  lc_CrtXMLFileIDMode_Payer : word = 1; // брать значения из настроек налогоплательщика

  // режимы хранения данных
  lc_DataStoreMode_NDef : word = 0;  // режим хранения не задан
  lc_DataStoreMode_AFld : word = 1;  // хранение данных в "Универсальном хранилище"
  lc_DataStoreMode_GXML : word = 2;  // хранение данных в GAL XML
  lc_DataStoreMode_FT01 : word = 3;  // хранение данных в FORMAT01

  // разделы хранения в AllMemo
  lc_AllMemoTip_Note : word = 0;  // примечания
  lc_AllMemoTip_GXML : word = 1;  // данные в GAL XML
  lc_AllMemoTip_FT01 : word = 2;  // данные в FORMAT01

  // обозначение признаков разделов
  lc_TypeOfVis_Null   : String[1] = ' ';  // нет данных
  lc_TypeOfVis_Vis    : String[1] = '+';  // выгружаемый
  lc_TypeOfVis_NotVis : String[1] = '-';  // не выгружаемый
  lc_TypeOfVis_ReCalc : String[1] = '?';  // рассчитываемый
end; // const

#endif//__BaseTxRep_Inc__
