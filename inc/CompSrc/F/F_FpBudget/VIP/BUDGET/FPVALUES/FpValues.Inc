//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Управление бюджетом"
// Типы данных сущности "Значения показателей бюджетирования"
//------------------------------------------------------------------------------

#ifndef __FPVALUES_INC__
#define __FPVALUES_INC__

#ifdef ComponentVersionInDict
#include IFPVALUES.vih
#endif //ComponentVersionInDict
#GalPublic type TFpValues   = record as Table FpValues;
#GalPublic type TPFpValues  = record as Table FpValues with x$position;

#endif //__FPVALUES_INC__
