/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,2002 ��牆���罔� ���������                    �
 � ��痰ガ�       : ���������                                                 �
 � 蹍オ�        : �竇���皀珀�┤ ���矣�                                      �
 � �ム瓱�        : 5.84                                                      �
 � ��Л�腑�┘    : ��ヨ�┘ �牀罐ゃ琺 � 粃��罔� ├ G_Kau.dll                  �
 � �癶モ痰▲��覃 : �ム��� �爬� �ゃ�爐�※�                                    �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/

//---------------------------------------------------------------------------------
// SkVipIfc.pas
// ServKau.pas �� ├�キキ�襯
#ifNdef Gal8_1
!!! �� �磧�┴���碎 轤� 粃��罔� �� �爬 ����� �＝皰閧カ赱癶�� � 8.1 � �謌� [Gera]
function  InitServKau                              : Boolean; external 'G_Kau.dll';
procedure DoneServKau                                       ; external 'G_Kau.dll';
#end
function  CheckKodOneKau        (Word,Comp)        : boolean; external 'G_Kau.dll';
function  GetAnyKau             (Word,Word,Comp)   : Boolean; external 'G_Kau.dll';
function  GivenAnName           (Word)             : String;  external 'G_Kau.dll';
function  GetKauEd              (Word,Comp)        : Comp;    external 'G_Kau.dll';
function  FindSoprDoc           (Word,Comp)        : Boolean; external 'G_Kau.dll';
function  GetOrgDocX            (Comp)             : Comp;    external 'G_Kau.dll';
function  GetSodrDocX           (Comp)             : String;  external 'G_Kau.dll';
function  GetSodrDocX_Ex        (Comp, Boolean)    : String;  external 'G_Kau.dll';
function  GetSodrOborot         (Comp)             : String;  external 'G_Kau.dll';
function  GetDateHozDoc         (Word,Comp)        : Date;    external 'G_Kau.dll';
function  GetNumHozDoc          (word, comp)       : string;  external 'G_Kau.dll';
function  GetAnalitikName       (Word)             : String;  external 'G_Kau.dll';
function  GetBaseAnalitik       (Word)             : Word;    external 'G_Kau.dll';
function  GetKauSysNum          (Word)             : Word;    external 'G_Kau.dll';
function  GetKontrSaldo         (Date,Comp)        : Double;  external 'G_Kau.dll';
function  GetKauCoTable         (Word)             : Word;    external 'G_Kau.dll';
function  GetKauIsHier          (Word)             : Boolean; external 'G_Kau.dll';
function  GetExistKauCode       (Word)             : Boolean; external 'G_Kau.dll';
// ServKau.pas か� ぎ痰祚� � ↓ヨ�━ ��� ├ ���筥ｃ��皰�� � CompileExpression-�
function GetKauReffNrec         (string,comp,word) : comp;    external 'G_Kau.dll';
function GetKauReffName         (string,comp,word) : string;  external 'G_Kau.dll';
function GetKauReffStrKod       (string,comp,word) : string;  external 'G_Kau.dll';
function GetKauReffAbbr         (string,comp,word) : string;  external 'G_Kau.dll';
function GetKauReffCode         (string,comp,word) : string;  external 'G_Kau.dll';
function GetKauReffArrayKatalog (string,comp)      : string;  external 'G_Kau.dll';
function GetKauReffArrayName    (string,comp)      : string;  external 'G_Kau.dll';
function GetKauReffArrayStrKod  (string,comp)      : string;  external 'G_Kau.dll';
function GetKauReffArrayAbbr    (string,comp)      : string;  external 'G_Kau.dll';
function GetKauReffArrayCode    (string,comp)      : string;  external 'G_Kau.dll';

function ShowKauPrn             (word, comp, date) : string;  external 'G_Kau.dll';
function ShowKauArrayPrn        (var array, var array, date)
                                                   : string;  external 'G_Kau.dll';
procedure ClearCacheKau                                     ; external 'G_Kau.dll';
//---------------------------------------------------------------------------------
