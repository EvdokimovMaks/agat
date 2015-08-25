/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,00 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : €ขโฎโเ ญแฏฎเโ                                             บ
 บ ฅเแจ๏        : 5.80                                                      บ
 บ  งญ ็ฅญจฅ    : Cขฅเช  แขฅคฅญจฉ ฎก ฎฏซ โฅ                                 บ
 บ โขฅโแโขฅญญ๋ฉ : ซ cจช  ขฅซ ซ คจฌจเฎขจ็                                 บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name='Rash_Rep'
.hide
.fields
  Filter
//  HoursInDay
  NaimPred BegDate  EndDate

  AnalGroup

  DatePL Smena GosNom GarNom FIO TabN
  NPL
  RashKol SoprKol
  AnalItg
  RashKolItg SoprKolItg
.endfields


.{
^
.}
^ ^ ^
.{ CheckEnter GroupAnalRash
^
.{ CheckEnter DocAnalRash
^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter TotalAnalRash
^
^ ^
.}
.}
.endform