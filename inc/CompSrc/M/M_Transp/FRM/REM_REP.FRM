/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,99 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : €ขโฎโเ ญแฏฎเโ                                             บ
 บ ฅเแจ๏        : 6.00                                                      บ
 บ  งญ ็ฅญจฅ    : โ็ฅโ ฎ แๅฎคฅ แ ซจญจจ                                     บ
 บ โขฅโแโขฅญญ๋ฉ : ซ cจช  ขฅซ ซ คจฌจเฎขจ็                                 บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name='Rem_Rep'
.hide
.fields
  Filter
  HoursInDay
  NaimPred BegDate  EndDate

  AnalGroup

  GarNom FIO NumRem DateBeg TimeBeg DateEnd TimeEnd TimeAll

  AnalItg
  TimeAllItg
.endfields


.{
^
.}
^
^ ^ ^
.{ CheckEnter GroupAnalRem
^
.{ CheckEnter DocAnalRem
^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter TotalAnalRem
^
^
.}
.}
.endform
