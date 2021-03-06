/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,2003 ��牆���罔� ���������                    �
 � ��痰ガ�       : ���������                                                 �
 � 蹍オ�        : ｯム�皋↓覃 ���矣�                                        �
 � �ム瓱�        : 5.84                                                      �
 � ��Л�腑�┘    : ��ヨ�┘ �牀罐ゃ琺 � 粃��罔� ├ G_Skl.dll                  �
 � �癶モ痰▲��覃 : �※�瓷┤ �ム�ォ �ギ�┐�※�                                �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/

//------------------------------------------------------------------------------
// NalSkl.pas
Procedure NalSklMCInfo (comp,date)                   ; external 'G_Skl.dll';
Function  InitMCInfo (date)   : boolean              ; external 'G_Skl.dll';
Function  ReInitMCInfo (date) : boolean              ; external 'G_Skl.dll';
Function  WasStoppedMCinfo    : boolean              ; external 'G_Skl.dll';
Function  StepMCInfo (comp,comp,comp,comp,comp):comp ; external 'G_Skl.dll';
Function  AveragePrice        : double               ; external 'G_Skl.dll';
Function  AverageVPrice       : double               ; external 'G_Skl.dll';
Function  AveragePrihPrice    : double               ; external 'G_Skl.dll';
Function  AveragePrihVPrice   : double               ; external 'G_Skl.dll';
Function  CountMC             : double               ; external 'G_Skl.dll';
Procedure SwitchProizOff                             ; external 'G_Skl.dll';
Procedure SwitchProizOn                              ; external 'G_Skl.dll';
Procedure SwitchVisualOff                            ; external 'G_Skl.dll';
Function  GetCurVal           : comp                 ; external 'G_Skl.dll';
Procedure TypeOstatki (boolean)                      ; external 'G_Skl.dll';
Procedure OnlyPrih (boolean)                         ; external 'G_Skl.dll';
Procedure SkladProizv (word)                         ; external 'G_Skl.dll';
Procedure SwitchCountOnOff (boolean)                 ; external 'G_Skl.dll';
Procedure RecalcSrPrices (boolean)                   ; external 'G_Skl.dll';
Procedure DoneMCInfo                                 ; external 'G_Skl.dll';
Function  NalT (date,comp,comp,comp,comp) : double   ; external 'G_Skl.dll';
Function  AveragePriceN       : double               ; external 'G_Skl.dll';
Function  GetPrihKol          : double               ; external 'G_Skl.dll';
Function  GetRashKol          : double               ; external 'G_Skl.dll';
Function  GetKol              : double               ; external 'G_Skl.dll';
Function  MCGetCurrency (comp,double,date) : double  ; external 'G_Skl.dll';
Function  MCGetBaseCurrency (comp,double,date) : double     ; external 'G_Skl.dll';
Function  MCGetAnyCurrency (comp,double,date,comp) : double ; external 'G_Skl.dll';
Procedure LockValOt (boolean)                        ; external 'G_Skl.dll';
Procedure ForceInBase (boolean)                      ; external 'G_Skl.dll';
Function  GetValNatSimv       : string               ; external 'G_Skl.dll';
Function  GetValTarSimv       : string               ; external 'G_Skl.dll';
Function  GetStatus           : byte                 ; external 'G_Skl.dll';
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// F_Store.pas
Function  Store_WasStopped                             : Boolean ; external 'G_Skl.dll';
Function  Store_Summa                                  : Double  ; external 'G_Skl.dll';
Function  Store_SummaV                                 : Double  ; external 'G_Skl.dll';
Function  Store_SummaN                                 : Double  ; external 'G_Skl.dll';
Function  Store_Kol                                    : Double  ; external 'G_Skl.dll';
Function  Store_Init                                   : Boolean ; external 'G_Skl.dll';
Function  Store_ReInit                                 : Boolean ; external 'G_Skl.dll';
Procedure Store_Run (Date,Comp,Comp,Comp,Comp,Boolean,Boolean,Boolean) ; external 'G_Skl.dll';
Procedure Store_RunEx(Date,Comp,Comp,Comp,Comp,Boolean,Boolean,Boolean,Boolean) ; external 'G_Skl.dll';
Function  Store_Calc   (Comp,Comp,Comp,Comp,Comp)      : Boolean ; external 'G_Skl.dll';
Function  Store_ReCalc (Date,Comp,Comp,Comp,Comp,Comp) : Boolean ; external 'G_Skl.dll';
Procedure Store_TypeOstatki (Boolean)                            ; external 'G_Skl.dll';
Procedure Store_OnlyPrih (Boolean)                               ; external 'G_Skl.dll';
Procedure Store_DiagnosticOn                                     ; external 'G_Skl.dll';
Procedure Store_DiagnosticOff                                    ; external 'G_Skl.dll';
Procedure Store_SwitchVisualOff                                  ; external 'G_Skl.dll';
Procedure Store_SwitchCountOnOff(boolean)                        ; external 'G_Skl.dll';
Procedure Store_Done                                             ; external 'G_Skl.dll';
Procedure Store_ForceInVal (Boolean)                             ; external 'G_Skl.dll';
Procedure Store_DoSpace (Boolean)                                ; external 'G_Skl.dll';
Procedure Store_SkladProizv (Word)                               ; external 'G_Skl.dll';
Procedure Store_HideAll (Boolean)                                ; external 'G_Skl.dll';
Function  Store_Count(date,comp,comp,comp,comp,boolean) : boolean; external 'G_Skl.dll';
Function  Store_AveragePrice  : double  ; external 'G_Skl.dll';
Function  Store_AveragePriceN  : double  ; external 'G_Skl.dll';
Function  Store_AverageVPrice : double  ; external 'G_Skl.dll';
Function  Store_GetSimvCurrency(comp) : string         ; external 'G_Skl.dll';
Procedure Store_SetDisplayErr (boolean)                ; external 'G_Skl.dll';
Procedure Store_SetLockValOt(boolean)                  ; external 'G_Skl.dll';
Function  Store_IsMultiVal    : boolean ; external 'G_Skl.dll';
Function  Store_GetStatus     : byte    ; external 'G_Skl.dll';

// ｯ����� ��� ↓ヨ�┘ � dll, �� �� �甎��讌竡矚� � vip
// ��Ν� →�鈑�碎 �爬 �ギ≦�え��痰�
//Function  Store_GetValNatName : string  ; external 'G_Skl.dll';
//Function  Store_GetValTarName : string  ; external 'G_Skl.dll';
//Function  Store_GetValNatSimv : string  ; external 'G_Skl.dll';
//Function  Store_GetValTarSimv : string  ; external 'G_Skl.dll';
//Function  Store_GetCurrency(comp,double,date) : double ; external 'G_Skl.dll';
//Function  Store_GetValTar     : comp    ; external 'G_Skl.dll';
//Function  Store_GetErrParams (word,boolean,boolean,string) : boolean; external 'G_Skl.dll';
//------------------------------------------------------------------------------
