/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,99 ��௮��� ���������                      �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ����࠭ᯮ��                                             �
 � �����        : 6.00                                                      �
 � �����祭��    : ��孨�� - ��ᯫ��樮��� ������⥫�                     �
 � �⢥��⢥��� : ���c�� ����� �������஢��                                 �
 ���������������������������������������������������������������������������ͼ
*/
.set name='Lim_Rep'
.hide
.fields
  Filter

  HoursInDay
  NaimPred BegDate  EndDate

  AnalGroup
  TypeGroupName TypeGroupConst cTableGroup
  GroupDeviMark : word

  DatePL Smena GosNom GarNom FIO TabN TopName
  NPL
  KolNPL KolNPLSum KolNPLSumVal

  LZVnRec LZV LZVDate LZVOrg LZVPodrRefuel LZVPodrRecip LZVPersRefuel LZVLnRec LZVLDate
  KolLZV KolLZVSum KolLZVSumVal 
  RAZN RAZNSum RAZNSumVal
  RAZNPl RAZNLZV RAZNPlSum RAZNLZVSum RAZNPlSumVal RAZNLZVSumVal

  AnalItg
  KolNPLItg KolNPLItgSum KolNPLItgSumVal
  KolLZVItg KolLZVItgSum KolLZVItgSumVal
  RAZNItg RAZNItgSum RAZNItgSumVal
  RAZNItgPL RAZNItgLZV RAZNItgPLSum RAZNItgLZVSum RAZNItgPLSumVal RAZNItgLZVSumVal

.endfields


.{
^
.}
^
^ ^ ^
.{ CheckEnter GroupAnalLim
^
^ ^ ^
^
.{ CheckEnter DocAnalLim
^ ^ ^ ^ ^ ^ ^
^ 
^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^
^ ^ ^
^ ^ ^ ^ ^ ^
.}
.{ CheckEnter TotalAnalLim
^ 
^ ^ ^
^ ^ ^ 
^ ^ ^
^ ^ ^ ^ ^ ^
.}
.}
.endform