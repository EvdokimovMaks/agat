/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,98 ��牆���罔� ���������                      �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ｯム�皋↓覃 ���矣�                                        �
 � �ム瓱�        : 5.70                                                      �
 � ��Л�腑�┘    : ��皀珞ォ� 竄�膈キ�� ���キ �� ��皀爬��讚襯 罐���痰�        �
 � �癶モ痰▲��覃 : �ア腑��� ��むォ ��オ���む�※�(Andrew)                     �
 � �����モ琺     : メ碎                                                      �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/


#ifndef _AKTZAMOPER_TYPE_
#define _AKTZAMOPER_TYPE_

!#include DebugObj.vih

Type StructMCZam = record
  cTTInfoRes  : comp;
  prMC        : word;
  RefMC       : comp;
  RefParty    : comp;
  cSaldTune   : comp;
  cKitKau     : comp;
  RefTab_NBS  : comp;
  Diskret_ED  : word;
end;

Type StructMCZam_Ext = record
  RefTopTab         : comp;

  RefSpOrder        : comp;
  RefPodr           : comp;
  RefMol            : comp;

  NumSort           : longInt;
  SrokGodn          : Date;

  Flags             : longInt;
  Kol_NeedZam       : double;
  Kol               : double;
end;


Type StructInfoRsp = record
  cSrc        : comp  ;
  cDst        : comp  ;
  KoefKol_Dst : double;
  KolMove     : double;
  KoefKol_Src : double;
end;

#endif
