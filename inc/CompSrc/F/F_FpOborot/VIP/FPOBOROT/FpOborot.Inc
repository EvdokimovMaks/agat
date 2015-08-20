//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Управление бюджетом"
// Типы для таблицы FpOborot
//------------------------------------------------------------------------------

#ifndef __FpOborot_Inc_Included__
#define __FpOborot_Inc_Included__

#ifdef ComponentVersionInDict
#include iFpOborot.Vih
#endif //ComponentVersion
#GalPublic type TFpOborot   = record as Table FpOborot;
#GalPublic type TPFpOborot  = record as Table FpOborot with x$position;

#endif//__FpOborot_Inc_Included__
