/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,99 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : €ขโฎโเ ญแฏฎเโ                                             บ
 บ ฅเแจ๏        : 6.00                                                      บ
 บ  งญ ็ฅญจฅ    : โ็ฅโ ฎ แฎแโฎ๏ญจจ ฏ เช  ฏฎคขจฆญฎฃฎ แฎแโ ข  ’‘             บ
 บ โขฅโแโขฅญญ๋ฉ : ซ cจช  ขฅซ ซ คจฌจเฎขจ็                                 บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name='TexS_Rep'
.hide
.fields
  Filter
  NaimPred BegDate  BegTime

  AnalGroup

  GosN TypeOfWork DateBeg TimeBeg TimeTo TypeDoc NomDoc

  AnalItg
.endfields


.{
^
.}

^ ^ ^
.{ CheckEnter GroupAnalTexS
^
.{ CheckEnter DocAnalTexS
^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter TotalAnalTexS
^
.}
.}
.endform
