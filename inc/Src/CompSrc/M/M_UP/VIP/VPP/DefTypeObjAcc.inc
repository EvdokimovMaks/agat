/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,97 ��௮��� ���������                      �
 � �஥��        : ���������                                                 �
 � ���⥬�       : �������᪮� ����                                        �
 � �����        : 5.20                                                      �
 � �����祭��    : ��ꥪ� ��� ࠡ��� � SpObjAcc                              �
 � �⢥��⢥��� : ���祭�� ���३ ����ᠭ�஢��                             �
 � ��ࠬ����     : ���                                                       �
 ���������������������������������������������������������������������������ͼ
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
  TypeNorm   : Word;   //    "��� ����",
  TypeEd     : Word;   //    "��� �������",
  KolcPos    : Double; //    "������⢮ �� ����樨",     // ��� �室��� ���㬥�⮢ ������⢮ � �ᯮ�����
  StartDate  : Date;   //    "��� ��砫�",               // ��� �室��� ���㬥�⮢ �������� ��� ��砫�
  EndDate    : Date;   //    "��� ���᪠",              // ��� �室��� ���㬥�⮢ ��� ����砭��
end;

type StructStandartObjAcc = record
  KindRec    : Word;   //    "��� �����",
  CondRec    : Word;   //    "����ﭨ� �����",
  VidSopr    : Word;   //    "����� �� ObjAcct",
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

#include TypeTbl.vpp
#end