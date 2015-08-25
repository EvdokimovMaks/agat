//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - модуль "Управление бюджетом"
// Базовый объект : "Настройка представлений и алгоритмов"
//------------------------------------------------------------------------------
                                            
#ifndef __FpOCmp_Inc__
#define __FpOCmp_Inc__

Const
  lc_FpCmpTune_cTopRec_Analiz_FpBudget =  0;
  lc_FpCmpTune_cTopRec_Analiz_OfpLimit = 10;
  lc_FpCmpTune_cTopRec_Algorithm_STD   =  1;
  lc_FpCmpTune_cTopRec_Algorithm_UPO   =  2;
end;

Const
  AlgVarApostraph  = '%';
  UserAlgColVar    = 'C';
  UserAlgArgVar    = 'A';
  UserAlgSumVar    = 'Sum';
  UserAlgKeyAn     = 'cKeyAn';

  UserAlgBudget    = 'cBudget'   ;  // Бюджет
  UserAlgBudCO     = 'cBudCO'    ;  // ЦО бюджета                
  UserAlgBudPP     = 'cBudPP'    ;  // Период бюджета            
                                                                 
  UserAlgBudVar    = 'cBudVar'   ;  // Копия бюджета             
  UserAlgVariant   = 'cVariant'  ;  // Вариант бюджета           
  UserAlgBudStage  = 'sBudStage' ;  // Стадии бюджетного процесса
  UserAlgKodReg    = 'wKodReg'   ;  // Код регистра учета        
                                                                 
  UserAlgStBud     = 'cStBud'    ;  // Статья                    
  UserAlgPeriod    = 'cPeriod'   ;  // Период                    
  UserAlgAnMean    = 'cAn'       ;  // Значение аналитики

  UserAlgAnConstMean   = 'cAnConst'  ;  // Кнстанта значение аналитики
end;

Const
  NameAlgNewLine  = '+';
  NameAlgCO       = '%CO%';
  NameAlgPP       = '%PP%';
  NameAlgReg      = '%Reg%';
  NameAlgVar      = '%Var%';
  NameAlgStg      = '%Stg%';
end;

Const
  lc_FpCmpColTune_CulcPeriodMode        = 0;
  lc_FpCmpColTune_ArgPeriodMode         = 1;
  lc_FpCmpColTune_FirstValidPeriodMode  = 2;
  lc_FpCmpColTune_DefinePeriodMode      = 3;
  lc_FpCmpColTune_HistoryPeriodMode     = 4;
end;

Const
  lc_FpCmpColTune_AlgAddModeBit = 1;
  lc_FpCmpColTune_AlgDimModeBit = 2;
  lc_FpCmpColTune_AlgNFNModeBit = 4;
end;

Const
  lcFpCulCmp_IsAlgBit      = 1;
  lcFpCulCmp_IsStatBit     = 2;
  lcFpCulCmp_OkReCountBit  = 4;
  lcFpCulCmp_NotExistBit   = 8;
end;

Const
  lcKatExpr_PerSh = 1;
  lcKatExpr_PerS1 = 1;
  lcKatExpr_PerS2 = 2;

  lcKatExpr_Crit  = 2;
  lcKatExpr_RplAn = 3;

  lcKatExpr_MnXLT = 0;
end;

Const
  lc_RepBudAnalizXLSID = 'F_FpBudget\REPXLT\FpRepBudAnaliz';
end;

Const
  lc_FpCmpColTune_IgnoreCOBit = 1;
  lc_FpCmpColTune_IgnorePPBit = 2;
end;

#endif // __FpOCmp_Inc__
