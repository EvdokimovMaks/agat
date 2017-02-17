//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.1 - модуль "Управление бюджетом"
// Декларация внешних функций G_Fin.dll
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// DebugLog.pas
// процедуры работы с логом  (Sanny)
function  FPLogInit                                          : Boolean; external 'G_Fin.dll';
function  FPLogDone                                          : Boolean; external 'G_Fin.dll';
function  FPLog                (String)                      : Boolean; external 'G_Fin.dll';
//------------------------------------------------------------------------------
// FpVipIfc
function fpInitHier            (Comp,Comp,Word)              : #TPtr; external 'G_Fin.dll';
function fpInitHierExt         (Comp,Comp,Word,LongInt)      : #TPtr; external 'G_Fin.dll';

function fpInitMatrix          (#TPtr,Word,Comp,Comp,Boolean,Word,Comp)
                                                             : #TPtr; external 'G_Fin.dll';
function fpInitMatrixCO        (#TPtr,Comp,Comp,Word,Comp,Word,Comp,Boolean)
                                                             : #TPtr; external 'G_Fin.dll';

function fpLoadMatrix          (#TPtr)                 : Boolean; external 'G_Fin.dll';
function fpSetNewPeriod        (#TPtr,Comp)            : Boolean; external 'G_Fin.dll';
function fpSetCurrentMatrix    (#TPtr)                 : Boolean; external 'G_Fin.dll';
function fpKillAllValues       (#TPtr)                 : Boolean; external 'G_Fin.dll';
function fpReLoadMatrixStPer   (#TPtr,Comp,Comp)       : Boolean; external 'G_Fin.dll';

function fpAddFirstMatrixToSecond
                               (#TPtr,#TPtr,Word): Boolean; external 'G_Fin.dll';
function fpGetSumma            (#TPtr,Comp,Comp)       : Double;  external 'G_Fin.dll';
function fpSetSumma            (#TPtr,Comp,Comp,Double,Boolean)
                                                             : Boolean; external 'G_Fin.dll';
function fpSetCellAttr         (#TPtr,Comp,Comp,Word)  : Boolean; external 'G_Fin.dll';
function fpMaskCell            (#TPtr,Comp,Comp)       : Word;    external 'G_Fin.dll';
function fpGetCellCont         (#TPtr,Comp,Comp,Boolean,#TPtr)
                                                             : Boolean; external 'G_Fin.dll';
function fpGetExtInfo          (#TPtr,Comp,Comp,var Comp,var Comp,var Comp,var Comp)
                                                             : Boolean; external 'G_Fin.dll';
function fpReCount             (#TPtr,Boolean,var String)  : Boolean; external 'G_Fin.dll';
function fpSaveMatrix          (#TPtr,Word)            : Boolean; external 'G_Fin.dll';
function fpDoneMatrix          (#TPtr)                 : Boolean; external 'G_Fin.dll';
function fpDoneHier            (#TPtr)                 : Boolean; external 'G_Fin.dll';
function fpGetInfo             (#TPtr,Boolean)
                                                             : longint; external 'G_Fin.dll';
function fpInitFPCheckService                                : Boolean; external 'G_Fin.dll';
function fpGoCheck             (#TPtr,Comp)            : Boolean; external 'G_Fin.dll';
function fpDoneFPCheckService                                : Boolean; external 'G_Fin.dll';
//------------------------------------------------------------------------------
// FpVipAn.pas
// Процедуры работы с HashAn
function HAnInit                                             : Boolean; external 'G_Fin.dll';
function HAnDone                                             : Boolean; external 'G_Fin.dll';
function HAnFree                                             : Boolean; external 'G_Fin.dll';
function HAnReInit             (Boolean)                     : Boolean; external 'G_Fin.dll';
function HAnRetrieveSloj                                     : Boolean; external 'G_Fin.dll';
function HAnIsCashMode                                       : Boolean; external 'G_Fin.dll';
function HAnSetCashMode        (Boolean)                     : Boolean; external 'G_Fin.dll';
function HAnGetHash            (Comp,#TPtr,Boolean)        : Comp;    external 'G_Fin.dll';
function HAnGetSloj            (Comp)                        : Comp;    external 'G_Fin.dll';
function HAnIsKauInSloj        (Comp,Word)                   : Comp;    external 'G_Fin.dll';
function HAnGetHashName        (Comp)                        : String;  external 'G_Fin.dll';
function HAnGetAnMean          (Comp,Integer)                : Comp;    external 'G_Fin.dll';
function HAnMakeListSlaveHash  (Comp,Comp,#TPtr,#TPtr)   : Boolean; external 'G_Fin.dll';
function HAnMakeListSynchHash  (Comp,Comp,#TPtr,#TPtr)   : Boolean; external 'G_Fin.dll';

// Процедуры работы с контейнером аналитик
function  ContAnInit                                         : #TPtr; external 'G_Fin.dll';
function  ContAnInited         (#TPtr)                     : Boolean; external 'G_Fin.dll';
function  ContAnDone           (#TPtr)                     : Boolean; external 'G_Fin.dll';
function  ContAnClear          (#TPtr)                     : Boolean; external 'G_Fin.dll';
function  ContAnKolAn          (#TPtr)                     : Integer; external 'G_Fin.dll';
function  ContAnDel            (#TPtr,Integer)             : Boolean; external 'G_Fin.dll';
function  ContAnAddDef                                       : Boolean; external 'G_Fin.dll';
function  ContAnAdd            (#TPtr,Word,Comp)           : Boolean; external 'G_Fin.dll';
function  ContAnAddR           (#TPtr,Word,Comp,Comp)      : Boolean; external 'G_Fin.dll';
function  ContAnSetKod         (#TPtr,Integer,Word)        : Boolean; external 'G_Fin.dll';
function  ContAnSetAn          (#TPtr,Integer,Comp)        : Boolean; external 'G_Fin.dll';
function  ContAnSetRole        (#TPtr,Integer,Comp)        : Boolean; external 'G_Fin.dll';
function  ContAnSetAttr        (#TPtr,Integer,Word)        : Boolean; external 'G_Fin.dll';
function  ContAnSet            (#TPtr,Integer,Word,Comp)   : Boolean; external 'G_Fin.dll';
function  ContAnSetR           (#TPtr,Integer,Word,Comp,Comp)
                                                             : Boolean; external 'G_Fin.dll';
function  ContAnGetKod         (#TPtr,Integer)             : Word;    external 'G_Fin.dll';
function  ContAnGetAn          (#TPtr,Integer)             : Comp;    external 'G_Fin.dll';
function  ContAnGetRole        (#TPtr,Integer)             : Comp;    external 'G_Fin.dll';
function  ContAnGetAttr        (#TPtr,Integer)             : Word;    external 'G_Fin.dll';
function  ContAnGet            (#TPtr,Integer,var Word,var Comp)
                                                             : Boolean; external 'G_Fin.dll';
function  ContAnGetIndKod      (#TPtr,Word)                : Integer; external 'G_Fin.dll';
function  ContAnGetIndKodAn    (#TPtr,Word,Comp)           : Integer; external 'G_Fin.dll';
function  ContAnGetIndKodAnRole(#TPtr,Word,Comp,Comp)      : Integer; external 'G_Fin.dll';
function  ContAnGetIndKodRole  (#TPtr,Word,Comp)           : Integer; external 'G_Fin.dll';
function  ContAnDelKod         (#TPtr,Word)                : Boolean; external 'G_Fin.dll';
function  ContAnInvert         (#TPtr)                     : Boolean; external 'G_Fin.dll';
function  ContAnEqual          (#TPtr,#TPtr)             : Boolean; external 'G_Fin.dll';
function  ContAnAddContAn      (#TPtr,#TPtr)             : Boolean; external 'G_Fin.dll';
function  ContAnCopy           (#TPtr,#TPtr)             : Boolean; external 'G_Fin.dll';
function  ContAnPrint          (#TPtr,Boolean)             : String;  external 'G_Fin.dll';
function  ContAnPrintR         (#TPtr,Boolean)             : String;  external 'G_Fin.dll';
function  ContAnOder           (#TPtr,Comp)                : Boolean; external 'G_Fin.dll';
function  ContAnOderR          (#TPtr,Comp)                : Boolean; external 'G_Fin.dll';
function  ContAnMakeByHash     (#TPtr,Comp)                : Boolean; external 'G_Fin.dll';
function  ContAnMakeBySloj     (#TPtr,Comp)                : Boolean; external 'G_Fin.dll';
// Процедуры работы с FpRound
function  FpRoundInit                                        : LongInt; external 'G_Fin.dll';
function  FpRoundDone          (LongInt)                     : Boolean; external 'G_Fin.dll';
function  FpRoundSet           (LongInt,Word,Double,Double)  : Boolean; external 'G_Fin.dll';
function  FpRound              (LongInt,Double,Comp,Comp)    : Double;  external 'G_Fin.dll';
//------------------------------------------------------------------------------
// Fp_Per.pas
// Процедуры работы с Периодом планирования
function  FpPPInit                                           : Boolean; external 'G_Fin.dll';
function  FpPPDone                                           : Boolean; external 'G_Fin.dll';
function  FpPPGetStLastError                                 : String;  external 'G_Fin.dll';
function  FpPPRetrieve                                       : Boolean; external 'G_Fin.dll';
function  FpPPGet              (Comp,Date)                   : Comp;    external 'G_Fin.dll';
function  FpPeriodServisCheck  (Word,Double,Comp,Date,Date)  : Word;    external 'G_Fin.dll';
//------------------------------------------------------------------------------
// FpCube.pas
// Процедуры работы с Кубом
#include FpCube_EF.Inc
//------------------------------------------------------------------------------
// Внешние функции : Массив статистических параметров
#include FpDynArrStatFun_EF.Inc
//------------------------------------------------------------------------------
// Функции расчета статистических величин
#include FpStatisticAlg_EF.Inc
//------------------------------------------------------------------------------
// функции для работы с виртуальной памятью для Интерактивного аналитического отчета
function  CreateXXL_datalink   (LongInt,LongInt)             : boolean; external 'G_Fin.dll';
function  DestroyXXL_datalink                                : boolean; external 'G_Fin.dll';
function  GetItemXXL_datalink  (LongInt,LongInt,var longint,var word,var comp)
                                                             : boolean; external 'G_Fin.dll';
function  SetItemXXL_datalink  (LongInt,LongInt,longint,word,comp)
                                                             : boolean; external 'G_Fin.dll';

function  CreateXXL_HIER       (LongInt,LongInt)             : boolean; external 'G_Fin.dll';
function  DestroyXXL_HIER                                    : boolean; external 'G_Fin.dll';
function  GetItemXXL_HIER      (LongInt,LongInt,var word,var comp,var comp,var longint)
                                                             : boolean; external 'G_Fin.dll';
function  SetItemXXL_HIER      (LongInt,LongInt,word,comp,comp,longint)
                                                             : boolean; external 'G_Fin.dll';
function  GetFirstItemXXL_HIER (comp,var LongInt)            : boolean; external 'G_Fin.dll';
