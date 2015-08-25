//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Управление бюджетом"
// Базовый объект : "Контроль отработки правил передачи данных"
//------------------------------------------------------------------------------

#ifndef __FpORelObDTC_Inc__
#define __FpORelObDTC_Inc__

const
  // режимы контроля передачи данных
  lc_RelObDTCMode_Off      = 0;  // контроль выключен
  lc_RelObDTCMode_On       = 1;  // контроль жесткий
  lc_RelObDTCMode_Warning  = 2;  // контроль с предупреждением

  // краткие наименования режимов контроля
  lc_RelObDTCName_Off      = 'НЕТ';
  lc_RelObDTCName_On       = 'ДА';
  lc_RelObDTCName_Warning  = 'С ПОДТВЕРЖДЕНИЕМ';


  // идентификаторы алгоритма
  lc_RelObDTCAlg_Prefix  = 'AlgDTC'  ;  // префикс идентификатора алгоритма контроля

  // идентификаторы переменных алгоритма
  lc_RelObDTCFld_OldSum  = '%OldSum%';  // старая сумма в бюджете
  lc_RelObDTCFld_NewSum  = '%NewSum%';  // новая сумма в бюджете
  lc_RelObDTCFld_AddSum  = '%AddSum%';  // изменение суммы в бюджете

  // алгоритм по умолчанию
  lc_RelObDTCAlg_DefaultAlg = lc_RelObDTCFld_NewSum + ' >= 0';
end;

#endif//__FpORelObDTC_Inc__
