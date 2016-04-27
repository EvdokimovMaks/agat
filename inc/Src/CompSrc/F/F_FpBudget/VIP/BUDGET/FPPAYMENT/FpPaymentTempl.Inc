//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Управление бюджетом"
// Типы данных сущности : "Шаблон формирования платежек/извещений"
//------------------------------------------------------------------------------

#ifndef __FpPaymentTempl_Inc__
#define __FpPaymentTempl_Inc__

//------------------------------------------------------------------------------
#include FpPaymentTempl.Tbl  // таблицы сущности : "Шаблон формирования платежек/извещений"
//------------------------------------------------------------------------------

#GalPublic type TPPaymentTemplFld  = record as Table FpCmpTune        with x$position;
#GalPublic type TPPlPorPayTemplFld = record as Table TblPlPorPayTempl with x$position;
#GalPublic type TPEmailPayTemplFld = record as Table TblEmailPayTempl with x$position;


#endif//__FpPaymentTempl_Inc__
