/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 2001 ชฎเฏฎเ ๆจ๏ €€’€                         บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : ฎญโเฎซซจญฃ                                               บ
 บ ฅเแจ๏        : 7.1                                                       บ
 บ  งญ ็ฅญจฅ    : ‘ขฎค ฏฎ แโ โ์๏ฌ ํซฅฌฅญโ ฌ ง โเ โ                                  บ
 บ โขฅโแโขฅญญ๋ฉ : ฅคขฅค์ .. (MEDVED)                                     บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name = 'SvodAll'
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
NameElem
NameZatr
Summa
SummaItogo
.endfields
^
^ ^ ^ ^ ^ ^ 
  .{.?stSvAll_Elem;  ^.}
.{
 ^  .{.?stSvAll_Sum; ^.}
.}
    .{.?stItogoSvAll_Sum; ^.}
.endform