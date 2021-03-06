//------------------------------------------------------------------------------
//                                                      (c) ��௮��� ���������
//------------------------------------------------------------------------------
// �����⨪� 8.10 - ���
// ��騥 ���
//------------------------------------------------------------------------------

!-------------------------------------------------------------------------------
! ���᪠���
!-------------------------------------------------------------------------------
#declare F1
  '~F1~ ������', cmHelp,              kbF1;
#end
!-------------------------------------------------------------------------------
! ����⪠
!-------------------------------------------------------------------------------
#declare Ins
 '~Ins~ �������', cmMarkUnMark,        kbIns;
#end
!-------------------------------------------------------------------------------
! ��㯯���� �롮�
!-------------------------------------------------------------------------------
#declare PlusMinus
   '~+~ ��',     cmSelectAll,         kbGrayPlus;
 '~-~ �����',     cmUnSelectAll,       kbGrayMinus;
          '',     cmInvertAll,         kbGrayMul;
#end
!-------------------------------------------------------------------------------
! ���� ���� ��� ����ᮢ ���㬥�⮮����
!-------------------------------------------------------------------------------
#declare StdDocum
          '',     cmDocumJumpToPapkaThruCode,     kbAltJ;
#end
!-------------------------------------------------------------------------------
! ���� ���� ��� ����� - ��ப
!-------------------------------------------------------------------------------
#declare Std_Stat
          '',     cmAlt1,              kbAlt1;
          '',     cmAlt2,              kbAlt2;
          '',     cmAlt3,              kbAlt3;
          '',     cmAlt4,              kbAlt4;
          '',     cmAlt5,              kbAlt5;
          '',     cmAlt6,              kbAlt6;
          '',     cmAlt7,              kbAlt7;
          '',     cmAlt8,              kbAlt8;
          '',     cmAlt9,              kbAlt9;
!          '',     cmAlt0,              kbAlt0;
          '',     cmAltEqual,          kbAltEqual;
          '',     cmAltMinus,          kbAltMinus;
          '',     cmAltIns,            kbAltIns;
          '',     cmAltGrayPlus,       kbAltGrayPlus;
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
          '',     cmCalcUslParam,      kbAltW;
          '',     cmQuit,              kbAltX;
!kbAltY
!kbAltZ
          '',     cmLastHelp,          kbAltF1;
          '',     cmChangeViewMode,    kbAltF2;
          '',     cmAltInsert,         kbAltF7;
          '',     cmAlternativeDelete, kbAltF8;
          '',     cmHotKeys,           kbAltF10;

          '',     cmCalculator,        kbShiftF2;
          '',     cmBuhCalculator,     kbShiftF3;
          '',     cmPrev,              kbShiftF6;
          '',     cmExtendedDelete,    kbShiftF8;
          '',     cmShiftF9,           kbShiftF9;

          '',     cmEditBudget,        kbCtrlB;
          '',     cmHozOper,           kbCtrlH;
          '',     cmMulSelDO,          kbCtrlI;
          '',     cmCreateKD,          kbCtrlK;
          '',     cmPrintDoc,          kbCtrlP;
          '',     cmCalc,              kbCtrlQ;
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
          '',     cmCheckOrder,        kbCtrlW;
          '',     cmCheckRPD,          kbCtrlM;
#end
!-------------------------------------------------------------------------------
! ��� �����-��ப � 䨫��஬ �� Alt-B
!-------------------------------------------------------------------------------
#declare Std_StatFiltr
          '',     cmAlt1,              kbAlt1;
          '',     cmAlt2,              kbAlt2;
          '',     cmAlt3,              kbAlt3;
          '',     cmAlt4,              kbAlt4;
          '',     cmAlt5,              kbAlt5;
          '',     cmAlt6,              kbAlt6;
          '',     cmAlt7,              kbAlt7;
          '',     cmAlt8,              kbAlt8;
          '',     cmAlt9,              kbAlt9;
!          '',     cmAlt0,              kbAlt0;
          '',     cmAltEqual,          kbAltEqual;
          '',     cmAltMinus,          kbAltMinus;

          '',     cmPickAttr,          kbAltA;
          '~Alt+B~ ������',     cmFilterSave,        kbAltB;
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
          '',     cmCalcUslParam,      kbAltW;
          '',     cmQuit,              kbAltX;
!kbAltY
!kbAltZ
          '',     cmLastHelp,          kbAltF1;
          '',     cmChangeViewMode,    kbAltF2;
          '',     cmAltInsert,         kbAltF7;
          '',     cmAlternativeDelete, kbAltF8;
          '',     cmAltF9,             kbAltF9;
          '',     cmHotKeys,           kbAltF10;

          '',     cmCalculator,        kbShiftF2;
          '',     cmBuhCalculator,     kbShiftF3;
          '',     cmPrev,              kbShiftF6;
          '',     cmExtendedDelete,    kbShiftF8;
          '',     cmShiftF9,           kbShiftF9;

          '',     cmEditBudget,        kbCtrlB;
          '',     cmMulSelDO,          kbCtrlI;

          '',     cmHozOper,           kbCtrlH;
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
#end
!-------------------------------------------------------------------------------
! ���� ���� ��� ���஢
!-------------------------------------------------------------------------------
#declare Staf2Std
          '',     cmStaffDoWin1,       kbAlt1;
          '',     cmStaffDoWin2,       kbAlt2;
          '',     cmStaffDoWin3,       kbAlt3;
          '',     cmStaffDoWin4,       kbAlt4;
          '',     cmStaffDoWin5,       kbAlt5;
          '',     cmStaffDoWin6,       kbAlt6;
          '',     cmStaffDoWin7,       kbAlt7;
          '',     cmStaffDoWin8,       kbAlt8;
          '',     cmStaffDoWin9,       kbAlt9;
          '',     cmStaffAnalytic,     kbAltW;
          '',     cmCallIndex,         kbShiftF1;
          '',     cmLastHelp,          kbAltF1;
          '',     cmCalculator,        kbShiftF2;
