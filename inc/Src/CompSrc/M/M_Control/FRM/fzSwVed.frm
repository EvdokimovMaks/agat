/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 2001 ชฎเฏฎเ ๆจ๏ €€’€                         บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : ” ชโจ็ฅแชจฅ ง โเ โ๋                                       บ
 บ ฅเแจ๏        : 7.1                                                       บ
 บ  งญ ็ฅญจฅ    : ‘ขฎคญ ๏ ขฅคฎฌฎแโ์ ช ซ์ชใซ๏ๆจฉ                             บ
 บ โขฅโแโขฅญญ๋ฉ : ฅคขฅค์ .. (MEDVED)                                     บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name = 'FzSwVed'
.nameinlist ' งฎข ๏ ไฎเฌ '
.hide
.fields
NameReport
PlanOrFact
DateBeg
DateEnd
Kategor_Ob
Name_Ob
NamePodr 
Shapka
NameObj
KodObj: string
NameEd
SumEdCalc
Fact
SumCalc
SumPodrItg
NmItg
SumItg
.endfields
^^^^
.{
^ ^
.}

.{
^ 
 .{.?stShapVed; ^.}
.{
^ ^ ^ .{.?stEdVed; ^.}
^     .{.?stallVed; ^.}
.}
 .{.?stItgPodrFzSwVed; ^.}
.}
.if IsFzSwVedItg
^  .{.?stItgFzSwVed; ^.}
.end
.endform

