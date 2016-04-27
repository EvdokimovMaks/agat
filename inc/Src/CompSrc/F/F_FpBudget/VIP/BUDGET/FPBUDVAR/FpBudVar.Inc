//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Управление бюджетом"
// Типы данных сущности "Копии бюджетов"
//------------------------------------------------------------------------------

#ifndef _FpBudVar_Inc_
#define _FpBudVar_Inc_

#include FpExBV.Inc

Table struct FpAvBudVar = FpBudVar;

#ifdef ComponentVersionInDict
#include IFPBUDVAR.vih
#endif //ComponentVersion
#GalPublic type TFpBudVar  = record as Table FpBudVar;
#GalPublic type TPFpBudVar = record as Table FpBudVar with x$position;

type TFpAvBudVar  = record as Table FpAvBudVar;
type TPFpAvBudVar = record as Table FpAvBudVar with x$position;

#include fpbudget.inc

#endif // _FpBudVar_Inc_
