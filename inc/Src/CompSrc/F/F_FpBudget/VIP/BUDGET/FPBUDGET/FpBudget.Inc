//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Управление бюджетом"
// Типы данных сущности "Бюджеты"
//------------------------------------------------------------------------------

#ifndef _FpBudget_Inc_
#define _FpBudget_Inc_

#ifdef ComponentVersionInDict
#include IFPBUDGET.vih
#endif
#GalPublic type TFpBudget  = record as Table FpBudget;
#GalPublic type TPFpBudget = record as Table FpBudget with x$position;

#endif // _FpBudget_Inc_
