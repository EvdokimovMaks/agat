// =============================================================================
//                                                     (c)  корпорация Галактика
// Галактика 7.11 - Производственный контур
// Описание таблицы, хранящей переменные окружения и их значения
// =============================================================================

#ifndef __Def_EnvironmentStorage__
#define __Def_EnvironmentStorage__

#component "M_MnPlan"

Table STRUCT EnvironmentStorage "Переменные окружения"
(
  Name : tName "Наименование переменной",
  Value: tName "Значение переменной"
)
With Index
(
  EnvironmentStorage01 = Name (Unique)
);
#endif
