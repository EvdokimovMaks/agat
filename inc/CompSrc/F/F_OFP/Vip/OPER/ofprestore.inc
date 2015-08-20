//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Платежный календарь"
// Константы: Восстановление данных бюджета
//------------------------------------------------------------------------------

#ifndef __OfpRestore_Inc__
#define __OfpRestore_Inc__

const

  lc_OfpRestore_NotClearBudget  = 0; // Не очищать бюджет
  lc_OfpRestore_StBudByTF       = 1; // Статьи по типовой форме
  lc_OfpRestore_StBudByAktOfp   = 2; // Статьи по финобязательствам

  lc_OfpRestore_Plan   = 0; // План
  lc_OfpRestore_Fact   = 1; // Факт
  lc_OfpRestore_Rezerv = 2; // Резерв

  lc_OfpRestore_DSK_BeginDate        = 'OfpRestore_BeginDate'       ;
  lc_OfpRestore_DSK_fEndDate         = 'OfpRestore_fEndDate'        ;
  lc_OfpRestore_DSK_fBudgerRegisters = 'OfpRestore_fBudgerRegisters';
  lc_OfpRestore_DSK_fUseFOB          = 'OfpRestore_fUseFOB'         ;
  lc_OfpRestore_DSK_fPredictionCurse = 'OfpRestore_fPredictionCurse';
  lc_OfpRestore_DSK_fCourse          = 'OfpRestore_fCourse'         ;
  lc_OfpRestore_DSK_fClearBudget     = 'OfpRestore_fClearBudget'    ;
  lc_OfpRestore_DSK_fStBudSource     = 'OfpRestore_fStBudSource'    ;
  lc_OfpRestore_DSK_fForma           = 'OfpRestore_fForma'          ;

end;

#endif // __OfpRestore_Inc__
