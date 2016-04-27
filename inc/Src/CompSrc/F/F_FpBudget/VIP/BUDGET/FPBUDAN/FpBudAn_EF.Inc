//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Управление бюджетом"
// Внешние функции : "Аналитика бюджетирования" (FpBudAn.pas)
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// Процедуры работы с Аналитикой бюджетирования
function  FpAnMeanInit                          : Boolean; external 'G_Fin.dll';
function  FpAnMeanDone                          : Boolean; external 'G_Fin.dll';
function  FpAnMeanCheckAllInit                  : Boolean; external 'G_Fin.dll';
function  FpAnMeanClearCache                    : Boolean; external 'G_Fin.dll';
function  FpAnMeanIsCacheActive                 : Boolean; external 'G_Fin.dll';
function  FpAnMeanGetCacheMode                  : Word;    external 'G_Fin.dll';
function  FpAnMeanSetCacheMode   (Word)         : Boolean; external 'G_Fin.dll';

//------------------------------------------------------------------------------
// Процедуры работы с Аналитиками
function  FpAnIsHierAn           (Word)         : Boolean; external 'G_Fin.dll';
function  FpAnIsVirtualAgrMode   (Word)         : Boolean; external 'G_Fin.dll';
function  FpAnIsAutoSynch        (Word)         : Boolean; external 'G_Fin.dll';
function  FpAnIsAnBud            (Word)         : Boolean; external 'G_Fin.dll';

//------------------------------------------------------------------------------
// Процедуры работы со Значениями Аналитик
function  FpMeanGetName          (Word, Comp)   : String;  external 'G_Fin.dll';
function  FpMeanGetNode          (Word, Comp)   : Comp;    external 'G_Fin.dll';
function  FpMeanGetCode          (Word, Comp)   : String;  external 'G_Fin.dll';
function  FpMeanGetAbbr          (Word, Comp)   : String;  external 'G_Fin.dll';
function  FpMeanGetUO            (Word, Comp)   : Word;    external 'G_Fin.dll';
function  FpMeanGetAgr           (Word, Comp)   : Comp;    external 'G_Fin.dll';
function  FpMeanGetIsLeaf        (Word, Comp)   : Boolean; external 'G_Fin.dll';
function  FpMeanGetIsVirtualAgr  (Word, Comp)   : Boolean; external 'G_Fin.dll';
function  FpMeanGetBaseAgrMean   (Word, Comp)   : Comp;    external 'G_Fin.dll';
function  FpMeanGetIsAgrOwnData  (Word, Comp)   : Boolean; external 'G_Fin.dll';
function  FpMeanGetOwnerAgrMean  (Word, Comp)   : Comp;    external 'G_Fin.dll';

//------------------------------------------------------------------------------
function  FpIsMeanAgrInContAn    (#TPtr)  : Boolean; external 'G_Fin.dll';
function  FpIsMeanAgrInHashAn    (Comp   )      : Boolean; external 'G_Fin.dll';
//------------------------------------------------------------------------------
function  FpMeanFind             (Word, Comp)   : Comp;    external 'G_Fin.dll';

//------------------------------------------------------------------------------
// Аттрибуты аналитик Галактики
function  FpGalAnIsHierAn        (Word)         : Boolean; external 'G_Fin.dll';
function  FpGalMeanIsLeaf        (Word, Comp)   : Boolean; external 'G_Fin.dll';
function  FpIsGalMeanAgrInContAn (#TPtr)  : Boolean; external 'G_Fin.dll';
function  FpIsGalMeanAgrInHashAn (Comp   )      : Boolean; external 'G_Fin.dll';

