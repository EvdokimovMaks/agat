/*
  ╔═════════════════════════════════════════════════════════════════════╗
  ║      Н Т О  "T O P   S O F T",  А О   "Н О В Ы Й   А Т Л А Н Т"     ║
  ║      Проект    : ГАЛАКТИКА  (с) 2000                                ║
  ║      Система   : Управление персоналом                              ║
  ║      Версия    : 5.8, 7.1                                           ║
  ║      Разработал: Антонович А.К.     11/03/2004                      ║
  ║      Назначение: Групповой приказ по ШР                             ║
  ║      Изменения :                                                    ║
  ╚═════════════════════════════════════════════════════════════════════╝
*/

#doc
Групповой приказ по ШР
#end
.form FormStsAll
.Hide
.Fields
Организация
ОКПО
номер_документа
дата_составления

title

!.{StsAll_Cycle1  CheckEnter
TypeOper          : word
Str2
Str3
Str4
Str5
StrPartNRec       : comp
CatStrPrNRec      : comp
RezNRec           : comp
!.{StsAll_Cycle2  CheckEnter
NPP
Field_01
Field_02
Field_03
Field_04
Field_05
Field_06
Field_07
Field_08
Field_09
Field_10
Field_11
Field_12
Field_13
Field_14
Field_15
Field_16
Field_17
Field_18
Field_19
Field_20
Field_21
Field_22
Field_23
Field_24
Field_25
Field_26
Field_27
Field_28
Field_29
Field_30
Field_31
Field_32
Field_33
Field_34
Field_35
Field_36
StrContNRec       : comp
RezNRec1          : comp
RezNRec2          : comp
!.}
!.}

ДолжнРук
ФиоРук

.EndFields
Организация                   ^
ОКПО                          ^
номер_документа               ^
дата_составления              ^

title                         ^

.{StsAll_Cycle1  CheckEnter
TypeOper                      ^
Str2                          ^
Str3                          ^
Str4                          ^
Str5                          ^
StrPartNRec                   ^
CatStrPrNRec                  ^
RezNRec                       ^
.{StsAll_Cycle2  CheckEnter
NPP                           ^
Field_01                      ^
Field_02                      ^
Field_03                      ^
Field_04                      ^
Field_05                      ^
Field_06                      ^
Field_07                      ^
Field_08                      ^
Field_09                      ^
Field_10                      ^
Field_11                      ^
Field_12                      ^
Field_13                      ^
Field_14                      ^
Field_15                      ^
Field_16                      ^
Field_17                      ^
Field_18                      ^
Field_19                      ^
Field_20                      ^
Field_21                      ^
Field_22                      ^
Field_23                      ^
Field_24                      ^
Field_25                      ^
Field_26                      ^
Field_27                      ^
Field_28                      ^
Field_29                      ^
Field_30                      ^
Field_31                      ^
Field_32                      ^
Field_33                      ^
Field_34                      ^
Field_35                      ^
Field_36                      ^
StrContNRec                   ^
RezNRec1                      ^
RezNRec2                      ^
.}
.}

ДолжнРук                      ^
ФиоРук                        ^
.endform