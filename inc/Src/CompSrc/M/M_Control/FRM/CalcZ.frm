/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 2001 ��௮��� ���������                         �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ����஫����                                               �
 � �����        : 7.1                                                       �
 � �����祭��    : �������� ����� �� ��ꥪ��                             �
 � �⢥��⢥��� : ��窮�᪨� ���� ����஢��                                 �
 ���������������������������������������������������������������������������ͼ
*/
.set Name = 'Calc_Z'
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
 ShapkaCal1
 TitleNormKolPr2
 ShapkaCal2
 TitleVixodPr2
 ShapkaCal3
 TitleKol2
 ShapkaCal4
 ShapkaCal5
 StCalc ZnStCal
.EndFields

^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.{
^
   .{.?stShapCal1;      ^.}
.if IsNeedShowNormKolAndVixod
  ^.{.?stShapCal2;      ^.}
  ^.{.?stShapCal3;      ^.}
.end
  ^.{.?stShapCal4;      ^.}
   .{.?stShapCal5;      ^.}
.{
^  .{.?stSummaCal;      ^.}
.}
.}
.endform
