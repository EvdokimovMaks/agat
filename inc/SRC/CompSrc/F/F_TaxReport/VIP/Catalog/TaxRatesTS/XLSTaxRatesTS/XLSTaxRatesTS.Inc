//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.1 - модуль "Электронная отчетность"
// Библиотека функций : "Импорт из Excel каталога налоговых ставок"
//------------------------------------------------------------------------------

#ifndef __XLSTaxRatesTS_Inc__
#define __XLSTaxRatesTS_Inc__

const
  // импортируемые данные
  lc_XLSTaxRatesTS_BegDataRow : LongInt =  5;  // начальная строка с Excel данными
  lc_XLSTaxRatesTS_Col_Count  : LongInt = 10;  // количество колонок в потоке данных

  // импортируемые поля
  lc_XLSTaxRatesTS_SubRF     : LongInt = 1;  // Субъект РФ (код)
  lc_XLSTaxRatesTS_FromDate  : LongInt = 2;  // Дата начала действия
  lc_XLSTaxRatesTS_KodVidTS  : LongInt = 3;  // Код вида ТС
  lc_XLSTaxRatesTS_PowerFrom : LongInt = 4;  // Мощность (от)
  lc_XLSTaxRatesTS_PowerTo   : LongInt = 5;  // Мощность (до)
  lc_XLSTaxRatesTS_NalSt     : LongInt = 6;  // Налоговая ставка
  lc_XLSTaxRatesTS_AgeFrom   : LongInt = 7;  // Возраст ТС (от)
  lc_XLSTaxRatesTS_AgeTo     : LongInt = 8;  // Возраст ТС (до)
  lc_XLSTaxRatesTS_OKEI      : LongInt = 9;  // Код ОКЕИ
end; // const

Type TImpData = record
  SubRF     : String;  // Субъект РФ (код)
  FromDate  : String;  // Дата начала действия
  KodVidTS  : String;  // Код вида ТС
  PowerFrom : TSumma;  // Мощность (от)
  PowerTo   : TSumma;  // Мощность (до)
  NalSt     : TSumma;  // Налоговая ставка
  AgeFrom   : Word  ;  // Возраст ТС (от)
  AgeTo     : Word  ;  // Возраст ТС (до)
  OKEI      : Word  ;  // Код ОКЕИ
end; // Type

#endif//__XLSTaxRatesTS_Inc__