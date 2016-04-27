/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 2000 ชฎเฏฎเ ๆจ๏ €€’€                         บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : ” ชโจ็ฅแชจฅ ง โเ โ๋                                       บ
 บ ฅเแจ๏        : 7.1                                                       บ
 บ  งญ ็ฅญจฅ    : ‘ขฎค ฏฎ ํซฅฌฅญโ ฌ ง โเ โ                                  บ
 บ โขฅโแโขฅญญ๋ฉ : ฅคขฅค์ .. (MEDVED)                                     บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name = 'SvodEZ'
.nameinlist ' งฎข ๏ ไฎเฌ '
.hide
.fields
Period
Valut
NamePodr
LinePodr
NameElem
ItgSumma   : double
Summa      : double
ItgAllElem : double
ItgElem    : double
.endfields
^ ^ 

 .{.?stDepEl; ^.}
 .{.?stLineDepEl; ^.}

.{
 ^ ^ .{.?stElem; ^.}
.}
 ^   .{.?stItgElem; ^.}
.endform


