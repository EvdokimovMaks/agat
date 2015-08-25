//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Управление бюджетом"
// Все типы "Периоды планирования"
//------------------------------------------------------------------------------

#ifndef __FpPeriod_Inc_Included__
#define __FpPeriod_Inc_Included__

#ifdef ComponentVersionInDict
#include iFpPeriod.Vih
#endif //ComponentVersion
#GalPublic type TFpPeriod   = record as Table FpPeriod;
#GalPublic type TPFpPeriod  = record as Table FpPeriod with x$position;

#endif//__FpPeriod_Inc_Included__
