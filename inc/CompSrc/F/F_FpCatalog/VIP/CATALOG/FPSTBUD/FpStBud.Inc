//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Управление бюджетом"
// Все типы "Статьи бюджета"
//------------------------------------------------------------------------------

#ifndef __FpStBud_Inc_Included__
#define __FpStBud_Inc_Included__

#ifdef  ComponentVersionInDict
#include iFpStBud.Vih
#endif//ComponentVersionInDict
#GalPublic type TFpStBud   = record as Table FpStBud;
#GalPublic type TPFpStBud  = record as Table FpStBud with x$position;

#endif//__FpStBud_Inc_Included__
