/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Давальческое сырье                                        ║
 ║ Версия        : 5.20                                                      ║
 ║ Назначение    : Объект для работы с SpObjAcc                              ║
 ║ Ответственный : Левченко Андрей Александрович                             ║
 ║ Параметры     : НЕТ                                                       ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
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
  TypeNorm   : Word;   //    "Тип нормы",
  TypeEd     : Word;   //    "Тип единицы",
  KolcPos    : Double; //    "Количество по позиции",     // для входящих документов количество к исполненю
  StartDate  : Date;   //    "Дата начала",               // для входящих документов плановая дата начала
  EndDate    : Date;   //    "Дата выпуска",              // для входящих документов дата окончания
end;

type StructStandartObjAcc = record
  KindRec    : Word;   //    "Вид записи",
  CondRec    : Word;   //    "Состояние записи",
  VidSopr    : Word;   //    "копия из ObjAcct",
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
