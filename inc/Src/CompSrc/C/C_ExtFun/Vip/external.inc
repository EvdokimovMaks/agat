//------------------------------------------------------------------------------
//                                                      (c) Корпорация Галактика
// Галактика ERP 9.1
// Внешние функции
//------------------------------------------------------------------------------

#include G_Buh_EF.inc      // G_Buh.dll
#include G_Com_EF.inc      // G_Common.dll
#include G_EFP_EF.inc      // FpServ.dll - Внешние Fp-функции НЕ НА АТЛАНТИСЕ!!!
#include G_EI_EF.inc       // G_ExpImp.dll
#include G_FA_EF.inc       // G_FA.dll
#include G_Fin_EF.inc      // G_Fin.dll
#include G_Kau_EF.inc      // G_Kau.dll
#include G_LastNum_EF.inc  // G_LastNumD.dll
#include G_Nal_EF.inc      // G_Nalog.dll
#include G_Ope_EF.inc      // G_Oper.dll
#include G_Skl_EF.inc      // G_Skl.dll
#include G_Tun_EF.inc      // G_Tune.dll
#include G_Tree_EF.inc     // G_Tree.dll
#include G_TXO_EF.inc      // G_TXO.dll
#include G_Val_EF.inc      // G_Common.dll
#include G_VDE_EF.inc      // G_VDE.dll
#include G_Zar_EF.inc      // G_Zarpl.dll
#include G_WT_EF.inc       // G_WorkTable.dll
#include PADetailsEF.inc   // G_WorkTable.dll
#include G_ZC_EF.inc       // ZC.dll
#include G_Staff_EF.inc    // G_Staff.dll
#include GalNetEF.inc      // GalNet.dll
#include ExcelFun.Inc      // RegExcel.dll & ExcelLib.dll
#include MsWordFun.Inc     // WordLib.dll
#include DDE_FUN.inc       // DDELIB.dll
#include G_Calc_EF.inc     // G_Zarpl.dll
#include G_PayRep_EF.inc   // G_Zarpl.dll
#define __GetKolZnakZar__
#include G_Sredn_EF.inc    // G_SumDivide.dll
#undef __GetKolZnakZar__
#include G_MNF_EF.inc      // g_MNF.dll
#include GalRTF.Inc        // GalRTF.dll
#include G_RLFun.inc
#include G_Scales.inc
#include Scales.inc

//вывод картинки в rtf документ: путь к rtf файлу, имя rtf файла, высота картинки, два параметра положение на листе
procedure InsFoto(string, string, longInt, longInt, longInt); external 'InsFoto.dll';
//Подключение к COM объекту Outlook.Application
function CROUTLOOK : boolean; external 'InsFoto.dll';
//Закрытие COM объекта Outlook.Application
procedure CLOUTLOOK; external 'InsFoto.dll';
//Передача почтового сообщения
function MESS_SEND(word, string, string, word, string): boolean; external 'InsFoto.dll';

Function GetNetworkNode                               : String; external;
Function OpenUser                                     : Boolean; external;
Procedure CloseUser                                           ; external;
Function Nrec2ono     (Comp)                          : Word  ; external;
//------------------------------------------------------------------------------
procedure SetNameNastr(string); external;
Function  LoadNameNastr : string; external;
procedure GenerateReport                                    ; external ;
Function AddPath(boolean, string)                   : String  ; external ;
Function GetCallingInterfaceName                    : String  ; external ;
procedure SyncFileTimes(string, string)                       ; external ;
Function LoadReportPattern(string)                  : Boolean ; external ;
Function SaveReportPattern(string)                  : Boolean ; external ;
Function MakeForm(string)                           : Boolean ; external ;
Function CheckFormForPattern(string, string)        : Boolean ; external ;
procedure PrintGeneratedReport                                ; external ;

//------------------------------------------------------------------------------
// MONEYFNC.PAS
//------------------------------------------------------------------------------
function GetNames(word, boolean): string; external ;
function Str2TimeSep(string, char): double; external;
function Str2Time(string): double; external;
function Time2StrSep(double, integer, char): string; external;
function Time2Str(double, integer): string; external;
function Time2StrDef(double): string; external;
function Time2StrDefPrec(double, word): string; external;
function Notify(word, longint): longint; external;
function GetNotificationInfoPtr: longint; external;
function ReReadCurrent(integer): boolean; external;
function ProcNalSpr(Byte, String, String, String, String): Integer; external;

//------------------------------------------------------------------------------
// PRENGINE.PAS
//------------------------------------------------------------------------------
function GetCallingInterfaceName: String; external;
function AddPath(Boolean, String): String; external;
procedure SyncFileTimes(String, String); external;
function LoadReportPattern(String): Boolean; external;
function SaveReportPattern(String): Boolean; external;
function MakeForm(String): Boolean; external;
function CheckFormForPattern(String, String): Boolean; external;
procedure GenerateReport; external;
procedure PrintGeneratedReport; external;
procedure SetNameNastr(String); external;
function LoadNameNastr: String; external;

//------------------------------------------------------------------------------
// Z_SERV.PAS
//------------------------------------------------------------------------------
function GetFirstStr(String): String; external;
function GetPartStr(String, Word): String; external;

#include shr_reps.inc

function  ChooseFilterForLogTable( string, var anytype ) : boolean;           external;
function  ApplyFilterToLogTable  ( string, string, string )      : boolean;           external;
function  CurrentInterfaceName                           : string;            external;

Function GetSoprHozTipDoc(word, word)              : word;    external;

procedure InitScales05;                      external 'scales05.dll';
procedure FreeScales05;                      external 'scales05.dll';
function  isInitScales05: boolean;           external 'scales05.dll';
function  GetWeight05(word): integer;        external 'scales05.dll';
function  GetState05 (word): word;           external 'scales05.dll';
function  Key05: longint;                    external 'scales05.dll';
function  UnLock05 (longint): longint;       external 'scales05.dll';
function  IsInit05: boolean;                 external 'scales05.dll';

function RunDynMenu( String ) : word; external;
