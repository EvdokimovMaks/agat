/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 2001 ชฎเฏฎเ ๆจ๏ €€’€                         บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : ฎญโเฎซซจญฃ                                               บ
 บ ฅเแจ๏        : 7.1                                                       บ
 บ  งญ ็ฅญจฅ    :  ซ์ชใซ๏ๆจ๏ ง โเ โ ฏฎ ฎก๊ฅชโใ                             บ
 บ โขฅโแโขฅญญ๋ฉ : “ชเ จญชฎ . Ukrv                                          บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
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
ShapkaCal1 ShapkaCal2 ShapkaCal3 ZnStCal
SxV
.EndFields

^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.{
^
   .{.?stShapCal12;      ^.}
.{
^ ^ ^.{.?StSummaCal2;     ^.}
.}
.if IsNeedShowItog
   .{.?stItgSumCal2;     ^.}
.end   
.}
.endform
