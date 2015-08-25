/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 2000 ชฎเฏฎเ ๆจ๏ €€’€                         บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : ”                                                        บ
 บ ฅเแจ๏        : 7.1                                                       บ
 บ  งญ ็ฅญจฅ    : ‘ขฎค ฏฎ แโ โ์๏ฌ ง โเ โ                                    บ
 บ โขฅโแโขฅญญ๋ฉ : ฅคขฅค์ .. (MEDVED)                                     บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name = 'SvodSZ'
.nameinlist ' งฎข ๏ ไฎเฌ '
.hide
.fields
Period
Valut
NamePodr
LinePodr
NameZatr
ItgSumma    : double
Summa       : double
ItgAllZatr  : double
ItgZatr     : double
.endfields
^ ^ 

 .{.?stDepZ; ^.}
 .{.?stLineDep; ^.}

.{
 ^ ^ .{.?stZatr; ^.}
.}
 ^   .{.?stItgZatr; ^.}
.endform


