//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.1 - модуль "Электронная отчетность"
// Базовый объект : "Работа с налоговыми периодами"
//------------------------------------------------------------------------------

#ifndef __OTaxPeriod_Inc__
#define __OTaxPeriod_Inc__

const
  // типы налоговых периодов
  lc_TaxRepTPer_Not         : word = 0;  // не определен
  lc_TaxRepTPer_Day         : word = 1;  // день
  lc_TaxRepTPer_Week        : word = 2;  // неделя
  lc_TaxRepTPer_Month       : word = 3;  // месяц
  lc_TaxRepTPer_Quater      : word = 4;  // квартал
  lc_TaxRepTPer_HalfYear    : word = 5;  // полугодие
  lc_TaxRepTPer_Year        : word = 6;  // год
  lc_TaxRepTPer_9Month      : word = 7;  // 9 месяцев

  // биты налоговых периодов
  lc_TaxRepTPerBit_Day      : word = word(2**(lc_TaxRepTPer_Day     -1) );  // день
  lc_TaxRepTPerBit_Week     : word = word(2**(lc_TaxRepTPer_Week    -1) );  // неделя
  lc_TaxRepTPerBit_Month    : word = word(2**(lc_TaxRepTPer_Month   -1) );  // месяц
  lc_TaxRepTPerBit_Quater   : word = word(2**(lc_TaxRepTPer_Quater  -1) );  // квартал
  lc_TaxRepTPerBit_HalfYear : word = word(2**(lc_TaxRepTPer_HalfYear-1) );  // полугодие
  lc_TaxRepTPerBit_Year     : word = word(2**(lc_TaxRepTPer_Year    -1) );  // год
  lc_TaxRepTPerBit_9Month   : word = word(2**(lc_TaxRepTPer_9Month  -1) );  // 9 месяцев
end; // const

#endif//__OTaxPeriod_Inc__
