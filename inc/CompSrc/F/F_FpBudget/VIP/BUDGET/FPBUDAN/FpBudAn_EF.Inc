//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - модуль "Управление бюджетом"
// Внешние функции : "Аналитика бюджетирования" (FpBudAn.pas)
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// Процедуры работы с Аналитикой бюджетирования
Function  FpAnMeanInit                          : Boolean; external 'G_Fin.dll';
Function  FpAnMeanDone                          : Boolean; external 'G_Fin.dll';
Function  FpAnMeanCheckAllInit                  : Boolean; external 'G_Fin.dll';
Function  FpAnMeanClearCache                    : Boolean; external 'G_Fin.dll';
Function  FpAnMeanIsCacheActive                 : Boolean; external 'G_Fin.dll';
Function  FpAnMeanGetCacheMode                  : Word;    external 'G_Fin.dll';
Function  FpAnMeanSetCacheMode   (Word)         : Boolean; external 'G_Fin.dll';

//------------------------------------------------------------------------------
// Процедуры работы с Аналитиками
Function  FpAnIsHierAn           (Word)         : Boolean; external 'G_Fin.dll';
Function  FpAnIsVirtualAgrMode   (Word)         : Boolean; external 'G_Fin.dll';
Function  FpAnIsAutoSynch        (Word)         : Boolean; external 'G_Fin.dll';
Function  FpAnIsAnBud            (Word)         : Boolean; external 'G_Fin.dll';

//------------------------------------------------------------------------------
// Процедуры работы со Значениями Аналитик
Function  FpMeanGetName          (Word, Comp)   : String;  external 'G_Fin.dll';
Function  FpMeanGetNode          (Word, Comp)   : Comp;    external 'G_Fin.dll';
Function  FpMeanGetCode          (Word, Comp)   : String;  external 'G_Fin.dll';
Function  FpMeanGetAbbr          (Word, Comp)   : String;  external 'G_Fin.dll';
Function  FpMeanGetUO            (Word, Comp)   : Word;    external 'G_Fin.dll';
Function  FpMeanGetAgr           (Word, Comp)   : Comp;    external 'G_Fin.dll';
Function  FpMeanGetIsLeaf        (Word, Comp)   : Boolean; external 'G_Fin.dll';
Function  FpMeanGetIsVirtualAgr  (Word, Comp)   : Boolean; external 'G_Fin.dll';
Function  FpMeanGetBaseAgrMean   (Word, Comp)   : Comp;    external 'G_Fin.dll';
Function  FpMeanGetIsAgrOwnData  (Word, Comp)   : Boolean; external 'G_Fin.dll';
Function  FpMeanGetOwnerAgrMean  (Word, Comp)   : Comp;    external 'G_Fin.dll';

//------------------------------------------------------------------------------
Function  FpIsMeanAgrInContAn    (#TPtr)  : Boolean; external 'G_Fin.dll';
Function  FpIsMeanAgrInHashAn    (Comp   )      : Boolean; external 'G_Fin.dll';
//------------------------------------------------------------------------------
Function  FpMeanFind             (Word, Comp)   : Comp;    external 'G_Fin.dll';

//------------------------------------------------------------------------------
// Аттрибуты аналитик Галактики
Function  FpGalAnIsHierAn        (Word)         : Boolean; external 'G_Fin.dll';
Function  FpGalMeanIsLeaf        (Word, Comp)   : Boolean; external 'G_Fin.dll';
Function  FpIsGalMeanAgrInContAn (#TPtr)  : Boolean; external 'G_Fin.dll';
Function  FpIsGalMeanAgrInHashAn (Comp   )      : Boolean; external 'G_Fin.dll';

