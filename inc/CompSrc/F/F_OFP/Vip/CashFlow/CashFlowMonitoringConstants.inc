//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.10 - модуль "Платежный календарь"
// Таблица : "Константы мониторинга БДДС"
//------------------------------------------------------------------------------

#ifndef __CashFlow_Monitoring_Constants_Inc__
#define __CashFlow_Monitoring_Constants_Inc__

const

  // Типы показателей
  lc_CashFlow_Activity_BeginRemainder = 1; // Остаток на начало
  lc_CashFlow_Activity_Earnings       = 2; // Поступления
  lc_CashFlow_Activity_Expenditure    = 3; // Расход
  lc_CashFlow_Activity_CashFlow       = 4; // Денежный поток
  lc_CashFlow_Activity_EndRemainder   = 5; // Остаток на конец

  // Названия показателей агрегатов
  lc_CashFlow_AgrNames_BeginRemainder = 'ОСТАТОК НА НАЧАЛО';
  lc_CashFlow_AgrNames_Earnings       = 'ПОСТУПЛЕНИЯ';
  lc_CashFlow_AgrNames_Expenditure    = 'ВЫБЫТИЯ';
  lc_CashFlow_AgrNames_CashFlow       = 'ДЕНЕЖНЫЙ ПОТОК';
  lc_CashFlow_AgrNames_EndRemainder   = 'ОСТАТОК НА КОНЕЦ';

  // Значения регистра указывающего в какой период попадает ФОП
  lc_CashFlow_Register_Fact       = 0; // Факт
  lc_CashFlow_Register_Prediction = 1; // Прогноз

  // Типы данных по которым строится информация cреднесрочного планирования
  lc_CashFlow_Info_ClearingStBud = 0; // Информация из разноски ФОП
  lc_CashFlow_Info_Clearing      = 1; // Информация из ФОП
  lc_CashFlow_Info_Budget        = 2; // Информация из Бюджета
  lc_CashFlow_Info_Remainders    = 3; // Информация об остатках ПС

  // Названия переменных и алгоритмов используемых в LotExpression
  lc_CashFlow_Alg_DeviationCount    = 'DeviationAlg';         // Алгоритм для расчета отклонения
  lc_CashFlow_Alg_CriticalDeviation = 'CriticalDeviationAlg'; // Алгоритм для расчета критичности отклонения
  lc_CashFlow_Alg_Plan              = '%Plan%';               // Значение плана
  lc_CashFlow_Alg_Fact              = '%Fact%';               // Значение факта
  lc_CashFlow_Alg_Prediction        = '%Prediction%';         // Значение прогноза
  lc_CashFlow_Alg_Deviation         = '%Deviation%';          // Значение отклонения

  // Типы статей бюджетов
  lc_CashFlow_StBud_Income         = 1; // Статьи доходов
  lc_CashFlow_StBud_Charge         = 2; // Статьи расходов
  lc_CashFlow_StBud_BeginRemainder = 3; // Статьи начального остатка
  lc_CashFlow_StBud_EndRemainder   = 4; // Статьи конечного остатка

  // Наименование неизвестного ЦО
  lc_CashFlow_LeafName_NoCO        = 'Не определенный ЦО'; // Не известный ЦО

  // Наименование неизвестной статьи бюджета
  lc_CashFlow_LeafName_StBud       = 'Не определенная статья бюджета'; // Не известная статья бюджета

  // Наименование ошибочных статей бюджета
  lc_CashFlow_ErrorName_KolStBud      = '!!!количественная статья ';
  lc_CashFlow_ErrorName_BadDirection  = '!!!не соответствует направление ';

  // Типы значений записываемых в словарь при поиске FpValues (DSQL)
  //lc_CashFlow_DSQLValues_BudVar  = 8997;//'CashFlow_BudVar'; // Значения копий бюджета
  //lc_CashFlow_DSQLValues_Periods = 8998;//'CashFlow_Period'; // Значения периодов
  //lc_CashFlow_DSQLValues_StBud   = 8999;//'CashFlow_StBud';  // Значения статей бюджетов

end;

#endif // __CashFlow_Monitoring_Constants_Inc__
