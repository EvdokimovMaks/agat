        (sczarCtx..sczarCtx)
        {
          '~F1~ Помощь',   cmHelp,kbF1;
          '~Alt+X~ Выход', cmQuit, kbAltX;
          '',cmCalculator,kbShiftF2;
          '',cmOk,kbF4;
          '',cmOk,kbF5;
          '',cmOk,kbF6;
          '',cmOk,kbF7;
          '',cmOk,kbF8;
          '',cmLastHelp,kbAltF1;
          '',cmCallIndex,kbShiftF1;
          '',cmClose,kbAltF3;
          '',cmClose,kbesc;
        }

        (scIntface..scIntface)
        {
          '~F1~ Помощь',        cmHelp,         kbF1;
          '',                   cmOk,           kbEnter;
          '',                   cmPass,         kbF4;
          '~F7~ Добавить',      cmInsert,       kbF7;
          '~F8~ Удалить',       cmDelete,       kbF8;
          '~Esc~ Закрыть',      cmClose,        kbAltF3;
          '',                   cmprintbase,   kbctrlr;
          '',                   cmPrintBaseGround, kbCtrlP;
          '',                   cmCalculator,   kbShiftF2;
          '',                   cmQuit,         kbAltX;
          '',                   cmedit,         kbAltC;
          '',                   cmPickAttr,     kbAltA;
          '',                   cmRplToArch,    kbAltR;
          '',                   cmRplToCurr,    kbAltR;
          '',                   cmRplToFut,     kbAltR;
          '',                   cmNal,          kbAltF;
          '',                   cmMenu,         kbF10;
          '',                   cmZoom,         kbF5;
          '',                   cmResize,       kbCtrlF5;
          '',                   cmNext,         kbF6;
          '',                   cmPrev,         kbShiftF6;
          '',                   cmSysMenu,      kbCtrlF10;
          '',              cmEvaluateAndModify, kbCtrlF4;

        }

(sci1InsPMAltB..sci1InsPMAltB)
{
  #F1
  #Ins
  #PlusMinus
  '~Alt+B~ Фильтр',             cmFilterSave,           kbAltB;
  '',                           cmClose,                kbAltF3;
  '',                           cmQuit,                 kbAltX;
  #Std_Stat
}

(sci1InsPMAltF10..sci1InsPMAltF10)
{
  #F1
  #Ins
  #PlusMinus
  '~Alt+F10~Локальное меню',cmHotKeys,  kbAltF10;
  '',                       cmClose,    kbAltF3;
  '',                       cmQuit,     kbAltX;
          '',     cmAlt1,              kbAlt1;
          '',     cmAlt2,              kbAlt2;
          '',     cmAlt3,              kbAlt3;
          '',     cmAlt4,              kbAlt4;
          '',     cmAlt5,              kbAlt5;
          '',     cmAlt6,              kbAlt6;
          '',     cmAlt7,              kbAlt7;
          '',     cmAlt8,              kbAlt8;
          '',     cmAlt9,              kbAlt9;
          '',     cmAltEqual,          kbAltEqual;
          '',     cmAltMinus,          kbAltMinus;
          '',     cmRplToCurr,         kbAltR;
          '',     cmRplToFut,          kbAltR;
          '',     cmPickAttr,          kbAltA;
          '',     cmFilterSave,        kbAltB;
          '',     cmPickClass,         kbAltC;
          '',     cmDocBas,            kbAltD;
!kbAltE
          '',     cmNal,               kbAltF;
          '',     cmRecalcAllSums,     kbAltG;
          '',     cmIEHist,            kbAltH;
          '',     cmImp,               kbAltI;
!kbAltJ
          '',     cmInsertEditKN,      kbAltK;

          '',     cmManagerId,         kbAltM;
          '',     cmFilialNo,          kbAltN;
          '',     cmExp,               kbAltO;
          '',     cmPlansNo,           kbAltP;
!kbAltQ
          '',     cmSortMC,            kbAltR;
          '',     cmAccording,         kbAltS;
          '',     cmKauReff,           kbAltT;
          '',     cmLegend,            kbAltU;
!kbAltV
!kbAltW
          '',     cmQuit,              kbAltX;
!kbAltY
!kbAltZ
          '',     cmLastHelp,          kbAltF1;
          '',     cmChangeViewMode,    kbAltF2;
          '',     cmAltInsert,         kbAltF7;
          '',     cmAlternativeDelete, kbAltF8;

          '',     cmCalculator,        kbShiftF2;
          '',     cmBuhCalculator,     kbShiftF3;
          '',     cmPrev,              kbShiftF6;
          '',     cmExtendedDelete,    kbShiftF8;

          '',     cmCalc,              kbCtrlC;
          '',     cmEditBudget,        kbCtrlB;
          '',     cmMulSelDO,          kbCtrlI;

          '',     cmPrintDoc,          kbCtrlP;
          '',     cmSetupReport,       kbCtrlR;
          '',     cmIerarchy,          kbCtrlU;

          '',     cmAttrib,            kbCtrlEnter;

          '',     cmSaveDoc,           kbCtrlF2;
          '',     cmRestoreDoc,        kbCtrlF3;
          '',     cmEvaluateAndModify, kbCtrlF4;
          '',     cmResize,            kbCtrlF5;
          '',     cmInsLowLevel,       kbCtrlF7;
          '',     cmSpecialDelete,     kbCtrlF8;
          '',     cmSysMenu,           kbCtrlF10;

          '',     cmCompressLevel,     kbCtrlBack;
          '',     cmShowAll,           kbCtrlGrayPlus;
          '',     cmShowAll,           kbCtrlEqual;
          '',     cmHideAll,           kbCtrlGrayMinus;

          '',     cmPass,              kbF4;
          '',     cmZoom,              kbF5;
          '',     cmNext,              kbF6;
          '',     cmMenu,              kbF10;
}

