//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Электронная отчетность ГОЗ"
// Библиотека функций : "Типы периодов"
//------------------------------------------------------------------------------

#ifndef __gzrFuncTPer_Inc__
#define __gzrFuncTPer_Inc__

const
  // типы периодов
  lc_gzrRepTPer_Not         : word = 0;  // не определен
  lc_gzrRepTPer_Day         : word = 1;  // день
  lc_gzrRepTPer_Week        : word = 2;  // неделя
  lc_gzrRepTPer_Month       : word = 3;  // месяц
  lc_gzrRepTPer_Quater      : word = 4;  // квартал
  lc_gzrRepTPer_HalfYear    : word = 5;  // полугодие
  lc_gzrRepTPer_Year        : word = 6;  // год
  lc_gzrRepTPer_9Month      : word = 7;  // 9 месяцев

  // биты периодов
  lc_gzrRepTPerBit_Day      : word = word(2**(lc_gzrRepTPer_Day     -1) );  // день
  lc_gzrRepTPerBit_Week     : word = word(2**(lc_gzrRepTPer_Week    -1) );  // неделя
  lc_gzrRepTPerBit_Month    : word = word(2**(lc_gzrRepTPer_Month   -1) );  // месяц
  lc_gzrRepTPerBit_Quater   : word = word(2**(lc_gzrRepTPer_Quater  -1) );  // квартал
  lc_gzrRepTPerBit_HalfYear : word = word(2**(lc_gzrRepTPer_HalfYear-1) );  // полугодие
  lc_gzrRepTPerBit_Year     : word = word(2**(lc_gzrRepTPer_Year    -1) );  // год
  lc_gzrRepTPerBit_9Month   : word = word(2**(lc_gzrRepTPer_9Month  -1) );  // 9 месяцев
end; //const

#endif//__gzrFuncTPer_Inc__
