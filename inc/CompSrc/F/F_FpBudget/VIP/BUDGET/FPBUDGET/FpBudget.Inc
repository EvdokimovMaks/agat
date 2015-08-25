//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Управление бюджетом"
// Типы данных сущности "Бюджеты"
//------------------------------------------------------------------------------

#ifndef _FpBudget_Inc_
#define _FpBudget_Inc_

#ifdef ComponentVersionInDict
#include IFPBUDGET.vih
#endif //ComponentVersion
#GalPublic type TFpBudget  = record as Table FpBudget;
#GalPublic type TPFpBudget = record as Table FpBudget with x$position;

#endif // _FpBudget_Inc_
