/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,99 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : €ขโฎโเ ญแฏฎเโ                                             บ
 บ ฅเแจ๏        : 6.00                                                      บ
 บ  งญ ็ฅญจฅ    : ’ฅๅญจชฎ - ํชแฏซใ โ ๆจฎญญ๋ฅ ฏฎช ง โฅซจ                     บ
 บ โขฅโแโขฅญญ๋ฉ : ซ cจช  ขฅซ ซ คจฌจเฎขจ็                                 บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name='Lim_Rep'
.hide
.fields
  Filter

  HoursInDay
  NaimPred BegDate  EndDate

  AnalGroup
  TypeGroupName TypeGroupConst cTableGroup
  GroupDeviMark : word

  DatePL Smena GosNom GarNom FIO TabN TopName
  NPL
  KolNPL KolNPLSum KolNPLSumVal

  LZVnRec LZV LZVDate LZVOrg LZVPodrRefuel LZVPodrRecip LZVPersRefuel LZVLnRec LZVLDate
  KolLZV KolLZVSum KolLZVSumVal 
  RAZN RAZNSum RAZNSumVal
  RAZNPl RAZNLZV RAZNPlSum RAZNLZVSum RAZNPlSumVal RAZNLZVSumVal

  AnalItg
  KolNPLItg KolNPLItgSum KolNPLItgSumVal
  KolLZVItg KolLZVItgSum KolLZVItgSumVal
  RAZNItg RAZNItgSum RAZNItgSumVal
  RAZNItgPL RAZNItgLZV RAZNItgPLSum RAZNItgLZVSum RAZNItgPLSumVal RAZNItgLZVSumVal

.endfields


.{
^
.}
^
^ ^ ^
.{ CheckEnter GroupAnalLim
^
^ ^ ^
^
.{ CheckEnter DocAnalLim
^ ^ ^ ^ ^ ^ ^
^ 
^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^
^ ^ ^
^ ^ ^ ^ ^ ^
.}
.{ CheckEnter TotalAnalLim
^ 
^ ^ ^
^ ^ ^ 
^ ^ ^
^ ^ ^ ^ ^ ^
.}
.}
.endform