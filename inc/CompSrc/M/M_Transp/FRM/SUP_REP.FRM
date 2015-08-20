/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,99 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : €ขโฎโเ ญแฏฎเโ                                             บ
 บ ฅเแจ๏        : 6.00                                                      บ
 บ  งญ ็ฅญจฅ    : โ็ฅโ ฎ ฏเฎๅฎฆคฅญจจ โฅๅญจ็ฅแชฎฃฎ ฎกแซใฆจข ญจ๏             บ
 บ โขฅโแโขฅญญ๋ฉ : ซ cจช  ขฅซ ซ คจฌจเฎขจ็                                 บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name='Sup_Rep'
.hide
.fields
  Filter
  NaimPred BegDate  EndDate

  AnalGroup

  GosN GarNom TypeOfWork DateBeg DateEnd Marka ProbegFakt ProbegPlan
  MotoFakt MotoPlan 
  TabN1 FIO1 TabN2 FIO2 TimeTo

  AnalItg
  ProbegFaktItg ProbegPlanItg TimeToItg MotoFaktItg MotoPlanItg 
.endfields


.{
^
.}

^ ^ ^
.{ CheckEnter GroupAnalSup
^
.{ CheckEnter DocAnalSup
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter TotalAnalSup
^
^ ^ ^ ^ ^
.}
.}
.endform
