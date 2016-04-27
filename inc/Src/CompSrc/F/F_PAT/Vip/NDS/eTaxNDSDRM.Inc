//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Бухгалтерская отчетность"
// Интерфейс редактирования : "Дополнительные разделы НДС"
//------------------------------------------------------------------------------

#ifndef __eTaxNDSDRM_Inc__
#define __eTaxNDSDRM_Inc__

const
  // идентификаторы разделов
  lc_wRazdelID_00 : word =   0;  // Общая часть
  lc_wRazdelID_BR : word =   1;  // Основные разделы
  lc_wRazdelID_08 : word =  80;  // Раздел  8
  lc_wRazdelID_8D : word =  81;  // Раздел  8 Приложение 1
  lc_wRazdelID_09 : word =  90;  // Раздел  9
  lc_wRazdelID_9D : word =  91;  // Раздел  9 Приложение 1
  lc_wRazdelID_10 : word = 100;  // Раздел 10
  lc_wRazdelID_11 : word = 110;  // Раздел 11
  lc_wRazdelID_12 : word = 120;  // Раздел 12

  // биты модифицируемых разделов
  lc_DopRazdelManagerBit_08 =   1;  // Раздел  8
  lc_DopRazdelManagerBit_8D =   2;  // Раздел  8 Приложение 1
  lc_DopRazdelManagerBit_09 =   4;  // Раздел  9
  lc_DopRazdelManagerBit_9D =   8;  // Раздел  9 Приложение 1
  lc_DopRazdelManagerBit_10 =  16;  // Раздел 10
  lc_DopRazdelManagerBit_11 =  32;  // Раздел 11
  lc_DopRazdelManagerBit_12 =  64;  // Раздел 12

  // режимы сохранения в XML файл
  lc_SaveToXMLMode_STD : word = 0;  // стандартный режим сохранения
  lc_SaveToXMLMode_Chk : word = 1;  // сохранение для XSD проверки
end; // const

#endif//__eTaxNDSDRM_Inc__
