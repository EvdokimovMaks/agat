//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.1 - модуль "Электронная отчетность"
// Базовый объект : "Работа со статусами деклараций"
//------------------------------------------------------------------------------

#ifndef __TaxReport_Status_Inc__
#define __TaxReport_Status_Inc__

const
  // обозначение статусов деклараций (KatNotes.Status)
  lc_TaxRep_Status_Null  : word = 9;  // не выбран
  lc_TaxRep_Status_Oform : word = 0;  // оформляемый
  lc_TaxRep_Status_Gotov : word = 1;  // готов к отправке
  lc_TaxRep_Status_Otpr  : word = 2;  // отправлен
  lc_TaxRep_Status_Sdan  : word = 3;  // сдан
  lc_TaxRep_Status_Vozv  : word = 4;  // возвращен на доработку
  lc_TaxRep_Status_Opl   : word = 5;  // оплачен

  // обозначение статусов деклараций (строковый вид) (KatNotes.Code)
  lc_TaxRep_Status_sOform : string[20] = '0';  // оформляемый
  lc_TaxRep_Status_sGotov : string[20] = '1';  // готов к отправке
  lc_TaxRep_Status_sOtpr  : string[20] = '2';  // отправлен
  lc_TaxRep_Status_sSdan  : string[20] = '3';  // сдан
  lc_TaxRep_Status_sVozv  : string[20] = '4';  // возвращен на доработку
  lc_TaxRep_Status_sOpl   : string[20] = '5';  // оплачен
end; // const

#endif//__TaxReport_Status_Inc__