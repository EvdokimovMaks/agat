/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 2001 ��௮��� ���������                         �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ����஫����                                               �
 � �����        : 7.1                                                       �
 � �����祭��    : �������� ����� �� ��ꥪ��                             �
 � �⢥��⢥��� : ������� �.�. (MEDVED)                                     �
 ���������������������������������������������������������������������������ͼ
*/
.set name = 'CalcObj'
.nameinlist '������� �ଠ'
.hide
.fields
NameReport
PlanOrFact
DateBeg
DateEnd
Kategor_Ob
Name_Ob
Valuta
ItgCalcIzg
ItgPodr
ItgCalcPodr
NamePodr 
SumPodr
Shapka
ShItAnal
ItAnal
NameEd
CountWpsk
std_r_ztr
SumCalc
Nakopl
.endfields
^^^^
.{
^ ^
.}
^

.if IsItgSumIzg
  .{.?stCalcItgIzg; ^.}
.end


.{

.if IsItgSumPodr
^  .{.?stCalcItg; ^.}
.end

.if IsInfoPodr
^  .{.?stSumItg; ^.}
 .{.?stShCalcObjAnal; ^.}  .{.?stShCalcObj; ^.}
.{
 .{.?stCalcObjAnal; ^.} ^ ^  .{.?stnewCalcObjAnal; ^.} .{.?stCalcObj; ^.}
.}
.end

.}

.{
^
.}
.endform

