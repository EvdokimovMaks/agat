//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Управление бюджетом"
// Базовый объект : "Настройка представлений и алгоритмов"
//------------------------------------------------------------------------------
                                            
#ifndef __FpOCmp_Inc__
#define __FpOCmp_Inc__

const
  lc_FpCmpTune_cTopRec_Analiz_FpBudget =  0;
  lc_FpCmpTune_cTopRec_Analiz_OfpLimit = 10;
  lc_FpCmpTune_cTopRec_Algorithm_STD   =  1;
  lc_FpCmpTune_cTopRec_Algorithm_UPO   =  2;
end;

const
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

  UserAlgAnconstMean   = 'cAnconst'  ;  // Кнстанта значение аналитики
end;

const
  NameAlgNewLine  = '+';
  NameAlgCO       = '%CO%';
  NameAlgPP       = '%PP%';
  NameAlgReg      = '%Reg%';
  NameAlgVar      = '%Var%';
  NameAlgStg      = '%Stg%';
end;

const
  lc_FpCmpColTune_CulcPeriodMode       : word = 0;
  lc_FpCmpColTune_ArgPeriodMode        : word = 1;
  lc_FpCmpColTune_FirstValidPeriodMode : word = 2;
  lc_FpCmpColTune_DefinePeriodMode     : word = 3;
  lc_FpCmpColTune_HistoryPeriodMode    : word = 4;
end;

const
  lc_FpCmpColTune_AlgAddModeBit = 1;
  lc_FpCmpColTune_AlgDimModeBit = 2;
  lc_FpCmpColTune_AlgNFNModeBit = 4;
end;

const
  lcFpCulCmp_IsAlgBit      = 1;
  lcFpCulCmp_IsStatBit     = 2;
  lcFpCulCmp_OkReCountBit  = 4;
  lcFpCulCmp_NotExistBit   = 8;
end;

const
  lcKatExpr_PerSh = 1;
  lcKatExpr_PerS1 = 1;
  lcKatExpr_PerS2 = 2;

  lcKatExpr_Crit  = 2;
  lcKatExpr_RplAn = 3;

  lcKatExpr_MnXLT = 0;
end;

const
  lc_RepBudAnalizXLSID = 'F_FpBudget\REPXLT\FpRepBudAnaliz';
end;

const
  lc_FpCmpColTune_IgnoreCOBit = 1;
  lc_FpCmpColTune_IgnorePPBit = 2;
end;

const
  // Анализ бюджетов
  // биты атрибутов "Параметры запуска"
  lc_FpCmpColTuneAttrBit_IsEditCopiesList    : word = 1;  // редактировать список копий
  lc_FpCmpColTuneAttrBit_IsViewZeroValue     : word = 2;  // выводить нулевые значения
  lc_FpCmpColTuneAttrBit_IsPossibleEditValue : word = 4;  // возможность редактирования
  lc_FpCmpColTuneAttrBit_IsViewOnlyLeafAn    : word = 8;  // скрывать агрегаты аналитик
end; // canst

#endif//__FpOCmp_Inc__
