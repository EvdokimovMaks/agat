//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Управление бюджетом"
// Аналитика бюджетирования
//------------------------------------------------------------------------------

#ifndef __FpMean_Inc_Included__
#define __FpMean_Inc_Included__

#ifdef ComponentVersionInDict
#include iFpMeanTF.Vih
#endif
#GalPublic type TFpMeanTF   = record as Table FpMeanTF;
#GalPublic type TPFpMeanTF  = record as Table FpMeanTF with x$position;

#endif//__FpMean_Inc_Included__
