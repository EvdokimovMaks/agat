//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Управление бюджетом"
// Типы для таблицы FpRelOb
//------------------------------------------------------------------------------


#ifndef __FpRelOb_Inc_Included__
#define __FpRelOb_Inc_Included__

#ifdef ComponentVersionInDict
#include iFpRelOb.Vih
// FpRelOb появится только в новом словаре
#GalPublic type TFpRelOb  = record as Table FpRelOb;
#GalPublic type TPFpRelOb = record as Table FpRelOb with x$position;
#endif //ComponentVersion

#endif//__FpRelOb_Inc_Included__
