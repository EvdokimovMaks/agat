/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,97 ��牆���罔� ���������                      �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : �����趺メ��� 瘠瑕�                                        �
 � �ム瓱�        : 5.20                                                      �
 � ��Л�腑�┘    : ｡螢�� か� ��｀硅 � SpObjAcc                              �
 � �癶モ痰▲��覃 : �ア腑��� ��むォ ��オ���む�※�                             �
 � �����モ琺     : ���                                                       �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/


#ifndef _DEFTYPE_OBJACCT_INC
#define _DEFTYPE_OBJACCT_INC

type StructInfoObjAcct = record
  Name       : tName;
  cOwnerDop  : tNrec;
  Comment    : tName;
end;

type StructInfoVhIshPos = record
  VhTypePos    : word;
  VhRefPos     : comp;
  IshTypePos   : word;
  IshRefPos    : comp;
end;

type StructIRPos = record
  cObjAcct   : comp;
  cSpObjAcc  : comp;
  TypeHier   : word;
end;

type StructSpObjAccPos = record
  TypeNorm   : Word;   //    "�┓ ��爼�",
  TypeEd     : Word;   //    "�┓ イ┃�肓",
  KolcPos    : Double; //    "����腑痰〓 �� ��Ж罔�",     // か� √�わ薑� ぎ�祠キ皰� ����腑痰〓 � �甎���キ�
  StartDate  : Date;   //    "���� ������",               // か� √�わ薑� ぎ�祠キ皰� �������� ���� ������
  EndDate    : Date;   //    "���� �覩竅��",              // か� √�わ薑� ぎ�祠キ皰� ���� ���������
end;

type StructStandartObjAcc = record
  KindRec    : Word;   //    "�┐ ����瓱",
  CondRec    : Word;   //    "��痰�鎰┘ ����瓱",
  VidSopr    : Word;   //    "����� ├ ObjAcct",
end;

type StructObjAcctStr = record
 TypeTab   : word;
 WorkTab   : comp;

 NameRefObjAcct : string;
 TypeHier  : word;
 TypePos   : String;
 NamePos   : String;
 TypeOwn   : String;
 NameOwn   : String;
end;

type StructSpObjAccStr = record
 TypeTab         : word;
 WorkTab         : comp;

 NameRefObjAcct  : String;
 NameRefSpObjAcc : String;
 TypePos         : String;
 NamePos         : String;
 TypeOwn         : String;
 NameOwn         : String;
 KolcPoSP        : double;
 EdIzmPoSP       : string;
 UpIzdelie       : string;
end;

Type varTmpGrN     = record as Table TmpGrN;

Type
  varObjAcct      = record as table ObjAcct;

Type
  varSpObjAcc     = record as table SpObjAcc;

#include typetbl.inc
#end
