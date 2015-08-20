/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 2001 ชฎเฏฎเ ๆจ๏ €€’€                         บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : ฎญโเฎซซจญฃ                                               บ
 บ ฅเแจ๏        : 7.1                                                       บ
 บ  งญ ็ฅญจฅ    : ‘ขฎคญ ๏ ขฅคฎฌฎแโ์ ช ซ์ชใซ๏ๆจฉ                             บ
 บ โขฅโแโขฅญญ๋ฉ : ฅคขฅค์ .. (MEDVED)                                     บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name = 'SvodVedStr'
.nameinlist ' งฎข ๏ ไฎเฌ '
.hide
.fields
ParamUser
NameReport
PlanOrFact
DateBeg
DateEnd
NmTitleParam
NmParam
NmPodr
TitleSkSz
ObjNm
ObjBarKod
ObjAmount
ObjEi
NmSkSz
SumStr
SumWsego
.endfields
^
^
^
^
^
.{
^^
.}

.{
^
.{
^  .{.?stSvVedObj;      ^.}
   .{.?stSvVedBarKod;   ^.}
   .{.?stSvVedAmount;   ^.}
   .{.?stSvVedEi;       ^.}
.{
^  .{.?stSvVedSumStr;   ^.}
.}
.if boWsegoSvVed
   .{.?stSvVedSumWsego; ^.}
.end
.}
.}
.endform

