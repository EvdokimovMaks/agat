/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,2002 ��牆���罔� ���������                    �
 � ��痰ガ�       : ���������                                                 �
 � 蹍オ�        : ｯム�皋↓覃 ���矣�                                        �
 � �ム瓱�        : 5.84                                                      �
 � ��Л�腑�┘    : ��ヨ�┘ �牀罐ゃ琺 � 粃��罔� ├ G_Oper.dll                 �
 � �癶モ痰▲��覃 : �※�瓷┤ �ム�ォ �ギ�┐�※�                                �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/

//------------------------------------------------------------------------------
//File_Fun.pas
function  InitFileFunction (String)              : Boolean; external 'G_Oper.dll';
function  FFFile (String)                        : String;  external 'G_Oper.dll';
function  FNFile                                 : String;  external 'G_Oper.dll';
function  ReadNextString                         : Boolean; external 'G_Oper.dll';
function  GetString                              : String;  external 'G_Oper.dll';
function  GetNameFileA                           : String;  external 'G_Oper.dll';
function  GetNameFileF                           : String;  external 'G_Oper.dll';
procedure DoneFileFunction;                                 external 'G_Oper.dll';
//------------------------------------------------------------------------------
// PWP_Exch.pas
procedure MakeResTrade4Retail (Comp);                       external 'G_Oper.dll';
//------------------------------------------------------------------------------
// FiltDoc.pas
function  FiltersGrSch (Comp,Comp)               : Boolean; external 'G_Oper.dll';
procedure FiltersGrSchDone;                                 external 'G_Oper.dll';
//------------------------------------------------------------------------------
// ImportSD.pas
Function ImportSDHandler (Word,Comp,String)      : String;  external 'G_Oper.dll';
Function GetBT       (String,String)             : Double;  external 'G_Oper.dll';
Function GetBLink    (String,String)             : String;  external 'G_Oper.dll';
Function GetBTN      (String,Word)               : Double;  external 'G_Oper.dll';
Function GetBTN_UpDown (String,Word,Boolean)     : String;  external 'G_Oper.dll';
Function GetPDN      (String,String,String,Word) : Double;  external 'G_Oper.dll';
Function GetIndexPlat(String,Comp)               : Double;  external 'G_Oper.dll';
Function GetDateType (LongInt)                   : Word;    external 'G_Oper.dll';
function isOrgInGroup (comp,string)              : word;    external 'G_Oper.dll';
function getValPokaz  (comp,string)              : double;  external 'G_Oper.dll';
function getBasePokaz (comp,string)              : double;  external 'G_Oper.dll';
function getValPokazByProb  (comp,string)        : double;  external 'G_Oper.dll';
function SpDoc_Info   (comp,word)                : double;  external 'G_Oper.dll';
function SaveValNac   (comp,comp,double)         : word;    external 'G_Oper.dll';
Function ValRateByISO (String,String)            : double;  external 'G_Oper.dll';
//------------------------------------------------------------------------------
// DebPas.pas
function DebPas_Exec                : boolean; external 'G_Oper.dll';
//------------------------------------------------------------------------------
// DebStruc.pas
function DebSetupField (LongInt,Var AnyType,String) : Longint; external 'G_Oper.dll';
//------------------------------------------------------------------------------
// Coun_Cu.pas
function  ClcUsl_Init : boolean; external 'G_Oper.dll';
function  ClcUsl_InitEx(boolean) : boolean; external 'G_Oper.dll';
function  ClcUsl_Count (word,word,comp,comp): boolean; external 'G_Oper.dll';
procedure ClcUsl_Done; external 'G_Oper.dll';
//------------------------------------------------------------------------------
