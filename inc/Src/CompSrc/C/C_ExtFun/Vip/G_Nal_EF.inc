/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,2003 ��牆���罔� ���������                    �
 � ��痰ガ�       : ���������                                                 �
 � 蹍オ�        : ｯム�皋↓覃 ���矣�                                        �
 � �ム瓱�        : 5.84                                                      �
 � ��Л�腑�┘    : ��ヨ�┘ �牀罐ゃ琺 � 粃��罔� ├ G_Nalog.dll                �
 � �癶モ痰▲��覃 : �※�瓷┤ �ム�ォ �ギ�┐�※�                                �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/

//------------------------------------------------------------------------------
// NalServ.pas
Function  InitNalServ                          : boolean; external 'G_Nalog.dll';
Function  DoneNalServ                          : boolean; external 'G_Nalog.dll';
Procedure FreeNalServ;                                    external 'G_Nalog.dll';
Function  MTNalServ                            : boolean; external 'G_Nalog.dll';
Procedure SetCountOnlyVhNals (boolean);                   external 'G_Nalog.dll';
Procedure SetForRussia (boolean);                         external 'G_Nalog.dll';
Function  CountNalogPrice(comp,comp,word,comp,comp,double,comp,date,comp,double,double,double,comp)
                                               : boolean; external 'G_Nalog.dll';
Function  CountBasePrice (comp,comp,word,comp,comp,double,comp,date,comp,double,double,double,comp)
                                               : boolean; external 'G_Nalog.dll';
Function  CountBasePriceN(comp,comp,word,comp,comp,double,comp,date,comp,double,double,double,comp,word)
                                               : boolean; external 'G_Nalog.dll';
Function  GetBasePrice                         : double;  external 'G_Nalog.dll';
Function  GetBaseValPrice                      : double;  external 'G_Nalog.dll';
Function  GetNalogPrice                        : double;  external 'G_Nalog.dll';
Function  GetNalogValPrice                     : double;  external 'G_Nalog.dll';
Function  GetNalogSumma                        : double;  external 'G_Nalog.dll';
Function  GetNalogSumVal                       : double;  external 'G_Nalog.dll';
Function  GetNalStatus                         : word;    external 'G_Nalog.dll';
Function  CountNalogs (word,comp,comp,string)  : boolean; external 'G_Nalog.dll';
Function  CountNalogsNRec (word,comp,comp,comp): boolean; external 'G_Nalog.dll';
Function  CountNalogsNpp  (word,comp,comp,word): boolean; external 'G_Nalog.dll';
Function  CheckFormula  (string)               : boolean; external 'G_Nalog.dll';
Function  CountFormula_ (string)               : double;  external 'G_Nalog.dll';
//------------------------------------------------------------------------------
