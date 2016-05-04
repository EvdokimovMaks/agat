/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,98 ��௮��� ���������                      �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ����⨢�� ������                                        �
 � �����        : 5.70                                                      �
 � �����祭��    : ����䥩� ��筥��� ����� �� ���ਠ��� 業����        �
 � �⢥��⢥��� : ���祭�� ���३ ����ᠭ�஢��(Andrew)                     �
 � ��ࠬ����     : ����                                                      �
 ���������������������������������������������������������������������������ͼ
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