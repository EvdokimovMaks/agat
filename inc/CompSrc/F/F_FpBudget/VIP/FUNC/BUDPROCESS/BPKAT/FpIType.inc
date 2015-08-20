//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Управление бюджетом"
// Базовый обьект: Выбор типа модели операции
//------------------------------------------------------------------------------

#ifndef __FpIType_Inc__
#define __FpIType_Inc__

Const
  cgiFpBath_CulcFpOb                = 1;
  cgiFpBath_FpBudgetCopy            = 2;
  cgiFpBath_FpBudgetAggr            = 3;
  cgiFpBath_FpMRasp                 = 4;
  cgiFpBath_RecBud                  = 5;
  cgiFpBath_FpBudgetDecomp          = 6;
  cgiFpBath_FpImportXLSBudget       = 7;
  cgiFpBath_FpImportDBFBudget       = 8;
  cgiFpBath_FpExportDBFBudget       = 9;
  cgiFpBath_FpClearBudget           = 10;
  cgiFpBath_FpCreateBudget          = 11;
  cgiFpBath_FpImportXLSOborot       = 12;
  cgiFpBath_RunFpStatAlg            = 13;
  cgiFpBath_RunnerFpImport          = 14;
  cgiFpBath_RunFpPayment            = 15;
  cgiFpBath_LincScenario            = 16;
  cgiFpBath_FpBudVarAttr            = 17;
  cgiFpBath_FpCheckListBudget       = 18;
  cgiFpBath_FpManualEditingBudget   = 19;
  cgiFpBath_FpArchivingBudget       = 20;
  cgiFpBath_FpDeleteBudget          = 21;
end;

Const
  MaxModelCount                     = 21;
end;

Const
  Var_cLinkScenario                 = 'VLSo';
end;

#endif // __FpIType_Inc__
