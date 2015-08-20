/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 2000 ชฎเฏฎเ ๆจ๏ €€’€                         บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : ฎญโเฎซซจญฃ                                               บ
 บ ฅเแจ๏        : 7.1                                                       บ
 บ  งญ ็ฅญจฅ    : ‘ขฎค ฏฎ แโ โ์๏ฌ ง โเ โ                                    บ
 บ โขฅโแโขฅญญ๋ฉ : ฅคขฅค์ .. (MEDVED)                                     บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name = 'SvodStZ'
.nameinlist ' งฎข ๏ ไฎเฌ '
.hide
.fields
ParamUser
PlanOrFact
DateBeg
DateEnd
RepName
NameBal
Valut
TitleCol
NamePodr
NameStat
Summa
.endfields
^ ParamUser
^ ^ ^ ^ ^ ^

^ .{.?stL2Dep; ^.}

.{
 ^  .{.?stZnSvZ; ^.}
.}

.endform

