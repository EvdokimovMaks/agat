/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 2001 ชฎเฏฎเ ๆจ๏ €€’€                         บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : ฎญโเฎซซจญฃ                                               บ
 บ ฅเแจ๏        : 7.1                                                       บ
 บ  งญ ็ฅญจฅ    :  ซ์ชใซ๏ๆจ๏ ง โเ โ ฏฎ ฎก๊ฅชโใ                             บ
 บ โขฅโแโขฅญญ๋ฉ : ๋็ชฎขแชจฉ ซฅฃ ”ฅคฎเฎขจ็                                 บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
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
