/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 2001 ชฎเฏฎเ ๆจ๏ €€’€                         บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : ฎญโเฎซซจญฃ                                               บ
 บ ฅเแจ๏        : 7.1                                                       บ
 บ  งญ ็ฅญจฅ    :  ซ์ชใซ๏ๆจ๏ ง โเ โ ฏฎ ฎก๊ฅชโใ                             บ
 บ โขฅโแโขฅญญ๋ฉ : ฅคขฅค์ .. (MEDVED)                                     บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name = 'CalcObj'
.nameinlist ' งฎข ๏ ไฎเฌ '
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

