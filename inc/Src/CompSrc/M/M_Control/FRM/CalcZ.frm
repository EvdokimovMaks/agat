/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 2001 ��牆���罔� ���������                         �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ���矗���┃�                                               �
 � �ム瓱�        : 7.1                                                       �
 � ��Л�腑�┘    : ���讓祀閹�� ��矗�� �� �♀オ矣                             �
 � �癶モ痰▲��覃 : �諛��≡�┤ ｫィ �イ�牀※�                                 �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
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
 TitleNN
 ShapkaCal1N
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
  ^.{.?stShapCal1N;     ^.}
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
