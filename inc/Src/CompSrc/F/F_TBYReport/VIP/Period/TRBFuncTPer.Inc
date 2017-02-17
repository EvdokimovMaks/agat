//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Электронная отчетность РБ"
// Библиотека функций : "Типы периодов"
//------------------------------------------------------------------------------

#ifndef __TRBFuncTPer_Inc__
#define __TRBFuncTPer_Inc__

const
  // типы налоговых периодов
  lc_TRBRepTPer_Not         : word = 0;  // не определен
  lc_TRBRepTPer_Day         : word = 1;  // день
  lc_TRBRepTPer_Week        : word = 2;  // неделя
  lc_TRBRepTPer_Month       : word = 3;  // месяц
  lc_TRBRepTPer_Quater      : word = 4;  // квартал
  lc_TRBRepTPer_HalfYear    : word = 5;  // полугодие
  lc_TRBRepTPer_Year        : word = 6;  // год
  lc_TRBRepTPer_9Month      : word = 7;  // 9 месяцев

  // биты налоговых периодов
  lc_TRBRepTPerBit_Day      : word = word(2**(lc_TRBRepTPer_Day     -1) );  // день
  lc_TRBRepTPerBit_Week     : word = word(2**(lc_TRBRepTPer_Week    -1) );  // неделя
  lc_TRBRepTPerBit_Month    : word = word(2**(lc_TRBRepTPer_Month   -1) );  // месяц
  lc_TRBRepTPerBit_Quater   : word = word(2**(lc_TRBRepTPer_Quater  -1) );  // квартал
  lc_TRBRepTPerBit_HalfYear : word = word(2**(lc_TRBRepTPer_HalfYear-1) );  // полугодие
  lc_TRBRepTPerBit_Year     : word = word(2**(lc_TRBRepTPer_Year    -1) );  // год
  lc_TRBRepTPerBit_9Month   : word = word(2**(lc_TRBRepTPer_9Month  -1) );  // 9 месяцев
end; //const

#endif//__TRBFuncTPer_Inc__
