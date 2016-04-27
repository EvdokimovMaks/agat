//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Управление бюджетом"
// Интерфейс взаимодействия с модулем "Управление бюджетом"
//------------------------------------------------------------------------------

#ifndef __FpBudgetToMnPlan_Const_Included__
#define __FpBudgetToMnPlan_Const_Included__

Const
  coFpRetCode_Ok                =  0;      //'Successfully'
  coFpRetCode_RecNotFound       =  1;      //'Запись не найдена'
  coFpRetCode_IntEscClose       =  2;      //'Отказ от выбора в интерфейсе'
                                                                                
  coFpRetCode_FpCONotFound      =  3;      //'Не найден центр ответственности'
  coFpRetCode_FpTPerNotFound    =  4;      //'Не найден тип периода планирования'
  coFpRetCode_FpPeriodNotFound  =  5;      //'Не найден период планирования'
  coFpRetCode_FpStBudNotFound   =  6;      //'Не найдена статья бюджета'
  coFpRetCode_FpVariantNotFound =  7;      //'Не найден вариант бюджета'
                                                                                
  coFpRetCode_ContAnNotInited   =  8;      //'Не проинициализирован контейнер аналитик'
  coFpRetCode_NotStBudKau       =  9;      //'Аналитика не учитывается по статье'
  coFpRetCode_NotBudKauMean     = 10;      //'Значение аналитики не учитывается в бюджтировании'

  coFpRetCode_BudgetNotFound    = 11;      //'Не найден бюджет'
  coFpRetCode_BudVarNotFound    = 12;      //'Не найдена копия бюджета'
  coFpRetCode_BadKodReg         = 13;      //'Некорректный регистр учета'
                                                                                
  coFpRetCode_ErrGetBudgetSum   = 14;      //'Ошибка получения суммы бюджета'
                                
  coFpRetCode_ErrReCalcBuget    = 15;      //'Ошибка пересчета бюджета'
  coFpRetCode_FpTFormNotFound   = 16;      //'Не найдена типовая форма бюджета'
end;

#endif//__FpBudgetToMnPlan_Const_Included__ 