//          '',     cmCalendar,          kbCtrlF2;  // ?????
          '',     cmSaveDoc,           kbCtrlF2;
          '',     cmRestoreDoc,        kbCtrlF3;
          '',     cmEvaluateAndModify, kbCtrlF4;
          '',     cmZoom,              kbF5;
          '',     cmResize,            kbCtrlF5;
          '',     cmTile,              kbShiftF5;
          '',     cmCascade,           kbAltF5;
          '',     cmNext,              kbF6;
          '',     cmPrev,              kbShiftF6;
          '',     cmMenu,              kbF10;
          '',     cmSysMenu,           kbCtrlF10;
          '',     cmHotKeys,           kbAltF10;
          '',     cmPickAttr,          kbAltA;
          '',     cmFilterSave,        kbAltB;
          '',     cmPickClass,         kbAltC;
          '',     cmStaffDoc2Doc,      kbAltD;
          '',     cmNal,               kbAltF;
          '',     cmInsertEditKN,      kbAltK;
          '',     cmManagerId,         kbAltM;
          '',     cmFilialNo,          kbAltN;
          '',     cmStaffPens,         kbAltP;
          '',     cmPrintDoc,          kbCtrlP;
          '',     cmOpenSearch,        kbAltS;
          '',     cmQuit,              kbAltX;
          '',     cmCompressLevel,     kbCtrlBack;
          '',     cmShowAll,           kbCtrlGrayPlus;
          '',     cmShowAll,           kbCtrlEqual;
          '',     cmSetupReport,       kbCtrlR;
          '',     cmStartDopTables,    kbAltI;
	  '',     cmStaffDoWin13,      kbAltL;
	  '',     cmStaffDoWin14,      kbAltT;
#end

#declare Std3Stat
          '',     cmAlt1,              kbAlt1;
          '',     cmAlt2,              kbAlt2;
          '',     cmAlt3,              kbAlt3;
          '',     cmAlt4,              kbAlt4;
          '',     cmAlt5,              kbAlt5;
          '',     cmAlt6,              kbAlt6;
          '',     cmAlt7,              kbAlt7;
          '',     cmAlt8,              kbAlt8;
          '',     cmAlt9,              kbAlt9;
!          '',     cmAlt0,              kbAlt0;
          '',     cmAltEqual,          kbAltEqual;
          '',     cmAltMinus,          kbAltMinus;
          '',     cmAltIns,            kbAltIns;
          '',     cmAltGrayPlus,       kbAltGrayPlus;
          '',     cmPickAttr,          kbAltA;
          '',     cmFilterSave,        kbAltB;
          '',     cmPickClass,         kbAltC;
          '',     cmDocBas,            kbAltD;
!kbAltE
          '',     cmNal,               kbAltF;
          '',     cmRecalcAllSums,     kbAltG;
          '',     cmIEHist,            kbAltH;
!kbAltJ
          '',     cmInsertEditKN,      kbAltK;

          '',     cmManagerId,         kbAltM;
          '',     cmFilialNo,          kbAltN;
          '',     cmPlansNo,           kbAltP;
!kbAltQ
          '',     cmSortMC,            kbAltR;
          '',     cmAccording,         kbAltS;
          '',     cmKauReff,           kbAltT;
          '',     cmLegend,            kbAltU;
!kbAltV
          '',     cmCalcUslParam,      kbAltW;
          '',     cmQuit,              kbAltX;
!kbAltY
!kbAltZ
          '',     cmLastHelp,          kbAltF1;
          '',     cmChangeViewMode,    kbAltF2;
          '',     cmAltInsert,         kbAltF7;
          '',     cmAlternativeDelete, kbAltF8;
          '',     cmHotKeys,           kbAltF10;

          '',     cmCalculator,        kbShiftF2;
          '',     cmBuhCalculator,     kbShiftF3;
          '',     cmPrev,              kbShiftF6;
          '',     cmExtendedDelete,    kbShiftF8;
          '',     cmShiftF9,           kbShiftF9;

          '',     cmEditBudget,        kbCtrlB;
          '',     cmHozOper,           kbCtrlH;
          '',     cmMulSelDO,          kbCtrlI;
          '',     cmCreateKD,          kbCtrlK;
          '',     cmPrintDoc,          kbCtrlP;
          '',     cmCalc,              kbCtrlQ;
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
		  '',     cmCheckOrder,        kbCtrlW;
		  '',     cmCheckRPD,          kbCtrlM;
#end
!-------------------------------------------------------------------------------