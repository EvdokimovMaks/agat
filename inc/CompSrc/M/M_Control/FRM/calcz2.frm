/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 2001 ��௮��� ���������                         �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ����஫����                                               �
 � �����        : 7.1                                                       �
 � �����祭��    : �������� ����� �� ��ꥪ��                             �
 � �⢥��⢥��� : ��ࠨ��� �. Ukrv                                          �
 ���������������������������������������������������������������������������ͼ
*/
.set Name = 'Calc_Z2'
.Hide
.Fields
Headline
Period
TypeObj
Obj
TitleKod
BarKodObj
TitleObozn
ConstrOboznObj
Analit_Value
TitleNormKolPr
KolNormPr
TitleVixodPr
VixodPr
TitleKol
Kol
EdKol
TitleMarshSp
MarshSp
VarCalc
TitlePrice
VarPrice
TitlePrice1
VarPrice1
RazForm
Podr
Valut
Podrr
StCalc
ShapkaCal1 ShapkaCal2 ZnStCal
SxV
.EndFields

^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.{
^
   .{.?stShapCal12;      ^.}
.{
^ ^ .{.?StSummaCal2;     ^.}
.}
.if IsNeedShowItog
   .{.?stItgSumCal2;     ^.}
.end   
.}
.endform
